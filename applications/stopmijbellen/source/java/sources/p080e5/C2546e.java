package p080e5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
/* renamed from: e5.e */
/* loaded from: classes-dex2jar.jar:e5/e.class */
public class C2546e {

    /* renamed from: a */
    public static final char[] f8906a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static long f8907b = -1;

    /* renamed from: e5.e$a */
    /* loaded from: classes-dex2jar.jar:e5/e$a.class */
    public enum EnumC2547a {
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        UNKNOWN,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64;
        

        /* renamed from: b */
        public static final Map<String, EnumC2547a> f8909b;

        static {
            EnumC2547a enumC2547a;
            EnumC2547a enumC2547a2;
            EnumC2547a enumC2547a3;
            EnumC2547a enumC2547a4;
            HashMap hashMap = new HashMap(4);
            f8909b = hashMap;
            hashMap.put("armeabi-v7a", enumC2547a3);
            hashMap.put("armeabi", enumC2547a2);
            hashMap.put("arm64-v8a", enumC2547a4);
            hashMap.put("x86", enumC2547a);
        }
    }

    /* renamed from: a */
    public static long m3457a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static String m3456b(File file, String str) {
        Closeable closeable;
        Throwable th;
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            try {
                if (file.exists()) {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file), 1024);
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                str2 = null;
                                if (readLine == null) {
                                    break;
                                }
                                String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                                if (split.length > 1 && split[0].equals(str)) {
                                    str2 = split[1];
                                    break;
                                }
                            } catch (Exception e) {
                                bufferedReader = bufferedReader2;
                                file.toString();
                                str2 = null;
                                if (bufferedReader != null) {
                                    file = null;
                                    bufferedReader.close();
                                    str2 = null;
                                }
                                return str2;
                            }
                        }
                        file = str2;
                        bufferedReader2.close();
                    } catch (Exception e2) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = null;
                        if (closeable != null) {
                            try {
                                closeable.close();
                            } catch (IOException e3) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                closeable = null;
            }
        } catch (IOException e4) {
            str2 = file;
        }
        return str2;
    }

    /* renamed from: c */
    public static boolean m3455c(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int m3452f = m3452f(context, str, "bool");
            if (m3452f > 0) {
                return resources.getBoolean(m3452f);
            }
            int m3452f2 = m3452f(context, str, "string");
            if (m3452f2 > 0) {
                return Boolean.parseBoolean(context.getString(m3452f2));
            }
        }
        return z;
    }

    /* renamed from: d */
    public static int m3454d(Context context) {
        boolean m3448j = m3448j(context);
        boolean z = m3448j;
        if (m3447k(context)) {
            z = m3448j | true;
        }
        boolean z2 = z;
        if (((Debug.isDebuggerConnected() || Debug.waitingForDebugger()) ? 1 : null) != null) {
            z2 = z | true;
        }
        return z2 ? 1 : 0;
    }

    /* renamed from: e */
    public static String m3453e(Context context) {
        int m3452f = m3452f(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        int i = m3452f;
        if (m3452f == 0) {
            i = m3452f(context, "com.crashlytics.android.build_id", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    /* renamed from: f */
    public static int m3452f(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
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
        return resources.getIdentifier(str, str2, packageName);
    }

    /* renamed from: g */
    public static SharedPreferences m3451g(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: h */
    public static long m3450h() {
        long j;
        synchronized (C2546e.class) {
            try {
                if (f8907b == -1) {
                    String m3456b = m3456b(new File("/proc/meminfo"), "MemTotal");
                    char c = 0;
                    if (!TextUtils.isEmpty(m3456b)) {
                        String upperCase = m3456b.toUpperCase(Locale.US);
                        try {
                            if (upperCase.endsWith("KB")) {
                                c = m3457a(upperCase, "KB", 1024);
                            } else if (upperCase.endsWith("MB")) {
                                c = m3457a(upperCase, "MB", 1048576);
                            } else if (upperCase.endsWith("GB")) {
                                c = m3457a(upperCase, "GB", 1073741824);
                            } else {
                                Log.w("FirebaseCrashlytics", "Unexpected meminfo format while computing RAM: " + upperCase, null);
                                c = 0;
                            }
                        } catch (NumberFormatException e) {
                            c = 0;
                        }
                    }
                    f8907b = c;
                }
                j = f8907b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    /* renamed from: i */
    public static String m3449i(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f8906a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: j */
    public static boolean m3448j(Context context) {
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

    /* renamed from: k */
    public static boolean m3447k(Context context) {
        boolean m3448j = m3448j(context);
        String str = Build.TAGS;
        if ((m3448j || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !m3448j && new File("/system/xbin/su").exists();
        }
        return true;
    }

    /* renamed from: l */
    public static String m3446l(String str) {
        String str2;
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            str2 = m3449i(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            str2 = "";
        }
        return str2;
    }
}
