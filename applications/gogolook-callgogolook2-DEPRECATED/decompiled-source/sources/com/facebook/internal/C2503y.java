package com.facebook.internal;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.internal.y */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/y.class */
public class C2503y {

    /* renamed from: e */
    public static final HashMap<String, String> f3222e = new HashMap<>();

    /* renamed from: a */
    public final EnumC6151v f3223a;

    /* renamed from: b */
    public final String f3224b;

    /* renamed from: d */
    public int f3226d = 3;

    /* renamed from: c */
    public StringBuilder f3225c = new StringBuilder();

    public C2503y(EnumC6151v vVar, String str) {
        C2416h0.m34790a(str, NovaHomeBadger.TAG);
        this.f3223a = vVar;
        this.f3224b = "FacebookSDK." + str;
    }

    /* renamed from: a */
    public static void m34559a(EnumC6151v vVar, int i, String str, String str2) {
        if (C6135n.m23752b(vVar)) {
            String d = m34548d(str2);
            String str3 = str;
            if (!str.startsWith("FacebookSDK.")) {
                str3 = "FacebookSDK." + str;
            }
            Log.println(i, str3, d);
            if (vVar == EnumC6151v.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m34558a(EnumC6151v vVar, int i, String str, String str2, Object... objArr) {
        if (C6135n.m23752b(vVar)) {
            m34559a(vVar, i, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m34557a(EnumC6151v vVar, String str, String str2) {
        m34559a(vVar, 3, str, str2);
    }

    /* renamed from: a */
    public static void m34556a(EnumC6151v vVar, String str, String str2, Object... objArr) {
        if (C6135n.m23752b(vVar)) {
            m34559a(vVar, 3, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m34553a(String str, String str2) {
        synchronized (C2503y.class) {
            try {
                f3222e.put(str, str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static void m34549c(String str) {
        synchronized (C2503y.class) {
            try {
                if (!C6135n.m23752b(EnumC6151v.INCLUDE_ACCESS_TOKENS)) {
                    m34553a(str, "ACCESS_TOKEN_REMOVED");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static String m34548d(String str) {
        synchronized (C2503y.class) {
            try {
                for (Map.Entry<String, String> entry : f3222e.entrySet()) {
                    str = str.replace(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public void m34560a() {
        m34550b(this.f3225c.toString());
        this.f3225c = new StringBuilder();
    }

    /* renamed from: a */
    public void m34555a(String str) {
        if (m34551b()) {
            this.f3225c.append(str);
        }
    }

    /* renamed from: a */
    public void m34554a(String str, Object obj) {
        m34552a("  %s:\t%s\n", str, obj);
    }

    /* renamed from: a */
    public void m34552a(String str, Object... objArr) {
        if (m34551b()) {
            this.f3225c.append(String.format(str, objArr));
        }
    }

    /* renamed from: b */
    public void m34550b(String str) {
        m34559a(this.f3223a, this.f3226d, this.f3224b, str);
    }

    /* renamed from: b */
    public final boolean m34551b() {
        return C6135n.m23752b(this.f3223a);
    }
}
