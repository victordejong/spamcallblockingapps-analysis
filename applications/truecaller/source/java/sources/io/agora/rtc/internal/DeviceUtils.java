package io.agora.rtc.internal;

import android.content.Context;
import android.os.Build;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.utils.CameraUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/DeviceUtils.class */
public class DeviceUtils {
    public static final int DEVICE_INFO_UNKNOWN = -1;
    private static final String TAG = "DeviceUtils";
    private static final String[] H264_HW_BLACKLIST = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.internal.DeviceUtils.1
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

    public static String buildDeviceId() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER);
        sb.append(StringConstant.SLASH);
        sb.append(Build.MODEL);
        sb.append(StringConstant.SLASH);
        sb.append(Build.PRODUCT);
        sb.append(StringConstant.SLASH);
        String str = Build.DEVICE;
        sb.append(str);
        sb.append(StringConstant.SLASH);
        sb.append(Build.VERSION.SDK_INT);
        sb.append(StringConstant.SLASH);
        sb.append(System.getProperty("os.version"));
        String sb2 = sb.toString();
        String str2 = sb2;
        if (sb2 != null) {
            str2 = sb2.toLowerCase();
        }
        Matcher matcher = Pattern.compile(".*[A-Z][A-M][0-9]$").matcher(Build.ID);
        if (Build.BRAND.toLowerCase().equals("samsung") && str.toLowerCase().startsWith("cs02")) {
            matcher.find();
        }
        return str2;
    }

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

    public static int getCPUMaxFreqKHz() {
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
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
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
        return new File("/sys/devices/system/cpu").listFiles(CPU_FILTER).length;
    }

    private static int getCoresFromFileInfo(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                String readLine = new BufferedReader(new InputStreamReader(fileInputStream)).readLine();
                fileInputStream.close();
                int coresFromFileString = getCoresFromFileString(readLine);
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    Logging.m3708e(TAG, "close file stream", e);
                }
                return coresFromFileString;
            } catch (IOException e2) {
                if (fileInputStream == null) {
                    return -1;
                }
                try {
                    fileInputStream.close();
                    return -1;
                } catch (IOException e3) {
                    Logging.m3708e(TAG, "close file stream", e3);
                    return -1;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        Logging.m3708e(TAG, "close file stream", e4);
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public static String getCpuABI() {
        return Build.CPU_ABI;
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x009f: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:42:0x009f */
    public static String getCpuName() {
        FileNotFoundException e;
        FileReader fileReader;
        IOException e2;
        FileReader fileReader2;
        FileReader fileReader3;
        try {
        } catch (Throwable th) {
            fileReader2 = fileReader3;
            th = th;
        }
        try {
            try {
                fileReader = new FileReader("/proc/cpuinfo");
                try {
                    String[] split = new BufferedReader(fileReader).readLine().split(":\\s+", 2);
                    for (int i = 0; i < split.length; i++) {
                    }
                    fileReader.close();
                    String str = split[1];
                    try {
                        fileReader.close();
                    } catch (IOException e3) {
                        Logging.m3708e(TAG, "failed to close proc file", e3);
                    }
                    return str;
                } catch (FileNotFoundException e4) {
                    e = e4;
                    Logging.m3708e(TAG, "getCpuName failed, no /proc/cpuinfo found in system", e);
                    if (fileReader == null) {
                        return null;
                    }
                    fileReader.close();
                    return null;
                } catch (IOException e5) {
                    e2 = e5;
                    Logging.m3708e(TAG, "getCpuName failed,", e2);
                    if (fileReader == null) {
                        return null;
                    }
                    fileReader.close();
                    return null;
                }
            } catch (IOException e6) {
                Logging.m3708e(TAG, "failed to close proc file", e6);
                return null;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileReader = null;
        } catch (IOException e8) {
            e2 = e8;
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = null;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException e9) {
                    Logging.m3708e(TAG, "failed to close proc file", e9);
                }
            }
            throw th;
        }
    }

    public static String getDeviceInfo() {
        String str = Build.MANUFACTURER + StringConstant.SLASH + Build.MODEL + StringConstant.SLASH + Build.HARDWARE;
        String str2 = str;
        if (str != null) {
            str2 = str.toLowerCase();
        }
        return str2;
    }

    public static int getNumberOfCPUCores() {
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

    public static int getNumberOfCameras(Context context) {
        return CameraUtils.getNumberOfCameras(context);
    }

    public static int getRecommendedEncoderType() {
        List asList = Arrays.asList(H264_HW_BLACKLIST);
        String str = Build.MODEL;
        if (asList.contains(str)) {
            Logging.m3704w(TAG, "Model: " + str + " has black listed H.264 encoder.");
            return 1;
        }
        return 0;
    }

    public static String getSystemInfo() {
        StringBuilder m8728C = C22128a.m8728C("Android/");
        m8728C.append(Build.VERSION.RELEASE);
        return m8728C.toString();
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
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.DeviceUtils.parseFileForValue(java.lang.String, java.io.FileInputStream):int");
    }

    public static int selectFrontCamera(Context context) {
        return CameraUtils.selectFrontCamera(context);
    }
}
