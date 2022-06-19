package io.fabric.sdk.android.services.p068b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
/* renamed from: io.fabric.sdk.android.services.b.i */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/i.class */
public class C1480i {

    /* renamed from: b */
    private static Boolean f4060b;

    /* renamed from: c */
    private static final char[] f4061c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: d */
    private static long f4062d = -1;

    /* renamed from: a */
    public static final Comparator<File> f4059a = new Comparator<File>() { // from class: io.fabric.sdk.android.services.b.i.1
        /* renamed from: a */
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.fabric.sdk.android.services.b.i$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/i$a.class */
    public enum EnumC1482a {
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
        

        /* renamed from: k */
        private static final Map<String, EnumC1482a> f4073k = new HashMap(4);

        static {
            f4073k.put("armeabi-v7a", ARMV7);
            f4073k.put("armeabi", ARMV6);
            f4073k.put("arm64-v8a", ARM64);
            f4073k.put("x86", X86_32);
        }

        /* renamed from: a */
        static EnumC1482a m3461a() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C1449c.m3572g().mo3552a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            EnumC1482a enumC1482a = f4073k.get(str.toLowerCase(Locale.US));
            EnumC1482a enumC1482a2 = enumC1482a;
            if (enumC1482a == null) {
                enumC1482a2 = UNKNOWN;
            }
            return enumC1482a2;
        }
    }

    /* renamed from: a */
    public static int m3507a() {
        return EnumC1482a.m3461a().ordinal();
    }

