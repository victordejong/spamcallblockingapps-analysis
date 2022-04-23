package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.Logger;
import com.mopub.common.Constants;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils.class */
public class CommonUtils {
    static final int BYTES_IN_A_GIGABYTE = 1073741824;
    static final int BYTES_IN_A_KILOBYTE = 1024;
    static final int BYTES_IN_A_MEGABYTE = 1048576;
    public static final int DEVICE_STATE_BETAOS = 8;
    public static final int DEVICE_STATE_COMPROMISEDLIBRARIES = 32;
    public static final int DEVICE_STATE_DEBUGGERATTACHED = 4;
    public static final int DEVICE_STATE_ISSIMULATOR = 1;
    public static final int DEVICE_STATE_JAILBROKEN = 2;
    public static final int DEVICE_STATE_VENDORINTERNAL = 16;
    private static final String GOLDFISH = "goldfish";
    static final String LEGACY_MAPPING_FILE_ID_RESOURCE_NAME = "com.crashlytics.android.build_id";
    public static final String LEGACY_SHARED_PREFS_NAME = "com.crashlytics.prefs";
    static final String MAPPING_FILE_ID_RESOURCE_NAME = "com.google.firebase.crashlytics.mapping_file_id";
    private static final String RANCHU = "ranchu";
    private static final String SDK = "sdk";
    private static final String SHA1_INSTANCE = "SHA-1";
    public static final String SHARED_PREFS_NAME = "com.google.firebase.crashlytics";
    private static final long UNCALCULATED_TOTAL_RAM = -1;
    private static final String UNITY_EDITOR_VERSION = "com.google.firebase.crashlytics.unity_version";
    private static final char[] HEX_VALUES = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static long totalRamInBytes = -1;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils$Architecture.class */
    enum Architecture {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        
        private static final Map<String, Architecture> matcher;

        static {
            Architecture architecture = X86_32;
            Architecture architecture2 = ARMV6;
            Architecture architecture3 = ARMV7;
            Architecture architecture4 = ARM64;
            HashMap hashMap = new HashMap(4);
            matcher = hashMap;
            hashMap.put("armeabi-v7a", architecture3);
            hashMap.put("armeabi", architecture2);
            hashMap.put("arm64-v8a", architecture4);
            hashMap.put("x86", architecture);
        }

        static Architecture getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                Logger.getLogger().v("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            Architecture architecture = matcher.get(str.toLowerCase(Locale.US));
            Architecture architecture2 = architecture;
            if (architecture == null) {
                architecture2 = UNKNOWN;
            }
            return architecture2;
        }
    }

