package com.facebook.internal;

import android.util.Log;
import com.facebook.C2095j;
import com.facebook.EnumC2197q;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.internal.r */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/r.class */
public class C2063r {

    /* renamed from: a */
    private static final HashMap<String, String> f6084a = new HashMap<>();

    /* renamed from: b */
    private final EnumC2197q f6085b;

    /* renamed from: c */
    private final String f6086c;

    /* renamed from: e */
    private int f6088e = 3;

    /* renamed from: d */
    private StringBuilder f6087d = new StringBuilder();

    public C2063r(EnumC2197q enumC2197q, String str) {
        C2084y.m15416a(str, "tag");
        this.f6085b = enumC2197q;
        this.f6086c = "FacebookSDK." + str;
    }

    /* renamed from: a */
    public static void m15552a(EnumC2197q enumC2197q, int i, String str, String str2) {
        if (C2095j.m15370a(enumC2197q)) {
            String m15541d = m15541d(str2);
            String str3 = str;
            if (!str.startsWith("FacebookSDK.")) {
                str3 = "FacebookSDK." + str;
            }
            Log.println(i, str3, m15541d);
            if (enumC2197q != EnumC2197q.DEVELOPER_ERRORS) {
                return;
            }
            new Exception().printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m15551a(EnumC2197q enumC2197q, int i, String str, String str2, Object... objArr) {
        if (C2095j.m15370a(enumC2197q)) {
            m15552a(enumC2197q, i, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m15550a(EnumC2197q enumC2197q, String str, String str2) {
        m15552a(enumC2197q, 3, str, str2);
    }

    /* renamed from: a */
    public static void m15549a(EnumC2197q enumC2197q, String str, String str2, Object... objArr) {
        if (C2095j.m15370a(enumC2197q)) {
            m15552a(enumC2197q, 3, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m15548a(String str) {
        synchronized (C2063r.class) {
            try {
                if (!C2095j.m15370a(EnumC2197q.INCLUDE_ACCESS_TOKENS)) {
                    m15546a(str, "ACCESS_TOKEN_REMOVED");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m15546a(String str, String str2) {
        synchronized (C2063r.class) {
            try {
                f6084a.put(str, str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private boolean m15544b() {
        return C2095j.m15370a(this.f6085b);
    }

    /* renamed from: d */
    private static String m15541d(String str) {
        synchronized (C2063r.class) {
            try {
                for (Map.Entry<String, String> entry : f6084a.entrySet()) {
                    str = str.replace(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public void m15553a() {
        m15543b(this.f6087d.toString());
        this.f6087d = new StringBuilder();
    }

    /* renamed from: a */
    public void m15547a(String str, Object obj) {
        m15545a("  %s:\t%s\n", str, obj);
    }

    /* renamed from: a */
    public void m15545a(String str, Object... objArr) {
        if (m15544b()) {
            this.f6087d.append(String.format(str, objArr));
        }
    }

    /* renamed from: b */
    public void m15543b(String str) {
        m15552a(this.f6085b, this.f6088e, this.f6086c, str);
    }

    /* renamed from: c */
    public void m15542c(String str) {
        if (m15544b()) {
            this.f6087d.append(str);
        }
    }
}
