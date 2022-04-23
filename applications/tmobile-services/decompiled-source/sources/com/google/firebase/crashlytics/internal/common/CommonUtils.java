package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
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
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.firebase.crashlytics.internal.Logger;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils.class */
public class CommonUtils {
    static final int BYTES_IN_A_GIGABYTE = 1073741824;
    static final int BYTES_IN_A_KILOBYTE = 1024;
    static final int BYTES_IN_A_MEGABYTE = 1048576;
    private static final boolean CLS_TRACE_DEFAULT = false;
    private static final String CLS_TRACE_PREFERENCE_NAME = "com.crashlytics.Trace";
    public static final int DEVICE_STATE_BETAOS = 8;
    public static final int DEVICE_STATE_COMPROMISEDLIBRARIES = 32;
    public static final int DEVICE_STATE_DEBUGGERATTACHED = 4;
    public static final int DEVICE_STATE_ISSIMULATOR = 1;
    public static final int DEVICE_STATE_JAILBROKEN = 2;
    public static final int DEVICE_STATE_VENDORINTERNAL = 16;
    private static final String GOOGLE_SDK = "google_sdk";
    static final String LEGACY_MAPPING_FILE_ID_RESOURCE_NAME = "com.crashlytics.android.build_id";
    public static final String LEGACY_SHARED_PREFS_NAME = "com.crashlytics.prefs";
    private static final String LOG_PRIORITY_NAME_ASSERT = "A";
    private static final String LOG_PRIORITY_NAME_DEBUG = "D";
    private static final String LOG_PRIORITY_NAME_ERROR = "E";
    private static final String LOG_PRIORITY_NAME_INFO = "I";
    private static final String LOG_PRIORITY_NAME_UNKNOWN = "?";
    private static final String LOG_PRIORITY_NAME_VERBOSE = "V";
    private static final String LOG_PRIORITY_NAME_WARN = "W";
    static final String MAPPING_FILE_ID_RESOURCE_NAME = "com.google.firebase.crashlytics.mapping_file_id";
    private static final String SDK = "sdk";
    private static final String SHA1_INSTANCE = "SHA-1";
    private static final String SHA256_INSTANCE = "SHA-256";
    public static final String SHARED_PREFS_NAME = "com.google.firebase.crashlytics";
    private static final long UNCALCULATED_TOTAL_RAM = -1;
    private static final String UNITY_EDITOR_VERSION = "com.google.firebase.crashlytics.unity_version";
    private static Boolean clsTrace;
    private static final char[] HEX_VALUES = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static long totalRamInBytes = -1;
    public static final Comparator<File> FILE_MODIFIED_COMPARATOR = new Comparator<File>() { // from class: com.google.firebase.crashlytics.internal.common.CommonUtils.1
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils$Architecture.class */
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
            HashMap hashMap = new HashMap(4);
            matcher = hashMap;
            hashMap.put("armeabi-v7a", ARMV7);
            matcher.put("armeabi", ARMV6);
            matcher.put("arm64-v8a", ARM64);
            matcher.put("x86", X86_32);
        }

        static Architecture getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                Logger.getLogger().m8450d("Architecture#getValue()::Build.CPU_ABI returned null or empty");
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

    @SuppressLint({"MissingPermission"})
    public static boolean canTryConnection(Context context) {
        boolean z = true;
        if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return z;
    }

