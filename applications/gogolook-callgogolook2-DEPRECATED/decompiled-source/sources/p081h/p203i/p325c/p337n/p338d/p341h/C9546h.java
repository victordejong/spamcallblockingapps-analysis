package p081h.p203i.p325c.p337n.p338d.p341h;

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
import androidx.appcompat.widget.ActivityChooserModel;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
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
import p081h.p203i.p325c.p337n.p338d.C9513b;
import zendesk.support.CreateRequest;
/* renamed from: h.i.c.n.d.h.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/h.class */
public class C9546h {

    /* renamed from: a */
    public static final char[] f21726a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static long f21727b = -1;

    /* renamed from: c */
    public static final Comparator<File> f21728c = new C9547a();

    /* renamed from: h.i.c.n.d.h.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/h$a.class */
    public class C9547a implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    }

    /* renamed from: h.i.c.n.d.h.h$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/h$b.class */
    public enum EnumC9548b {
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
        public static final Map<String, EnumC9548b> f21739k = new HashMap(4);

        static {
            f21739k.put("armeabi-v7a", ARMV7);
            f21739k.put("armeabi", ARMV6);
            f21739k.put("arm64-v8a", ARM64);
            f21739k.put("x86", X86_32);
        }

        /* renamed from: a */
        public static EnumC9548b m14906a() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C9513b.m15015a().m15013a("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            EnumC9548b bVar = f21739k.get(str.toLowerCase(Locale.US));
            EnumC9548b bVar2 = bVar;
            if (bVar == null) {
                bVar2 = UNKNOWN;
            }
            return bVar2;
        }
    }

    /* renamed from: a */
    public static int m14941a() {
        return EnumC9548b.m14906a().ordinal();
    }

    /* renamed from: a */
    public static int m14937a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m14913g(context));
    }

    /* renamed from: a */
    public static long m14939a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: a */
    public static long m14930a(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    /* renamed from: a */
    public static long m14927a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: a */
    public static ActivityManager.RunningAppProcessInfo m14929a(String str, Context context) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
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
    public static String m14940a(int i) {
        if (i >= 0) {
            return String.format(Locale.US, "%1$10s", Integer.valueOf(i)).replace(' ', '0');
        }
        throw new IllegalArgumentException("value must be zero or greater");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m14933a(java.io.File r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p341h.C9546h.m14933a(java.io.File, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m14931a(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    /* renamed from: a */
    public static String m14928a(String str, String str2) {
        return m14925a(str.getBytes(), str2);
    }

    /* renamed from: a */
    public static String m14926a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f21726a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m14925a(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return m14926a(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            C9513b a = C9513b.m15015a();
            a.m15010b("Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m14924a(String... strArr) {
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
                    str = m14917c(sb2);
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m14935a(Closeable closeable) {
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
    public static void m14934a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C9513b.m15015a().m15010b(str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m14932a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                C9513b.m15015a().m15010b(str, e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m14938a(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: a */
    public static boolean m14936a(Context context, String str, boolean z) {
        Resources resources;
        if (!(context == null || (resources = context.getResources()) == null)) {
            int a = m14937a(context, str, "bool");
            if (a > 0) {
                return resources.getBoolean(a);
            }
            int a2 = m14937a(context, str, "string");
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
    public static long m14923b() {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p341h.C9546h.m14923b():long");
    }

    /* renamed from: b */
    public static String m14921b(Context context, String str) {
        int a = m14937a(context, str, "string");
        return a > 0 ? context.getString(a) : "";
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    public static boolean m14922b(Context context) {
        boolean z = true;
        if (m14938a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m14920b(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: c */
    public static int m14918c(Context context) {
        int i = m14910j(context) ? 1 : 0;
        int i2 = i;
        if (m14909k(context)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m14919c()) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: c */
    public static String m14917c(String str) {
        return m14928a(str, "SHA-1");
    }

    /* renamed from: c */
    public static boolean m14919c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    /* renamed from: d */
    public static SharedPreferences m14916d(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* renamed from: e */
    public static String m14915e(Context context) {
        int a = m14937a(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        int i = a;
        if (a == 0) {
            i = m14937a(context, "com.crashlytics.android.build_id", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    /* renamed from: f */
    public static boolean m14914f(Context context) {
        boolean z = false;
        if (m14910j(context)) {
            return false;
        }
        if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public static String m14913g(Context context) {
        String packageName;
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i);
                packageName = resourcePackageName;
                if (IJSExecutor.JS_FUNCTION_GROUP.equals(resourcePackageName)) {
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
    public static SharedPreferences m14912h(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* renamed from: i */
    public static boolean m14911i(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* renamed from: j */
    public static boolean m14910j(Context context) {
        return CreateRequest.METADATA_SDK_KEY.equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    /* renamed from: k */
    public static boolean m14909k(Context context) {
        boolean j = m14910j(context);
        String str = Build.TAGS;
        if ((!j && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        return !j && new File("/system/xbin/su").exists();
    }

    /* renamed from: l */
    public static String m14908l(Context context) {
        String str;
        int a = m14937a(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (a != 0) {
            str = context.getResources().getString(a);
            C9513b a2 = C9513b.m15015a();
            a2.m15013a("Unity Editor version is: " + str);
        } else {
            str = null;
        }
        return str;
    }
}