    /* renamed from: a */
    public static int m3502a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m3467j(context));
    }

    /* renamed from: a */
    public static int m3499a(Context context, boolean z) {
        Float m3477c = m3477c(context);
        if (!z || m3477c == null) {
            return 1;
        }
        if (m3477c.floatValue() >= 99.0d) {
            return 3;
        }
        return ((double) m3477c.floatValue()) < 99.0d ? 2 : 0;
    }

    /* renamed from: a */
    static long m3488a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: a */
    public static ActivityManager.RunningAppProcessInfo m3490a(String str, Context context) {
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

    /* renamed from: a */
    public static SharedPreferences m3505a(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* renamed from: a */
    public static String m3506a(int i) {
        if (i >= 0) {
            return String.format(Locale.US, "%1$10s", Integer.valueOf(i)).replace(' ', '0');
        }
        throw new IllegalArgumentException("value must be zero or greater");
    }

    /* renamed from: a */
    public static String m3496a(File file, String str) {
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
                            AbstractC1462k m3572g = C1449c.m3572g();
                            BufferedReader bufferedReader5 = bufferedReader2;
                            BufferedReader bufferedReader6 = bufferedReader2;
                            StringBuilder sb = new StringBuilder();
                            BufferedReader bufferedReader7 = bufferedReader2;
                            sb.append("Error parsing ");
                            BufferedReader bufferedReader8 = bufferedReader2;
                            sb.append(file);
                            bufferedReader = bufferedReader2;
                            m3572g.mo3545e("Fabric", sb.toString(), e);
                            bufferedReader3 = bufferedReader2;
                            str2 = null;
                            m3497a(bufferedReader3, "Failed to close system file reader.");
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        m3497a(bufferedReader, "Failed to close system file reader.");
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                bufferedReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                m3497a(bufferedReader, "Failed to close system file reader.");
                throw th;
            }
            m3497a(bufferedReader3, "Failed to close system file reader.");
        }
        return str2;
    }

    /* renamed from: a */
    public static String m3494a(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    /* renamed from: a */
    private static String m3492a(InputStream inputStream, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return m3487a(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (Exception e) {
            C1449c.m3572g().mo3545e("Fabric", "Could not calculate hash for app icon.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m3491a(String str) {
        return m3489a(str, "SHA-1");
    }

    /* renamed from: a */
    private static String m3489a(String str, String str2) {
        return m3486a(str.getBytes(), str2);
    }

    /* renamed from: a */
    public static String m3487a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f4061c;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    private static String m3486a(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return m3487a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3545e("Fabric", "Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m3485a(String... strArr) {
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
                    str = m3491a(sb2);
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m3504a(Context context, int i, String str, String str2) {
        if (m3472e(context)) {
            C1449c.m3572g().mo3555a(i, "Fabric", str2);
        }
    }

    /* renamed from: a */
    public static void m3503a(Context context, String str) {
        if (m3472e(context)) {
            C1449c.m3572g().mo3552a("Fabric", str);
        }
    }

    /* renamed from: a */
    public static void m3501a(Context context, String str, Throwable th) {
        if (m3472e(context)) {
            C1449c.m3572g().mo3546e("Fabric", str);
        }
    }

    /* renamed from: a */
    public static void m3498a(Closeable closeable) {
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
    public static void m3497a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C1449c.m3572g().mo3545e("Fabric", str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m3495a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                C1449c.m3572g().mo3545e("Fabric", str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m3493a(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static boolean m3500a(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int m3502a = m3502a(context, str, "bool");
            if (m3502a > 0) {
                return resources.getBoolean(m3502a);
            }
            int m3502a2 = m3502a(context, str, "string");
            if (m3502a2 > 0) {
                return Boolean.parseBoolean(context.getString(m3502a2));
            }
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: b */
    public static long m3484b() {
        long j;
        synchronized (C1480i.class) {
            try {
                if (f4062d == -1) {
                    String m3496a = m3496a(new File("/proc/meminfo"), "MemTotal");
                    char c = 0;
                    if (!TextUtils.isEmpty(m3496a)) {
                        String upperCase = m3496a.toUpperCase(Locale.US);
                        try {
                            if (upperCase.endsWith("KB")) {
                                c = m3488a(upperCase, "KB", 1024);
                            } else if (upperCase.endsWith("MB")) {
                                c = m3488a(upperCase, "MB", 1048576);
                            } else if (upperCase.endsWith("GB")) {
                                c = m3488a(upperCase, "GB", 1073741824);
                            } else {
                                C1449c.m3572g().mo3552a("Fabric", "Unexpected meminfo format while computing RAM: " + upperCase);
                                c = 0;
                            }
                        } catch (NumberFormatException e) {
                            C1449c.m3572g().mo3545e("Fabric", "Unexpected meminfo format while computing RAM: " + upperCase, e);
                            c = 0;
                        }
                    }
                    f4062d = c;
                }
                j = f4062d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    /* renamed from: b */
    public static long m3482b(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: b */
    public static String m3483b(int i) {
        switch (i) {
            case 2:
                return "V";
            case 3:
                return "D";
            case 4:
                return "I";
            case 5:
                return "W";
            case 6:
                return "E";
            case 7:
                return "A";
            default:
                return "?";
        }
    }

    /* renamed from: b */
    public static String m3481b(Context context, String str) {
        int m3502a = m3502a(context, str, "string");
        return m3502a > 0 ? context.getString(m3502a) : "";
    }

    /* renamed from: b */
    public static String m3480b(InputStream inputStream) {
        return m3492a(inputStream, "SHA-1");
    }

    /* renamed from: b */
    public static String m3479b(String str) {
        return m3489a(str, "SHA-256");
    }

    /* renamed from: c */
    public static long m3475c(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    /* renamed from: c */
    public static Float m3477c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return null;
        }
        return Float.valueOf(registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1));
    }

    /* renamed from: c */
    public static boolean m3478c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    /* renamed from: c */
    public static boolean m3476c(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: d */
    public static boolean m3474d(Context context) {
        boolean z = false;
        if (m3471f(context)) {
            return false;
        }
        if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static boolean m3473d(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: e */
    public static boolean m3472e(Context context) {
        if (f4060b == null) {
            f4060b = Boolean.valueOf(m3500a(context, "com.crashlytics.Trace", false));
        }
        return f4060b.booleanValue();
    }

    /* renamed from: f */
    public static boolean m3471f(Context context) {
        return "sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    /* renamed from: g */
    public static boolean m3470g(Context context) {
        boolean m3471f = m3471f(context);
        String str = Build.TAGS;
        if ((m3471f || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !m3471f && new File("/system/xbin/su").exists();
        }
        return true;
    }

    /* renamed from: h */
    public static int m3469h(Context context) {
        int i = m3471f(context) ? 1 : 0;
        int i2 = i;
        if (m3470g(context)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m3478c()) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: i */
    public static boolean m3468i(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* renamed from: j */
    public static String m3467j(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* renamed from: k */
    public static String m3466k(Context context) {
        Throwable th;
        InputStream inputStream;
        Exception e;
        try {
            try {
                inputStream = context.getResources().openRawResource(m3465l(context));
                try {
                    String m3480b = m3480b(inputStream);
                    String str = m3473d(m3480b) ? null : m3480b;
                    m3497a((Closeable) inputStream, "Failed to close icon input stream.");
                    return str;
                } catch (Exception e2) {
                    e = e2;
                    C1449c.m3572g().mo3545e("Fabric", "Could not calculate hash for app icon.", e);
                    m3497a((Closeable) inputStream, "Failed to close icon input stream.");
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                m3497a((Closeable) context, "Failed to close icon input stream.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            context = null;
            m3497a((Closeable) context, "Failed to close icon input stream.");
            throw th;
        }
    }

    /* renamed from: l */
    public static int m3465l(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
    }

    /* renamed from: m */
    public static String m3464m(Context context) {
        String str;
        int m3502a = m3502a(context, "io.fabric.android.build_id", "string");
        int i = m3502a;
        if (m3502a == 0) {
            i = m3502a(context, "com.crashlytics.android.build_id", "string");
        }
        if (i != 0) {
            str = context.getResources().getString(i);
            C1449c.m3572g().mo3552a("Fabric", "Build ID is: " + str);
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: n */
    public static boolean m3463n(Context context) {
        boolean z = true;
        if (m3476c(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return z;
    }
}