    public static boolean checkPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static void closeOrLog(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Logger.getLogger().m8447e(str, e);
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

    public static void copyStream(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    @Deprecated
    public static Cipher createCipher(int i, String str) throws InvalidKeyException {
        throw new InvalidKeyException("This method is deprecated");
    }

    public static String createInstanceIdFrom(String... strArr) {
        String str = null;
        if (strArr != null) {
            if (strArr.length == 0) {
                str = null;
            } else {
                ArrayList<String> arrayList = new ArrayList();
                for (String str2 : strArr) {
                    if (str2 != null) {
                        arrayList.add(str2.replace(HelpFormatter.DEFAULT_OPT_PREFIX, "").toLowerCase(Locale.US));
                    }
                }
                Collections.sort(arrayList);
                StringBuilder sb = new StringBuilder();
                for (String str3 : arrayList) {
                    sb.append(str3);
                }
                String sb2 = sb.toString();
                str = null;
                if (sb2.length() > 0) {
                    str = sha1(sb2);
                }
            }
        }
        return str;
    }

    public static byte[] dehexify(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static String extractFieldFromSystemFile(File file, String str) {
        Throwable th;
        Exception e;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        String str2 = null;
        if (file.exists()) {
            try {
                BufferedReader bufferedReader4 = new BufferedReader(new FileReader(file), BYTES_IN_A_KILOBYTE);
                while (true) {
                    bufferedReader3 = bufferedReader4;
                    try {
                        try {
                            String readLine = bufferedReader4.readLine();
                            bufferedReader2 = bufferedReader4;
                            str2 = null;
                            if (readLine == null) {
                                break;
                            }
                            String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                            if (split.length > 1 && split[0].equals(str)) {
                                str2 = split[1];
                                bufferedReader2 = bufferedReader4;
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            bufferedReader = bufferedReader4;
                            Logger logger = Logger.getLogger();
                            StringBuilder sb = new StringBuilder();
                            sb.append("Error parsing ");
                            sb.append(file);
                            bufferedReader3 = bufferedReader;
                            logger.m8447e(sb.toString(), e);
                            bufferedReader2 = bufferedReader;
                            str2 = null;
                            closeOrLog(bufferedReader2, "Failed to close system file reader.");
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        closeOrLog(bufferedReader3, "Failed to close system file reader.");
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                closeOrLog(bufferedReader3, "Failed to close system file reader.");
                throw th;
            }
            closeOrLog(bufferedReader2, "Failed to close system file reader.");
        }
        return str2;
    }

    @TargetApi(16)
    public static void finishAffinity(Activity activity, int i) {
        if (activity != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                activity.finishAffinity();
                return;
            }
            activity.setResult(i);
            activity.finish();
        }
    }

    @TargetApi(16)
    public static void finishAffinity(Context context, int i) {
        if (context instanceof Activity) {
            finishAffinity((Activity) context, i);
        }
    }

    public static void flushOrLog(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                Logger.getLogger().m8447e(str, e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static String getAppIconHashOrNull(Context context) {
        Throwable th;
        InputStream inputStream;
        Exception e;
        String str = null;
        try {
            try {
                inputStream = context.getResources().openRawResource(getAppIconResourceId(context));
                try {
                    String sha1 = sha1(inputStream);
                    if (!isNullOrEmpty(sha1)) {
                        str = sha1;
                    }
                    closeOrLog(inputStream, "Failed to close icon input stream.");
                    return str;
                } catch (Exception e2) {
                    e = e2;
                    Logger logger = Logger.getLogger();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Could not calculate hash for app icon:");
                    sb.append(e.getMessage());
                    logger.m8442w(sb.toString());
                    closeOrLog(inputStream, "Failed to close icon input stream.");
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                closeOrLog(context, "Failed to close icon input stream.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            context = 0;
            closeOrLog(context, "Failed to close icon input stream.");
            throw th;
        }
    }

    public static int getAppIconResourceId(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
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
        int i = isEmulator(context) ? 1 : 0;
        int i2 = i;
        if (isRooted(context)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (isDebuggerAttached()) {
            i3 = i2 | 4;
        }
        return i3;
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
        boolean z = false;
        if (isEmulator(context)) {
            return false;
        }
        if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
            z = true;
        }
        return z;
    }

    public static String getResourcePackageName(Context context) {
        String packageName;
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i);
                packageName = resourcePackageName;
                if (AbstractSpiCall.ANDROID_CLIENT_TYPE.equals(resourcePackageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException e) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return packageName;
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
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CommonUtils.getTotalRamInBytes():long");
    }

    private static String hash(InputStream inputStream, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            byte[] bArr = new byte[BYTES_IN_A_KILOBYTE];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return hexify(instance.digest());
                }
                instance.update(bArr, 0, read);
            }
        } catch (Exception e) {
            Logger.getLogger().m8447e("Could not calculate hash for app icon.", e);
            return "";
        }
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
            logger.m8447e("Could not create hashing algorithm: " + str + ", returning empty string.", e);
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

    public static void hideKeyboard(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean isAppDebuggable(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean isClsTrace(Context context) {
        if (clsTrace == null) {
            clsTrace = Boolean.valueOf(getBooleanResourceValue(context, CLS_TRACE_PREFERENCE_NAME, false));
        }
        return clsTrace.booleanValue();
    }

    public static boolean isDebuggerAttached() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static boolean isEmulator(Context context) {
        return SDK.equals(Build.PRODUCT) || GOOGLE_SDK.equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    @Deprecated
    public static boolean isLoggingEnabled(Context context) {
        return false;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isRooted(Context context) {
        boolean isEmulator = isEmulator(context);
        String str = Build.TAGS;
        if ((!isEmulator && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        return !isEmulator && new File("/system/xbin/su").exists();
    }

    public static void logControlled(Context context, int i, String str, String str2) {
        if (isClsTrace(context)) {
            Logger.getLogger().log(i, str2);
        }
    }

    public static void logControlled(Context context, String str) {
        if (isClsTrace(context)) {
            Logger.getLogger().m8450d(str);
        }
    }

    public static void logControlledError(Context context, String str, Throwable th) {
        if (isClsTrace(context)) {
            Logger.getLogger().m8448e(str);
        }
    }

    public static String logPriorityToString(int i) {
        switch (i) {
            case 2:
                return LOG_PRIORITY_NAME_VERBOSE;
            case 3:
                return LOG_PRIORITY_NAME_DEBUG;
            case 4:
                return LOG_PRIORITY_NAME_INFO;
            case 5:
                return LOG_PRIORITY_NAME_WARN;
            case 6:
                return LOG_PRIORITY_NAME_ERROR;
            case 7:
                return LOG_PRIORITY_NAME_ASSERT;
            default:
                return LOG_PRIORITY_NAME_UNKNOWN;
        }
    }

    public static void openKeyboard(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInputFromInputMethod(view.getWindowToken(), 0);
        }
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
            Logger logger = Logger.getLogger();
            logger.m8450d("Unity Editor version is: " + str);
        } else {
            str = null;
        }
        return str;
    }

    public static String sha1(InputStream inputStream) {
        return hash(inputStream, SHA1_INSTANCE);
    }

    public static String sha1(String str) {
        return hash(str, SHA1_INSTANCE);
    }

    public static String sha256(String str) {
        return hash(str, SHA256_INSTANCE);
    }

    public static String streamToString(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    public static boolean stringsEqualIncludingNull(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }
}
