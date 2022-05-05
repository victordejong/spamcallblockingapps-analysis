package p459j.p460a.p582w0.p583a5;

import java.util.List;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.w0.a5.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a5/a.class */
public class C13891a {

    /* renamed from: a */
    public static final String[] f31197a = {"HK", "US", "JP", "TW", "KR", "TH", "ID", "IN", "SA", "MY", "BR"};

    /* renamed from: b */
    public static final String[] f31198b = {"HK", "US", "JP", "TW", "TH", "ID", "IN", "SA", "MY", "BR"};

    /* renamed from: c */
    public static final String[] f31199c = {"HK", "US", "JP", "TW", "TH", "ID", "IN", "SA", "MY", "BR"};

    /* renamed from: d */
    public static final String[] f31200d = {"TW", "KR", "BR"};

    /* renamed from: e */
    public static final String[] f31201e = {"TW", "KR"};

    /* renamed from: f */
    public static final String[] f31202f = {"TW"};

    /* renamed from: g */
    public static final String[] f31203g = {"BR"};

    /* renamed from: h */
    public static final String[] f31204h = {"BR"};

    /* renamed from: i */
    public static final String[] f31205i = {"TW", "BR"};

    /* renamed from: j */
    public static final String[] f31206j = {"BR"};

    /* renamed from: k */
    public static final String[] f31207k = {"TW"};

    /* renamed from: l */
    public static final String[] f31208l = {"BR"};

    /* renamed from: m */
    public static final String[] f31209m = {"TW", "JP"};

    /* renamed from: a */
    public static boolean m3168a() {
        return !m3165a(f31203g);
    }

    /* renamed from: a */
    public static boolean m3167a(String str) {
        List<String> a = C13640c.m3745d().m3752a("country_can_enter_scp_without_setting_default_sms_v2", (List<String>) null);
        return a != null && a.contains(str.toUpperCase());
    }

    /* renamed from: a */
    public static boolean m3166a(String str, String[] strArr) {
        for (String str2 : strArr) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m3165a(String[] strArr) {
        return m3166a(C14017g4.m2810n(), strArr);
    }

    /* renamed from: b */
    public static boolean m3164b() {
        return m3149m() || C14017g4.m2831E();
    }

    /* renamed from: b */
    public static boolean m3163b(String str) {
        return C13640c.m3745d().m3746c("cs_faq_enabled_countries").contains(str.toUpperCase());
    }

    /* renamed from: c */
    public static boolean m3162c() {
        return !C14017g4.m2834B();
    }

    /* renamed from: c */
    public static boolean m3161c(String str) {
        return C13640c.m3745d().m3746c("hide_onboarding_register_skip").contains(str.toUpperCase());
    }

    /* renamed from: d */
    public static boolean m3160d() {
        return C14017g4.m2830F();
    }

    /* renamed from: d */
    public static boolean m3159d(String str) {
        return !m3157e(str);
    }

    /* renamed from: e */
    public static boolean m3158e() {
        return m3165a(f31202f);
    }

    /* renamed from: e */
    public static boolean m3157e(String str) {
        return C13640c.m3745d().m3746c("whoscall_number_country_list").contains(str.toUpperCase());
    }

    /* renamed from: f */
    public static boolean m3156f() {
        return m3165a(f31201e);
    }

    /* renamed from: g */
    public static boolean m3155g() {
        return m3165a(f31197a);
    }

    /* renamed from: h */
    public static boolean m3154h() {
        return m3165a(f31208l);
    }

    /* renamed from: i */
    public static boolean m3153i() {
        return !m3154h();
    }

    /* renamed from: j */
    public static boolean m3152j() {
        return m3165a(f31198b);
    }

    /* renamed from: k */
    public static boolean m3151k() {
        return m3165a(f31207k);
    }

    /* renamed from: l */
    public static boolean m3150l() {
        return m3165a(f31206j);
    }

    /* renamed from: m */
    public static boolean m3149m() {
        return m3165a(f31199c);
    }

    /* renamed from: n */
    public static boolean m3148n() {
        return m3165a(f31209m);
    }

    /* renamed from: o */
    public static boolean m3147o() {
        return C13640c.m3745d().m3746c("auto_block_enable").contains(C14017g4.m2810n().toUpperCase());
    }

    /* renamed from: p */
    public static boolean m3146p() {
        return m3165a(f31205i);
    }

    /* renamed from: q */
    public static boolean m3145q() {
        return m3165a(f31200d);
    }

    /* renamed from: r */
    public static boolean m3144r() {
        return m3165a(f31204h);
    }

    /* renamed from: s */
    public static boolean m3143s() {
        return C14017g4.m2830F() || C14017g4.m2832D();
    }

    /* renamed from: t */
    public static boolean m3142t() {
        return C14017g4.m2830F();
    }

    /* renamed from: u */
    public static boolean m3141u() {
        return C13640c.m3745d().m3746c("report_sim_num_countries").contains(C14017g4.m2810n().toUpperCase());
    }

    /* renamed from: v */
    public static boolean m3140v() {
        return C13640c.m3745d().m3746c("should_verify_phone_num_countries").contains(C14017g4.m2810n().toUpperCase());
    }
}
