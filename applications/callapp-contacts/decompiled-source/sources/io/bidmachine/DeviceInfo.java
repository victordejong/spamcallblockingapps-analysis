package io.bidmachine;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mopub.common.Constants;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/DeviceInfo.class */
public class DeviceInfo {
    private static volatile DeviceInfo instance;
    public final String deviceModel;
    public final String httpAgent;
    private String hwv;
    private Boolean isRooted;
    public final boolean isTablet;
    public final String manufacturer;
    public final String model;
    public final String osName = Constants.ANDROID_PLATFORM;
    public final String osVersion = String.valueOf(Build.VERSION.SDK_INT);
    public final float screenDensity;
    public final int screenDpi;
    public final String telephonyNetworkOperator;
    public String telephonyNetworkOperatorName;
    private Long totalDiskSpaceInMB;
    private Long totalRAMInB;

    private DeviceInfo(Context context) {
        this.model = (Build.MANUFACTURER == null || Build.MODEL == null) ? Build.MANUFACTURER != null ? Build.MANUFACTURER : Build.MODEL : String.format("%s %s", Build.MANUFACTURER, Build.MODEL);
        this.deviceModel = Build.MODEL;
        this.manufacturer = Build.MANUFACTURER;
        this.httpAgent = Utils.obtainHttpAgentString(context);
        this.screenDpi = Utils.getScreenDpi(context);
        this.screenDensity = Utils.getScreenDensity(context);
        this.isTablet = Utils.isTablet(context);
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(com.callapp.contacts.model.Constants.EXTRA_PHONE_NUMBER);
        if (telephonyManager != null) {
            String networkOperator = telephonyManager.getNetworkOperator();
            if (networkOperator == null || networkOperator.length() < 3) {
                this.telephonyNetworkOperator = null;
            } else {
                this.telephonyNetworkOperator = networkOperator.substring(0, 3) + '-' + networkOperator.substring(3);
            }
            try {
                this.telephonyNetworkOperatorName = telephonyManager.getNetworkOperatorName();
            } catch (Exception e) {
                Logger.log(e);
            }
        } else {
            this.telephonyNetworkOperator = null;
        }
    }

