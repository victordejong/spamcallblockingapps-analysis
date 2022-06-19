package com.huawei.hms.hatool;

import java.util.Map;
/* renamed from: com.huawei.hms.hatool.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/c.class */
public abstract class AbstractC2351c {
    /* renamed from: a */
    public static void m37769a(String str, String str2, long j) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            m37762h.m37643a(j);
        }
    }

    /* renamed from: a */
    public static boolean m37770a(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37645a();
        }
        return true;
    }

    /* renamed from: b */
    public static int m37768b(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37632d();
        }
        return 7;
    }

    /* renamed from: c */
    public static boolean m37767c(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37624g();
        }
        return true;
    }

    /* renamed from: d */
    public static String m37766d(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37626f() : "";
    }

    /* renamed from: e */
    public static boolean m37765e(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37621i();
        }
        return false;
    }

    /* renamed from: f */
    public static String m37764f(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37622h() : "";
    }

    /* renamed from: g */
    public static String m37763g(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37616n() : "";
    }

    /* renamed from: h */
    public static C2370k m37762h(String str, String str2) {
        C2374m m37675a = C2366i.m37672c().m37675a(str);
        if (m37675a != null) {
            if (!"alltype".equals(str2)) {
                return m37675a.m37569a(str2);
            }
            C2370k m37569a = m37675a.m37569a("oper");
            C2370k c2370k = m37569a;
            if (m37569a == null) {
                c2370k = m37675a.m37569a("maint");
            }
            return c2370k;
        }
        return null;
    }

    /* renamed from: i */
    public static Map<String, String> m37761i(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37619k();
        }
        return null;
    }

    /* renamed from: j */
    public static long m37760j(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37618l();
        }
        return 0L;
    }

    /* renamed from: k */
    public static int m37759k(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        if (m37762h != null) {
            return m37762h.m37639b();
        }
        return 10;
    }

    /* renamed from: l */
    public static String m37758l(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37615o() : "";
    }

    /* renamed from: m */
    public static String m37757m(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37613q() : "";
    }

    /* renamed from: n */
    public static String m37756n(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37617m() : "";
    }

    /* renamed from: o */
    public static String m37755o(String str, String str2) {
        C2370k m37762h = m37762h(str, str2);
        return m37762h != null ? m37762h.m37614p() : "";
    }
}
