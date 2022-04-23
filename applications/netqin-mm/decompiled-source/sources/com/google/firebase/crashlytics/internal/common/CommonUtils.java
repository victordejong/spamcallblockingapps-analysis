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
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
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
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils.class */
public class CommonUtils {

    /* renamed from: a */
    public static final char[] f30946a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static long f30947b = -1;

    /* renamed from: c */
    public static final Comparator<File> f30948c = new C7777a();

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
        
        public static final Map<String, Architecture> matcher;

        static {
            HashMap hashMap = new HashMap(4);
            matcher = hashMap;
            hashMap.put("armeabi-v7a", ARMV7);
            matcher.put("armeabi", ARMV6);
            matcher.put("arm64-v8a", ARM64);
            matcher.put("x86", X86_32);
        }

        public static Architecture getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C5192b.m24319a().m24317a("Architecture#getValue()::Build.CPU_ABI returned null or empty");
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

    /* renamed from: com.google.firebase.crashlytics.internal.common.CommonUtils$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CommonUtils$a.class */
    public class C7777a implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    }

    /* renamed from: a */
    public static int m7671a() {
        return Architecture.getValue().ordinal();
    }

    /* renamed from: a */
    public static int m7668a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m7644g(context));
    }

    /* renamed from: a */
    public static long m7670a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: a */
    public static long m7661a(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    /* renamed from: a */
    public static long m7658a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: a */
    public static ActivityManager.RunningAppProcessInfo m7660a(String str, Context context) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m7664a(java.io.File r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CommonUtils.m7664a(java.io.File, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m7662a(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    /* renamed from: a */
    public static String m7659a(String str, String str2) {
        return m7656a(str.getBytes(), str2);
    }

    /* renamed from: a */
    public static String m7657a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f30946a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m7656a(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return m7657a(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            C5192b a = C5192b.m24319a();
            a.m24314b("Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m7655a(String... strArr) {
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
                    str = m7648c(sb2);
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m7666a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m7665a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C5192b.m24319a().m24314b(str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m7663a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                C5192b.m24319a().m24314b(str, e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m7669a(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: a */
    public static boolean m7667a(Context context, String str, boolean z) {
        Resources resources;
        if (!(context == null || (resources = context.getResources()) == null)) {
            int a = m7668a(context, str, "bool");
            if (a > 0) {
                return resources.getBoolean(a);
            }
            int a2 = m7668a(context, str, "string");
            if (a2 > 0) {
                return Boolean.parseBoolean(context.getString(a2));
            }
        }
        return z;
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
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m7654b() {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CommonUtils.m7654b():long");
    }

    /* renamed from: b */
    public static String m7652b(Context context, String str) {
        int a = m7668a(context, str, "string");
        return a > 0 ? context.getString(a) : "";
    }

    /* renamed from: b */
    public static boolean m7653b(Context context) {
        boolean z = true;
        if (m7669a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m7651b(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: c */
    public static int m7649c(Context context) {
        int i = m7642i(context) ? 1 : 0;
        int i2 = i;
        if (m7641j(context)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m7650c()) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: c */
    public static String m7648c(String str) {
        return m7659a(str, "SHA-1");
    }

    /* renamed from: c */
    public static boolean m7650c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    /* renamed from: d */
    public static SharedPreferences m7647d(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* renamed from: e */
    public static String m7646e(Context context) {
        int a = m7668a(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        int i = a;
        if (a == 0) {
            i = m7668a(context, "com.crashlytics.android.build_id", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    /* renamed from: f */
    public static boolean m7645f(Context context) {
        boolean z = false;
        if (m7642i(context)) {
            return false;
        }
        if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public static String m7644g(Context context) {
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

    /* renamed from: h */
    public static SharedPreferences m7643h(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* renamed from: i */
    public static boolean m7642i(Context context) {
        return "sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    /* renamed from: j */
    public static boolean m7641j(Context context) {
        boolean i = m7642i(context);
        String str = Build.TAGS;
        if ((!i && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        return !i && new File("/system/xbin/su").exists();
    }

    /* renamed from: k */
    public static String m7640k(Context context) {
        String str;
        int a = m7668a(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (a != 0) {
            str = context.getResources().getString(a);
            C5192b a2 = C5192b.m24319a();
            a2.m24317a("Unity Editor version is: " + str);
        } else {
            str = null;
        }
        return str;
    }
}