    private String getKernelVersionThroughProcVersion() {
        RandomAccessFile randomAccessFile;
        Throwable th;
        try {
            randomAccessFile = new RandomAccessFile("/proc/version", "r");
            try {
                String readLine = randomAccessFile.readLine();
                Utils.close(randomAccessFile);
                return readLine;
            } catch (Exception e) {
                Utils.close(randomAccessFile);
                return null;
            } catch (Throwable th2) {
                th = th2;
                Utils.close(randomAccessFile);
                throw th;
            }
        } catch (Exception e2) {
            randomAccessFile = null;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getKernelVersionThroughUName() {
        /*
            r3 = this;
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: all -> 0x0070, Exception -> 0x008e
            java.lang.String r1 = "uname -a"
            java.lang.Process r0 = r0.exec(r1)     // Catch: all -> 0x0070, Exception -> 0x008e
            r4 = r0
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: all -> 0x005d, Exception -> 0x006b, all -> 0x0070, Exception -> 0x008e
            r5 = r0
            r0 = r5
            r1 = r4
            java.io.InputStream r1 = r1.getInputStream()     // Catch: all -> 0x005d, Exception -> 0x006b
            r0.<init>(r1)     // Catch: all -> 0x005d, Exception -> 0x006b
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x0049, Exception -> 0x0055, all -> 0x005d, Exception -> 0x006b
            r6 = r0
            r0 = r6
            r1 = r5
            r0.<init>(r1)     // Catch: all -> 0x0049, Exception -> 0x0055
            r0 = r6
            java.lang.String r0 = r0.readLine()     // Catch: all -> 0x0037, Exception -> 0x0041
            r7 = r0
            r0 = r6
            io.bidmachine.core.Utils.close(r0)
            r0 = r5
            io.bidmachine.core.Utils.close(r0)
            r0 = r4
            if (r0 == 0) goto L_0x0034
            r0 = r4
            r0.destroy()
        L_0x0034:
            r0 = r7
            return r0
        L_0x0037:
            r7 = move-exception
            r0 = r4
            r8 = r0
            r0 = r6
            r4 = r0
            goto L_0x0079
        L_0x0041:
            r7 = move-exception
            r0 = r6
            r7 = r0
            goto L_0x0097
        L_0x0049:
            r7 = move-exception
            r0 = 0
            r6 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            r4 = r0
            goto L_0x0079
        L_0x0055:
            r7 = move-exception
            r0 = 0
            r7 = r0
            goto L_0x0097
        L_0x005d:
            r7 = move-exception
            r0 = 0
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            r4 = r0
            goto L_0x0079
        L_0x006b:
            r7 = move-exception
            goto L_0x0092
        L_0x0070:
            r7 = move-exception
            r0 = 0
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r4
            r8 = r0
        L_0x0079:
            r0 = r4
            io.bidmachine.core.Utils.close(r0)
            r0 = r5
            io.bidmachine.core.Utils.close(r0)
            r0 = r8
            if (r0 == 0) goto L_0x008b
            r0 = r8
            r0.destroy()
        L_0x008b:
            r0 = r7
            throw r0
        L_0x008e:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L_0x0092:
            r0 = 0
            r5 = r0
            r0 = 0
            r7 = r0
        L_0x0097:
            r0 = r7
            io.bidmachine.core.Utils.close(r0)
            r0 = r5
            io.bidmachine.core.Utils.close(r0)
            r0 = r4
            if (r0 == 0) goto L_0x00a8
            r0 = r4
            r0.destroy()
        L_0x00a8:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.DeviceInfo.getKernelVersionThroughUName():java.lang.String");
    }

    public static DeviceInfo obtain(Context context) {
        DeviceInfo deviceInfo = instance;
        DeviceInfo deviceInfo2 = deviceInfo;
        if (deviceInfo == null) {
            synchronized (DeviceInfo.class) {
                try {
                    DeviceInfo deviceInfo3 = instance;
                    deviceInfo2 = deviceInfo3;
                    if (deviceInfo3 == null) {
                        deviceInfo2 = new DeviceInfo(context);
                        instance = deviceInfo2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return deviceInfo2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getAvailableDiskSpaceInMB() {
        long blockSize;
        long availableBlocks;
        Long l = null;
        if (!Utils.isExternalMemoryAvailable()) {
            return null;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        if (Build.VERSION.SDK_INT >= 18) {
            blockSize = statFs.getBlockSizeLong();
            availableBlocks = statFs.getAvailableBlocksLong();
        } else {
            blockSize = statFs.getBlockSize();
            availableBlocks = statFs.getAvailableBlocks();
        }
        l = Long.valueOf((blockSize * availableBlocks) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        return l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getHWV() {
        String str = this.hwv;
        if (str != null) {
            return str;
        }
        String kernelVersionThroughProcVersion = getKernelVersionThroughProcVersion();
        if (!TextUtils.isEmpty(kernelVersionThroughProcVersion)) {
            this.hwv = kernelVersionThroughProcVersion;
            return kernelVersionThroughProcVersion;
        }
        String kernelVersionThroughUName = getKernelVersionThroughUName();
        this.hwv = kernelVersionThroughUName;
        return kernelVersionThroughUName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getTotalDiskSpaceInMB() {
        long blockSize;
        long blockCount;
        Long l = this.totalDiskSpaceInMB;
        if (l != null) {
            return l;
        }
        try {
            if (!Utils.isExternalMemoryAvailable()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            Long valueOf = Long.valueOf((blockSize * blockCount) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            this.totalDiskSpaceInMB = valueOf;
            return valueOf;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getTotalRAMInB() {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        Throwable th;
        Long l = this.totalRAMInB;
        if (l != null) {
            return l;
        }
        try {
            randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
        } catch (Exception e) {
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = null;
        }
        try {
            Matcher matcher = Pattern.compile("(\\d+)").matcher(randomAccessFile.readLine());
            String str = "";
            while (matcher.find()) {
                str = matcher.group(1);
            }
            Long valueOf = Long.valueOf(Long.parseLong(str));
            this.totalRAMInB = valueOf;
            Utils.close(randomAccessFile);
            return valueOf;
        } catch (Exception e2) {
            Utils.close(randomAccessFile);
            return null;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile2 = randomAccessFile;
            Utils.close(randomAccessFile2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDeviceRooted() {
        Boolean bool = this.isRooted;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = true;
        for (int i = 0; i < 8; i++) {
            try {
                if (new File(new String[]{"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"}[i]).exists()) {
                    this.isRooted = Boolean.TRUE;
                    return true;
                }
            } catch (Exception e) {
            }
        }
        Process process = null;
        Process process2 = null;
        try {
            Process exec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            if (new BufferedReader(new InputStreamReader(exec.getInputStream())).readLine() == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            this.isRooted = valueOf;
            process2 = exec;
            process = exec;
            boolean booleanValue = valueOf.booleanValue();
            if (exec != null) {
                exec.destroy();
            }
            return booleanValue;
        } catch (Exception e2) {
            if (process2 != null) {
                process2.destroy();
            }
            this.isRooted = Boolean.FALSE;
            return false;
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }
}
