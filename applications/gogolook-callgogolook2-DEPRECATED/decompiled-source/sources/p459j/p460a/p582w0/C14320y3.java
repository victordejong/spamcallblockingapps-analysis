package p459j.p460a.p582w0;

import androidx.annotation.StringRes;
import gogolook.callgogolook2.R$string;
/* renamed from: j.a.w0.y3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/y3.class */
public class C14320y3 {
    @StringRes
    /* renamed from: a */
    public static int m1595a() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.default_app_tutorial_block_failed_desc_testing1;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.default_app_tutorial_block_failed_desc_testing1 : R$string.default_phone_wording_testing_block_fail_dialog_content_group2 : R$string.default_phone_wording_testing_block_fail_dialog_content_group1;
    }

    @StringRes
    /* renamed from: b */
    public static int m1594b() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.default_app_tutorial_block_failed_title_testing1;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.default_app_tutorial_block_failed_title_testing1 : R$string.default_phone_wording_testing_block_fail_dialog_title_group2 : R$string.default_phone_wording_testing_block_fail_dialog_title_group1;
    }

    @StringRes
    /* renamed from: c */
    public static int m1593c() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.rcb_block_page_phone_default_app_tutorial_desc;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.rcb_block_page_phone_default_app_tutorial_desc : R$string.default_phone_wording_testing_block_page_dialog_content_group2 : R$string.default_phone_wording_testing_block_page_dialog_content_group1;
    }

    @StringRes
    /* renamed from: d */
    public static int m1592d() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.rcb_block_page_phone_default_app_tutorial_title;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.rcb_block_page_phone_default_app_tutorial_title : R$string.default_phone_wording_testing_block_page_dialog_title_group2 : R$string.default_phone_wording_testing_block_page_dialog_title_group1;
    }

    /* renamed from: e */
    public static int m1591e() {
        return C14017g4.m2831E() ? C14031j.m2744a("default_phone_test_wording_kr") : C14017g4.m2835A() ? C14031j.m2744a("default_phone_test_wording_br") : C14017g4.m2829G() ? C14031j.m2744a("default_phone_test_wording_th") : 0;
    }

    /* renamed from: f */
    public static int m1590f() {
        return C14031j.m2744a("SMS_dialog");
    }

    @StringRes
    /* renamed from: g */
    public static int m1589g() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.update_set_default_phone_app;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.update_set_default_phone_app : R$string.default_phone_wording_testing_offline_db_content_group2 : R$string.default_phone_wording_testing_offline_db_content_group1;
    }

    @StringRes
    /* renamed from: h */
    public static int m1588h() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.offline_db_set_default;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.offline_db_set_default : R$string.default_phone_wording_testing_offline_db_title_group2 : R$string.default_phone_wording_testing_offline_db_title_group1;
    }

    @StringRes
    /* renamed from: i */
    public static int m1587i() {
        if (!C14017g4.m2831E() && !C14017g4.m2835A() && !C14017g4.m2829G()) {
            return R$string.caller_id_v2_ced_tutorial;
        }
        int e = m1591e();
        return e != 1 ? e != 2 ? R$string.caller_id_v2_ced_tutorial : R$string.default_phone_wording_testing_search_slow_dialog_group2 : R$string.default_phone_wording_testing_search_slow_dialog_group1;
    }

    /* renamed from: j */
    public static boolean m1586j() {
        boolean z = true;
        if (C14031j.m2744a("personal_db_testing") != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m1585k() {
        boolean z = true;
        if (C14031j.m2744a("onboarding_DDD_setting") != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public static boolean m1584l() {
        boolean z = true;
        if (C14031j.m2744a("onboarding_powersaver") != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public static boolean m1583m() {
        return System.currentTimeMillis() - C14217x3.m2138h() < 259200000;
    }
}
