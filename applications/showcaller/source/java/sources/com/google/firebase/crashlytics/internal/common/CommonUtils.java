package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
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
import com.google.firebase.crashlytics.p293d.C8898b;
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
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils.class */
public class CommonUtils {

    /* renamed from: a */
    private static final char[] f39247a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    private static long f39248b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils$Architecture.class */
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
        

        /* renamed from: n */
        private static final Map<String, Architecture> f39259n;

        static {
            Architecture architecture = X86_32;
            Architecture architecture2 = ARMV6;
            Architecture architecture3 = ARMV7;
            Architecture architecture4 = ARM64;
            HashMap hashMap = new HashMap(4);
            f39259n = hashMap;
            hashMap.put("armeabi-v7a", architecture3);
            hashMap.put("armeabi", architecture2);
            hashMap.put("arm64-v8a", architecture4);
            hashMap.put("x86", architecture);
        }

        static Architecture getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C8898b.m2397f().m2394i("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            Architecture architecture = f39259n.get(str.toLowerCase(Locale.US));
            Architecture architecture2 = architecture;
            if (architecture == null) {
                architecture2 = UNKNOWN;
            }
            return architecture2;
        }
    }

    /* renamed from: A */
    public static String m1977A(Context context) {
        String str;
        int m1957r = m1957r(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (m1957r != 0) {
            str = context.getResources().getString(m1957r);
            C8898b.m2397f().m2394i("Unity Editor version is: " + str);
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: B */
    public static String m1976B(String str) {
        return m1954u(str, "SHA-1");
    }

    /* renamed from: C */
    public static String m1975C(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    /* renamed from: a */
    public static long m1974a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: b */
    public static long m1973b(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: c */
    public static boolean m1972c(Context context) {
        boolean z = true;
        if (m1971d(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return z;
    }

    /* renamed from: d */
    public static boolean m1971d(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: e */
    public static void m1970e(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C8898b.m2397f().m2398e(str, e);
            }
        }
    }

    /* renamed from: f */
    public static void m1969f(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: g */
    static long m1968g(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: h */
    public static String m1967h(String... strArr) {
        String str = null;
        if (strArr != null) {
            if (strArr.length == 0) {
                str = null;
            } else {
                ArrayList<String> arrayList = new ArrayList();
                for (String str2 : strArr) {
                    if (str2 != null) {
                        arrayList.add(str2.replace("-", "").toLowerCase(Locale.US));
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
                    str = m1976B(sb2);
                }
            }
        }
        return str;
    }

    /* renamed from: i */
    public static String m1966i(File file, String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Exception e;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        String str2 = null;
        if (file.exists()) {
            try {
                BufferedReader bufferedReader4 = new BufferedReader(new FileReader(file), 1024);
                while (true) {
                    bufferedReader = bufferedReader4;
                    try {
                        try {
                            String readLine = bufferedReader4.readLine();
                            bufferedReader3 = bufferedReader4;
                            str2 = null;
                            if (readLine == null) {
                                break;
                            }
                            String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                            if (split.length > 1 && split[0].equals(str)) {
                                str2 = split[1];
                                bufferedReader3 = bufferedReader4;
                                break;
                            }
                        } catch (Exception e2) {
                            bufferedReader2 = bufferedReader4;
                            e = e2;
                            C8898b m2397f = C8898b.m2397f();
                            BufferedReader bufferedReader5 = bufferedReader2;
                            BufferedReader bufferedReader6 = bufferedReader2;
                            StringBuilder sb = new StringBuilder();
                            BufferedReader bufferedReader7 = bufferedReader2;
                            sb.append("Error parsing ");
                            BufferedReader bufferedReader8 = bufferedReader2;
                            sb.append(file);
                            bufferedReader = bufferedReader2;
                            m2397f.m2398e(sb.toString(), e);
                            bufferedReader3 = bufferedReader2;
                            str2 = null;
                            m1970e(bufferedReader3, "Failed to close system file reader.");
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        m1970e(bufferedReader, "Failed to close system file reader.");
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                bufferedReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                m1970e(bufferedReader, "Failed to close system file reader.");
                throw th;
            }
            m1970e(bufferedReader3, "Failed to close system file reader.");
        }
        return str2;
    }

    /* renamed from: j */
    public static ActivityManager.RunningAppProcessInfo m1965j(String str, Context context) {
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

    /* renamed from: k */
    public static boolean m1964k(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int m1957r = m1957r(context, str, "bool");
            if (m1957r > 0) {
                return resources.getBoolean(m1957r);
            }
            int m1957r2 = m1957r(context, str, "string");
            if (m1957r2 > 0) {
                return Boolean.parseBoolean(context.getString(m1957r2));
            }
        }
        return z;
    }

    /* renamed from: l */
    public static int m1963l() {
        return Architecture.getValue().ordinal();
    }

    /* renamed from: m */
    public static int m1962m(Context context) {
        int i = m1950y(context) ? 1 : 0;
        int i2 = i;
        if (m1949z(context)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m1951x()) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: n */
    public static SharedPreferences m1961n(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* renamed from: o */
    public static String m1960o(Context context) {
        int m1957r = m1957r(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        int i = m1957r;
        if (m1957r == 0) {
            i = m1957r(context, "com.crashlytics.android.build_id", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    /* renamed from: p */
    public static boolean m1959p(Context context) {
        boolean z = false;
        if (m1950y(context)) {
            return false;
        }
        if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: q */
    public static String m1958q(Context context) {
        String packageName;
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i);
                packageName = resourcePackageName;
                if ("android".equals(resourcePackageName)) {
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

    /* renamed from: r */
    public static int m1957r(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m1958q(context));
    }

    /* renamed from: s */
    public static SharedPreferences m1956s(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: t */
    public static long m1955t() {
        long j;
        synchronized (CommonUtils.class) {
            try {
                if (f39248b == -1) {
                    String m1966i = m1966i(new File("/proc/meminfo"), "MemTotal");
                    char c = 0;
                    if (!TextUtils.isEmpty(m1966i)) {
                        String upperCase = m1966i.toUpperCase(Locale.US);
                        try {
                            if (upperCase.endsWith("KB")) {
                                c = m1968g(upperCase, "KB", 1024);
                            } else if (upperCase.endsWith("MB")) {
                                c = m1968g(upperCase, "MB", 1048576);
                            } else if (upperCase.endsWith("GB")) {
                                c = m1968g(upperCase, "GB", 1073741824);
                            } else {
                                C8898b.m2397f().m2392k("Unexpected meminfo format while computing RAM: " + upperCase);
                                c = 0;
                            }
                        } catch (NumberFormatException e) {
                            C8898b.m2397f().m2398e("Unexpected meminfo format while computing RAM: " + upperCase, e);
                            c = 0;
                        }
                    }
                    f39248b = c;
                }
                j = f39248b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    /* renamed from: u */
    private static String m1954u(String str, String str2) {
        return m1953v(str.getBytes(), str2);
    }

    /* renamed from: v */
    private static String m1953v(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return m1952w(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2398e("Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: w */
    public static String m1952w(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f39247a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: x */
    public static boolean m1951x() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    /* renamed from: y */
    public static boolean m1950y(Context context) {
        boolean z;
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (!Build.PRODUCT.contains("sdk")) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu") && string != null) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: z */
    public static boolean m1949z(Context context) {
        boolean m1950y = m1950y(context);
        String str = Build.TAGS;
        if ((m1950y || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !m1950y && new File("/system/xbin/su").exists();
        }
        return true;
    }
}
