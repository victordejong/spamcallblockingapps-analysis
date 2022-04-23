package p081h.p160h.p179e.p180a.p190p;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.gogolook.whoscallsdk.core.utils.JniLibUtils;
import java.util.UUID;
import p081h.p160h.p179e.p180a.C6334a;
/* renamed from: h.h.e.a.p.d */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/d.class */
public class C6431d {

    /* renamed from: a */
    public static String f16043a;

    /* renamed from: b */
    public static byte[] f16044b;

    /* renamed from: a */
    public static int m22628a(Context context, String str, int i) {
        return context.getSharedPreferences("whoscallSDK_core", 0).getInt(str, i);
    }

    /* renamed from: a */
    public static long m22627a(Context context, String str, long j) {
        return context.getSharedPreferences("whoscallSDK_core", 0).getLong(str, j);
    }

    /* renamed from: a */
    public static String m22630a(Context context) {
        String str;
        synchronized (C6431d.class) {
            try {
                if (!m22623a(f16043a)) {
                    String replaceAll = UUID.randomUUID().toString().replaceAll("-", "");
                    m22629a(context, replaceAll);
                    f16043a = replaceAll;
                }
                str = f16043a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m22626a(Context context, String str, String str2) {
        String b = m22619b(context, str, str2);
        if (TextUtils.isEmpty(b) || b.equals(str2)) {
            return b;
        }
        byte[] a = C6428a.m22652a(m22615c(context), C6432e.m22590d(b));
        return a != null ? new String(a) : str2;
    }

    /* renamed from: a */
    public static String m22625a(Context context, String str, String str2, boolean z) {
        String b = m22619b(context, str, str2);
        if (!z || TextUtils.isEmpty(b) || b.equals(str2)) {
            return b;
        }
        String a = C6428a.m22654a(m22622b(context), b);
        return !TextUtils.isEmpty(a) ? a : str2;
    }

    /* renamed from: a */
    public static void m22629a(Context context, String str) {
        m22612d(context, "whoscallsdk", C6428a.m22651b(JniLibUtils.getOriginalKey(), str));
        if (Build.VERSION.SDK_INT >= 23) {
            String b = C6432e.m22597b(C6430c.m22638b(str.getBytes()));
            if (!TextUtils.isEmpty(b)) {
                m22612d(context, "pref_sdk_keystore", b);
                return;
            }
        }
        m22612d(context, "pref_sdk_keypref", C6428a.m22651b(JniLibUtils.getPrefsKey(), str));
    }

    /* renamed from: a */
    public static boolean m22624a(Context context, String str, boolean z) {
        return context.getSharedPreferences("whoscallSDK_core", 0).getBoolean(str, z);
    }

    /* renamed from: a */
    public static boolean m22623a(String str) {
        return str != null && str.matches("^[0-9a-fA-F]+$");
    }

    /* renamed from: b */
    public static String m22622b(Context context) {
        if (TextUtils.isEmpty(f16043a)) {
            if (Build.VERSION.SDK_INT >= 23) {
                String b = m22619b(context, "pref_sdk_keystore", (String) null);
                if (!TextUtils.isEmpty(b)) {
                    try {
                        f16043a = new String(C6430c.m22642a(C6432e.m22590d(b)));
                    } catch (NullPointerException e) {
                        C6438i.m22583a(e);
                        f16043a = C6428a.m22654a(JniLibUtils.getOriginalKey(), m22619b(context, "whoscallsdk", ""));
                    }
                    return f16043a;
                }
            }
            String b2 = m22619b(context, "pref_sdk_keypref", (String) null);
            if (!TextUtils.isEmpty(b2)) {
                f16043a = C6428a.m22654a(JniLibUtils.getPrefsKey(), b2);
                return f16043a;
            }
            String b3 = m22619b(context, "whoscallsdk", "");
            if (!TextUtils.isEmpty(b3)) {
                f16043a = C6428a.m22654a(JniLibUtils.getOriginalKey(), b3);
                if (!m22623a(f16043a)) {
                    f16043a = m22630a(context);
                } else {
                    m22629a(context, f16043a);
                }
            } else {
                f16043a = m22630a(context);
            }
        }
        return f16043a;
    }

    /* renamed from: b */
    public static String m22619b(Context context, String str, String str2) {
        return context.getSharedPreferences("whoscallSDK_core", 0).getString(str, str2);
    }

    /* renamed from: b */
    public static String m22616b(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str.substring(str.length() / 2) + str.substring(0, str.length() / 2);
        }
        return str2;
    }

    /* renamed from: b */
    public static void m22621b(Context context, String str, int i) {
        context.getSharedPreferences("whoscallSDK_core", 0).edit().putInt(str, i).apply();
    }

    /* renamed from: b */
    public static void m22620b(Context context, String str, long j) {
        context.getSharedPreferences("whoscallSDK_core", 0).edit().putLong(str, j).apply();
    }

    /* renamed from: b */
    public static void m22618b(Context context, String str, String str2, boolean z) {
        if (z) {
            m22612d(context, str, C6428a.m22651b(m22622b(context), str2));
        } else {
            m22612d(context, str, str2);
        }
    }

    /* renamed from: b */
    public static void m22617b(Context context, String str, boolean z) {
        context.getSharedPreferences("whoscallSDK_core", 0).edit().putBoolean(str, z).apply();
    }

    /* renamed from: c */
    public static void m22614c(Context context, String str, String str2) {
        byte[] b = C6428a.m22649b(m22615c(context), str2.getBytes());
        if (b != null) {
            m22612d(context, str, C6432e.m22597b(b));
        }
    }

    /* renamed from: c */
    public static byte[] m22615c(Context context) {
        if (f16044b == null) {
            String b = m22619b(context, "pref_sdk_lowsecure_keypref", (String) null);
            if (!TextUtils.isEmpty(b)) {
                f16044b = C6432e.m22590d(m22616b(b));
            } else {
                byte[] a = C6430c.m22643a(UUID.randomUUID().toString().replaceAll("-", ""), 256);
                C6334a.m23211s().m23226d("pref_sdk_lowsecure_keypref", C6432e.m22597b(a));
                f16044b = C6432e.m22590d(m22616b(C6432e.m22597b(a)));
            }
        }
        return f16044b;
    }

    /* renamed from: d */
    public static SharedPreferences m22613d(Context context) {
        return context.getSharedPreferences("whoscallSDK_core", 0);
    }

    /* renamed from: d */
    public static void m22612d(Context context, String str, String str2) {
        context.getSharedPreferences("whoscallSDK_core", 0).edit().putString(str, str2).apply();
    }
}