    public static long calculateFreeRamInBytes(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long calculateUsedDiskSpaceInBytes(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    public static boolean canTryConnection(Context context) {
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static boolean checkPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static void closeOrLog(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Logger.getLogger().e(str, e);
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    static long convertMemInfoToBytes(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    public static String createInstanceIdFrom(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace(VerificationLanguage.REGION_PREFIX, "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            sb.append(str2);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            return sha1(sb2);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String extractFieldFromSystemFile(java.io.File r4, java.lang.String r5) {
        /*
            r0 = r4
            boolean r0 = r0.exists()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00bd
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x0089, Exception -> 0x0090
            r10 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: all -> 0x0089, Exception -> 0x0090
            r8 = r0
            r0 = r8
            r1 = r4
            r0.<init>(r1)     // Catch: all -> 0x0089, Exception -> 0x0090
            r0 = r10
            r1 = r8
            r2 = 1024(0x400, float:1.435E-42)
            r0.<init>(r1, r2)     // Catch: all -> 0x0089, Exception -> 0x0090
        L_0x002b:
            r0 = r10
            r8 = r0
            r0 = r10
            java.lang.String r0 = r0.readLine()     // Catch: Exception -> 0x007d, all -> 0x00b2
            r11 = r0
            r0 = r10
            r7 = r0
            r0 = r9
            r8 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0073
            r0 = r10
            r8 = r0
            java.lang.String r0 = "\\s*:\\s*"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: Exception -> 0x007d, all -> 0x00b2
            r1 = r11
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)     // Catch: Exception -> 0x007d, all -> 0x00b2
            r7 = r0
            r0 = r10
            r8 = r0
            r0 = r7
            int r0 = r0.length     // Catch: Exception -> 0x007d, all -> 0x00b2
            r1 = 1
            if (r0 <= r1) goto L_0x002b
            r0 = r10
            r8 = r0
            r0 = r7
            r1 = 0
            r0 = r0[r1]     // Catch: Exception -> 0x007d, all -> 0x00b2
            r1 = r5
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x007d, all -> 0x00b2
            if (r0 == 0) goto L_0x002b
            r0 = r7
            r1 = 1
            r0 = r0[r1]
            r8 = r0
            r0 = r10
            r7 = r0
        L_0x0073:
            r0 = r7
            java.lang.String r1 = "Failed to close system file reader."
            closeOrLog(r0, r1)
            goto L_0x00bd
        L_0x007d:
            r8 = move-exception
            r0 = r10
            r5 = r0
            r0 = r8
            r10 = r0
            goto L_0x0094
        L_0x0089:
            r4 = move-exception
            r0 = r7
            r8 = r0
            goto L_0x00b3
        L_0x0090:
            r10 = move-exception
            r0 = 0
            r5 = r0
        L_0x0094:
            r0 = r5
            r8 = r0
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: all -> 0x00b2
            java.lang.String r1 = "Error parsing "
            r2 = r4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: all -> 0x00b2
            java.lang.String r1 = r1.concat(r2)     // Catch: all -> 0x00b2
            r2 = r10
            r0.e(r1, r2)     // Catch: all -> 0x00b2
            r0 = r5
            r7 = r0
            r0 = r9
            r8 = r0
            goto L_0x0073
        L_0x00b2:
            r4 = move-exception
        L_0x00b3:
            r0 = r8
            java.lang.String r1 = "Failed to close system file reader."
            closeOrLog(r0, r1)
            r0 = r4
            throw r0
        L_0x00bd:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CommonUtils.extractFieldFromSystemFile(java.io.File, java.lang.String):java.lang.String");
    }

    public static ActivityManager.RunningAppProcessInfo getAppProcessInfo(String str, Context context) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 : runningAppProcesses) {
                if (runningAppProcessInfo2.processName.equals(str)) {
                    runningAppProcessInfo = runningAppProcessInfo2;
                    break;
                }
            }
        }
        runningAppProcessInfo = null;
        return runningAppProcessInfo;
    }

    public static boolean getBooleanResourceValue(Context context, String str, boolean z) {
        Resources resources;
        if (!(context == null || (resources = context.getResources()) == null)) {
            int resourcesIdentifier = getResourcesIdentifier(context, str, "bool");
            if (resourcesIdentifier > 0) {
                return resources.getBoolean(resourcesIdentifier);
            }
            int resourcesIdentifier2 = getResourcesIdentifier(context, str, "string");
            if (resourcesIdentifier2 > 0) {
                return Boolean.parseBoolean(context.getString(resourcesIdentifier2));
            }
        }
        return z;
    }

    public static int getCpuArchitectureInt() {
        return Architecture.getValue().ordinal();
    }

    public static int getDeviceState(Context context) {
        boolean isEmulator = isEmulator(context);
        int i = isEmulator ? 1 : 0;
        if (isRooted(context)) {
            i = (isEmulator ? 1 : 0) | 2;
        }
        int i2 = i;
        if (isDebuggerAttached()) {
            i2 = i | 4;
        }
        return i2;
    }

    public static SharedPreferences getLegacySharedPrefs(Context context) {
        return context.getSharedPreferences(LEGACY_SHARED_PREFS_NAME, 0);
    }

    public static String getMappingFileId(Context context) {
        int resourcesIdentifier = getResourcesIdentifier(context, MAPPING_FILE_ID_RESOURCE_NAME, "string");
        int i = resourcesIdentifier;
        if (resourcesIdentifier == 0) {
            i = getResourcesIdentifier(context, LEGACY_MAPPING_FILE_ID_RESOURCE_NAME, "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    public static boolean getProximitySensorEnabled(Context context) {
        return !isEmulator(context) && ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null;
    }

    public static String getResourcePackageName(Context context) {
        String str;
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i);
                str = resourcePackageName;
                if (Constants.ANDROID_PLATFORM.equals(resourcePackageName)) {
                    str = context.getPackageName();
                }
            } catch (Resources.NotFoundException e) {
            }
            return str;
        }
        str = context.getPackageName();
        return str;
    }

    public static int getResourcesIdentifier(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, getResourcePackageName(context));
    }

    public static SharedPreferences getSharedPrefs(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    public static String getStringsFileValue(Context context, String str) {
        int resourcesIdentifier = getResourcesIdentifier(context, str, "string");
        return resourcesIdentifier > 0 ? context.getString(resourcesIdentifier) : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getTotalRamInBytes() {
        /*
            java.lang.Class<com.google.firebase.crashlytics.internal.common.CommonUtils> r0 = com.google.firebase.crashlytics.internal.common.CommonUtils.class
            monitor-enter(r0)
            long r0 = com.google.firebase.crashlytics.internal.common.CommonUtils.totalRamInBytes     // Catch: all -> 0x00b8
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00af
            r0 = 0
            r5 = r0
            java.io.File r0 = new java.io.File     // Catch: all -> 0x00b8
            r7 = r0
            r0 = r7
            java.lang.String r1 = "/proc/meminfo"
            r0.<init>(r1)     // Catch: all -> 0x00b8
            r0 = r7
            java.lang.String r1 = "MemTotal"
            java.lang.String r0 = extractFieldFromSystemFile(r0, r1)     // Catch: all -> 0x00b8
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x00b8
            if (r0 != 0) goto L_0x00ab
            r0 = r7
            java.util.Locale r1 = java.util.Locale.US     // Catch: all -> 0x00b8
            java.lang.String r0 = r0.toUpperCase(r1)     // Catch: all -> 0x00b8
            r10 = r0
            r0 = r10
            java.lang.String r1 = "KB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            if (r0 == 0) goto L_0x004e
            r0 = r10
            java.lang.String r1 = "KB"
            r2 = 1024(0x400, float:1.435E-42)
            long r0 = convertMemInfoToBytes(r0, r1, r2)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            r8 = r0
            goto L_0x00ab
        L_0x004e:
            r0 = r10
            java.lang.String r1 = "MB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            if (r0 == 0) goto L_0x0067
            r0 = r10
            java.lang.String r1 = "MB"
            r2 = 1048576(0x100000, float:1.469368E-39)
            long r0 = convertMemInfoToBytes(r0, r1, r2)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            r8 = r0
            goto L_0x00ab
        L_0x0067:
            r0 = r10
            java.lang.String r1 = "GB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            if (r0 == 0) goto L_0x0080
            r0 = r10
            java.lang.String r1 = "GB"
            r2 = 1073741824(0x40000000, float:2.0)
            long r0 = convertMemInfoToBytes(r0, r1, r2)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            r8 = r0
            goto L_0x00ab
        L_0x0080:
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            java.lang.String r1 = "Unexpected meminfo format while computing RAM: "
            r2 = r10
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            java.lang.String r1 = r1.concat(r2)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            r0.w(r1)     // Catch: NumberFormatException -> 0x0096, all -> 0x00b8
            r0 = r5
            r8 = r0
            goto L_0x00ab
        L_0x0096:
            r7 = move-exception
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: all -> 0x00b8
            java.lang.String r1 = "Unexpected meminfo format while computing RAM: "
            r2 = r10
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: all -> 0x00b8
            java.lang.String r1 = r1.concat(r2)     // Catch: all -> 0x00b8
            r2 = r7
            r0.e(r1, r2)     // Catch: all -> 0x00b8
            r0 = r5
            r8 = r0
        L_0x00ab:
            r0 = r8
            com.google.firebase.crashlytics.internal.common.CommonUtils.totalRamInBytes = r0     // Catch: all -> 0x00b8
        L_0x00af:
            long r0 = com.google.firebase.crashlytics.internal.common.CommonUtils.totalRamInBytes     // Catch: all -> 0x00b8, all -> 0x00b8
            r8 = r0
            java.lang.Class<com.google.firebase.crashlytics.internal.common.CommonUtils> r0 = com.google.firebase.crashlytics.internal.common.CommonUtils.class
            monitor-exit(r0)
            r0 = r8
            return r0
        L_0x00b8:
            r7 = move-exception
            java.lang.Class<com.google.firebase.crashlytics.internal.common.CommonUtils> r0 = com.google.firebase.crashlytics.internal.common.CommonUtils.class
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CommonUtils.getTotalRamInBytes():long");
    }

    private static String hash(String str, String str2) {
        return hash(str.getBytes(), str2);
    }

    private static String hash(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return hexify(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            Logger logger = Logger.getLogger();
            logger.e("Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    public static String hexify(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = HEX_VALUES;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static boolean isAppDebuggable(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean isDebuggerAttached() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static boolean isEmulator(Context context) {
        return Build.PRODUCT.contains(SDK) || Build.HARDWARE.contains(GOLDFISH) || Build.HARDWARE.contains(RANCHU) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    @Deprecated
    public static boolean isLoggingEnabled(Context context) {
        return false;
    }

    public static boolean isRooted(Context context) {
        boolean isEmulator = isEmulator(context);
        String str = Build.TAGS;
        if ((!isEmulator && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        return !isEmulator && new File("/system/xbin/su").exists();
    }

    public static String padWithZerosToMaxIntWidth(int i) {
        if (i >= 0) {
            return String.format(Locale.US, "%1$10s", Integer.valueOf(i)).replace(' ', '0');
        }
        throw new IllegalArgumentException("value must be zero or greater");
    }

    public static String resolveUnityEditorVersion(Context context) {
        String str;
        int resourcesIdentifier = getResourcesIdentifier(context, UNITY_EDITOR_VERSION, "string");
        if (resourcesIdentifier != 0) {
            str = context.getResources().getString(resourcesIdentifier);
            Logger.getLogger().v("Unity Editor version is: ".concat(String.valueOf(str)));
        } else {
            str = null;
        }
        return str;
    }

    public static String sha1(String str) {
        return hash(str, SHA1_INSTANCE);
    }

    public static String streamToString(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }
}
