package io.agora.rtc.gdp;

import android.app.ActivityManager;
import android.content.Context;
import android.opengl.GLES20;
import android.os.BatteryManager;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gdp/GDPAndroid.class */
public class GDPAndroid {
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.gdp.GDPAndroid.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (name.startsWith("cpu")) {
                for (int i = 3; i < name.length(); i++) {
                    if (!Character.isDigit(name.charAt(i))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    };
    private static final List<String> CPU_TEMP_FILE_PATHS = Arrays.asList("/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp", "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp", "/sys/class/thermal/thermal_zone0/temp", "/sys/class/i2c-adapter/i2c-4/4-004c/temperature", "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/temperature", "/sys/devices/platform/omap/omap_temp_sensor.0/temperature", "/sys/devices/platform/tegra_tmon/temp1_input", "/sys/kernel/debug/tegra_thermal/temp_tj", "/sys/devices/platform/s5p-tmu/temperature", "/sys/class/thermal/thermal_zone1/temp", "/sys/class/hwmon/hwmon0/device/temp1_input", "/sys/devices/virtual/thermal/thermal_zone1/temp", "/sys/devices/virtual/thermal/thermal_zone0/temp", "/sys/class/thermal/thermal_zone3/temp", "/sys/class/thermal/thermal_zone4/temp", "/sys/class/hwmon/hwmonX/temp1_input", "/sys/devices/platform/s5p-tmu/curr_temp");
    private static final int DEVICEINFO_UNKNOWN = -1;
    private static String TAG = "GDPAndroid";
    private Context mAppContext = null;
    private String mGpuVendor = "unkown";
    private String mGpuRenderer = "unkown";

    private static int extractValue(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != 10) {
            if (Character.isDigit(bArr[i])) {
                int i2 = i + 1;
                while (i2 < bArr.length && Character.isDigit(bArr[i2])) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i));
            }
            i++;
        }
        return -1;
    }

    private void gatherGlInfo() {
        EglCore eglCore = new EglCore(null, 2);
        OffscreenSurface offscreenSurface = new OffscreenSurface(eglCore, 1, 1);
        offscreenSurface.makeCurrent();
        this.mGpuVendor = GLES20.glGetString(7936);
        this.mGpuRenderer = GLES20.glGetString(7937);
        offscreenSurface.release();
        eglCore.release();
    }

    private int getBatteryLevel() {
        return ((BatteryManager) this.mAppContext.getSystemService("batterymanager")).getIntProperty(4);
    }

    private static int getCPUMaxFreqKHz() {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            try {
                i2 = i4;
                if (i3 >= getNumberOfCPUCores()) {
                    break;
                }
                File file = new File("/sys/devices/system/cpu/cpu" + i3 + "/cpufreq/cpuinfo_max_freq");
                int i5 = i2;
                if (file.exists()) {
                    i5 = i2;
                    if (file.canRead()) {
                        byte[] bArr = new byte[128];
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            fileInputStream.read(bArr);
                            int i6 = 0;
                            while (Character.isDigit(bArr[i6]) && i6 < 128) {
                                i6++;
                            }
                            Integer valueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i6)));
                            i5 = i2;
                            if (valueOf.intValue() > i2) {
                                i5 = valueOf.intValue();
                            }
                        } catch (NumberFormatException e) {
                            i5 = i2;
                        }
                        fileInputStream.close();
                    }
                }
                i3++;
                i4 = i5;
            } catch (IOException e2) {
                i = -1;
            }
        }
        i = i2;
        if (i2 == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            int parseFileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
            i = i2;
            if (parseFileForValue > i2) {
                i = parseFileForValue;
            }
            fileInputStream2.close();
        }
        return i;
    }

    private static int getCoresFromCPUFileList() {
        return new File("/sys/devices/system/cpu/").listFiles(CPU_FILTER).length;
    }

    private static int getCoresFromFileInfo(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        try {
            fileInputStream2 = new FileInputStream(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                int coresFromFileString = getCoresFromFileString(readLine);
                try {
                    fileInputStream2.close();
                } catch (IOException e) {
                }
                return coresFromFileString;
            } catch (IOException e2) {
                fileInputStream = fileInputStream2;
                if (fileInputStream == null) {
                    return -1;
                }
                try {
                    fileInputStream.close();
                    return -1;
                } catch (IOException e3) {
                    return -1;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = null;
        }
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    private static int getNumberOfCPUCores() {
        int i;
        try {
            int coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/possible");
            i = coresFromFileInfo;
            if (coresFromFileInfo == -1) {
                i = getCoresFromFileInfo("/sys/devices/system/cpu/present");
            }
            if (i == -1) {
                i = getCoresFromCPUFileList();
            }
        } catch (NullPointerException | SecurityException e) {
            i = -1;
        }
        return i;
    }

    private static long getTotalMemory(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    private boolean isEGL14SupportedHere() {
        return true;
    }

    private boolean isTemperatureValid(double d) {
        return d >= -30.0d && d <= 250.0d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007f, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int parseFileForValue(java.lang.String r4, java.io.FileInputStream r5) {
        /*
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = r5
            r1 = r6
            int r0 = r0.read(r1)     // Catch: java.lang.Throwable -> L8a
            r7 = r0
            r0 = 0
            r8 = r0
        Lf:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L88
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r1 = 10
            if (r0 == r1) goto L27
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L7f
        L27:
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r1 = 10
            if (r0 != r1) goto L3a
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
        L3a:
            r0 = r10
            r8 = r0
        L3e:
            r0 = r10
            r9 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L7f
            r0 = r8
            r1 = r10
            int r0 = r0 - r1
            r9 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L8a
            r1 = r4
            r2 = r9
            char r1 = r1.charAt(r2)     // Catch: java.lang.Throwable -> L8a
            if (r0 == r1) goto L63
            r0 = r10
            r9 = r0
            goto L7f
        L63:
            r0 = r9
            r1 = r4
            int r1 = r1.length()     // Catch: java.lang.Throwable -> L8a
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L79
            r0 = r6
            r1 = r8
            int r0 = extractValue(r0, r1)     // Catch: java.lang.Throwable -> L8a
            r10 = r0
            r0 = r10
            return r0
        L79:
            int r8 = r8 + 1
            goto L3e
        L7f:
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            goto Lf
        L88:
            r0 = -1
            return r0
        L8a:
            r4 = move-exception
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.gdp.GDPAndroid.parseFileForValue(java.lang.String, java.io.FileInputStream):int");
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    private double readOneLine(File file) {
        String str;
        char c = 0;
        if (file.exists()) {
            if (!file.canRead()) {
                c = 0;
            } else {
                String str2 = "";
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
                    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                    str = bufferedReader.readLine();
                    fileInputStream.close();
                    inputStreamReader.close();
                    str2 = str;
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    str = str2;
                }
                try {
                    c = Double.parseDouble(str);
                } catch (NumberFormatException e2) {
                    c = 0;
                }
            }
        }
        return c;
    }

    public boolean checkBackground() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        int i = runningAppProcessInfo.importance;
        return (i == 100 || i == 200) ? false : true;
    }

    public int getBattery() {
        return getBatteryLevel();
    }

    public int getCpuClock() {
        return getCPUMaxFreqKHz();
    }

    public int getCpuCores() {
        return getNumberOfCPUCores();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    public int getCpuTemperature() {
        char c;
        int i = 0;
        while (true) {
            List<String> list = CPU_TEMP_FILE_PATHS;
            if (i >= list.size()) {
                c = 0;
                break;
            }
            Double valueOf = Double.valueOf(readOneLine(new File(list.get(i))));
            if (isTemperatureValid(valueOf.doubleValue())) {
                c = valueOf.doubleValue();
                break;
            } else if (isTemperatureValid(valueOf.doubleValue() / 1000.0d)) {
                c = valueOf.doubleValue() / 1000.0d;
                break;
            } else {
                i++;
            }
        }
        return (int) (c * 0);
    }

    public String getCpuVendor() {
        return Build.HARDWARE;
    }

    public String getDeviceName() {
        return Build.MODEL;
    }

    public String getGpuRenderer() {
        return this.mGpuRenderer;
    }

    public String getGpuVendor() {
        return this.mGpuVendor;
    }

    public int getOsVersion() {
        return Build.VERSION.SDK_INT;
    }

    public int getRam() {
        return (int) (getTotalMemory(this.mAppContext) / 1024);
    }

    public boolean initGDP(Context context) {
        this.mAppContext = context;
        if (isEGL14SupportedHere()) {
            gatherGlInfo();
            return true;
        }
        return true;
    }
}
