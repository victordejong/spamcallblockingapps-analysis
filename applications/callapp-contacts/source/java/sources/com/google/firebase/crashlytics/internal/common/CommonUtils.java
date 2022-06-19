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
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
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
import java.util.regex.Pattern;
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
    public enum Architecture {
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
                Logger.getLogger().m8482v("Architecture#getValue()::Build.CPU_ABI returned null or empty");
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
        if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return true;
    }

    public static boolean checkPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static void closeOrLog(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Logger.getLogger().m8485e(str, e);
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
        if (sb2.length() <= 0) {
            return null;
        }
        return sha1(sb2);
    }

    public static String extractFieldFromSystemFile(File file, String str) {
        Throwable th;
        Exception e;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        String str2 = null;
        try {
            if (file.exists()) {
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(new FileReader(file), 1024);
                    while (true) {
                        try {
                            String readLine = bufferedReader3.readLine();
                            bufferedReader2 = bufferedReader3;
                            str2 = null;
                            if (readLine == null) {
                                break;
                            }
                            String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                            if (split.length > 1 && split[0].equals(str)) {
                                str2 = split[1];
                                bufferedReader2 = bufferedReader3;
                                break;
                            }
                        } catch (Exception e2) {
                            bufferedReader = bufferedReader3;
                            e = e2;
                            Logger.getLogger().m8485e("Error parsing ".concat(String.valueOf(file)), e);
                            bufferedReader2 = bufferedReader;
                            str2 = null;
                            closeOrLog(bufferedReader2, "Failed to close system file reader.");
                            return str2;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    str2 = null;
                    closeOrLog(str2, "Failed to close system file reader.");
                    throw th;
                }
                closeOrLog(bufferedReader2, "Failed to close system file reader.");
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
        }
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
        if (context != null && (resources = context.getResources()) != null) {
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
        boolean z = isEmulator;
        if (isRooted(context)) {
            z = isEmulator | true;
        }
        boolean z2 = z;
        if (isDebuggerAttached()) {
            z2 = z | true;
        }
        return z2 ? 1 : 0;
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

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public static long getTotalRamInBytes() {
        long j;
        synchronized (CommonUtils.class) {
            try {
                if (totalRamInBytes == -1) {
                    String extractFieldFromSystemFile = extractFieldFromSystemFile(new File("/proc/meminfo"), "MemTotal");
                    char c = 0;
                    if (!TextUtils.isEmpty(extractFieldFromSystemFile)) {
                        String upperCase = extractFieldFromSystemFile.toUpperCase(Locale.US);
                        try {
                            if (upperCase.endsWith("KB")) {
                                c = convertMemInfoToBytes(upperCase, "KB", 1024);
                            } else if (upperCase.endsWith("MB")) {
                                c = convertMemInfoToBytes(upperCase, "MB", BYTES_IN_A_MEGABYTE);
                            } else if (upperCase.endsWith("GB")) {
                                c = convertMemInfoToBytes(upperCase, "GB", BYTES_IN_A_GIGABYTE);
                            } else {
                                Logger.getLogger().m8480w("Unexpected meminfo format while computing RAM: ".concat(String.valueOf(upperCase)));
                                c = 0;
                            }
                        } catch (NumberFormatException e) {
                            Logger.getLogger().m8485e("Unexpected meminfo format while computing RAM: ".concat(String.valueOf(upperCase)), e);
                            c = 0;
                        }
                    }
                    totalRamInBytes = c;
                }
                j = totalRamInBytes;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    private static String hash(String str, String str2) {
        return hash(str.getBytes(), str2);
    }

    private static String hash(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return hexify(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            Logger logger = Logger.getLogger();
            logger.m8485e("Could not create hashing algorithm: " + str + ", returning empty string.", e);
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
        if ((isEmulator || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !isEmulator && new File("/system/xbin/su").exists();
        }
        return true;
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
            Logger.getLogger().m8482v("Unity Editor version is: ".concat(String.valueOf(str)));
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
