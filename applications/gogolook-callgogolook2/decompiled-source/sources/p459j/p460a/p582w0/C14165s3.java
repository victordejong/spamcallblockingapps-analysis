package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Arrays;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p576w.p578o.C13797d;
import p459j.p460a.p582w0.p587d5.C13976c;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.s3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/s3.class */
public final class C14165s3 {

    /* renamed from: a */
    public static final C14165s3 f31680a = new C14165s3();

    /* renamed from: a */
    public final int m2331a() {
        return C13976c.f31384a.m9461a("iap_subscription_status", (Integer) 0);
    }

    /* renamed from: a */
    public final C13797d m2328a(Context context, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "from");
        if (!C14021h2.m2779g()) {
            return null;
        }
        int a = m2331a();
        if (a != 2) {
            if (a == 3) {
                return m2326b(context, str);
            }
            if (a != 8) {
                return null;
            }
        }
        return m2325c(context, str);
    }

    /* renamed from: a */
    public final void m2330a(int i) {
        C13976c.f31384a.m9459a("iap_subscription_status", (String) Integer.valueOf(i));
    }

    /* renamed from: a */
    public final void m2329a(Context context) {
        C15149k.m377b(context, "context");
        String d = C13640c.m3745d().m3744d("iap_cancelled_survey_form");
        C15149k.m383a((Object) d, "id");
        C14217x3.m2156c(context, C14198w.m2237d(d));
    }

    /* renamed from: a */
    public final void m2327a(String str) {
        int hashCode = str.hashCode();
        if (hashCode != 1097519758) {
            if (hashCode == 1660846044 && str.equals("fix_payment")) {
                C13976c.f31384a.m9459a("iap_click_fix_payment_cta_time", (String) Long.valueOf(System.currentTimeMillis()));
            }
        } else if (str.equals("restore")) {
            C13976c.f31384a.m9459a("iap_click_restore_subscription_cta_time", (String) Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* renamed from: b */
    public final C13797d m2326b(Context context, String str) {
        if (System.currentTimeMillis() - C13976c.f31384a.m9460a("iap_click_fix_payment_cta_time", (Long) 0L) <= AdUtils.ONE_DAY) {
            return null;
        }
        int i = C15149k.m384a((Object) "call_log", (Object) str) ? R$drawable.ic_payerror_calllog_iap : R$drawable.ic_payerror_premium_iap;
        String string = context.getString(R$string.fix_payment_issue_title);
        C15149k.m383a((Object) string, "context.getString(R.stri….fix_payment_issue_title)");
        String string2 = context.getString(R$string.fix_payment_issue_content);
        C15149k.m383a((Object) string2, "context.getString(R.stri…ix_payment_issue_content)");
        String string3 = context.getString(R$string.fix_payment_issue_cta);
        C15149k.m383a((Object) string3, "context.getString(R.string.fix_payment_issue_cta)");
        return new C13797d("fix_payment", i, 2131099943, string, string2, string3, null, false);
    }

    /* renamed from: c */
    public final C13797d m2325c(Context context, String str) {
        long a = C13976c.f31384a.m9460a("iap_click_restore_subscription_cta_time", (Long) 0L);
        long a2 = C13976c.f31384a.m9460a("iap_click_restore_subscription_close_time", (Long) 0L);
        if (System.currentTimeMillis() - a <= AdUtils.ONE_DAY || System.currentTimeMillis() - a2 <= 604800000) {
            return null;
        }
        int i = C15149k.m384a((Object) "call_log", (Object) str) ? R$drawable.ic_restore_calllog_iap : R$drawable.ic_restore_premium_iap;
        String string = context.getString(R$string.restore_subscription_title);
        C15149k.m383a((Object) string, "context.getString(R.stri…store_subscription_title)");
        String string2 = context.getString(R$string.restore_subscription_content);
        C15149k.m383a((Object) string2, "context.getString(R.stri…ore_subscription_content)");
        String string3 = context.getString(R$string.restore_subscription_cta);
        C15149k.m383a((Object) string3, "context.getString(R.stri…restore_subscription_cta)");
        return new C13797d("restore", i, 2131099942, string, string2, string3, context.getString(R$string.restore_subscription_learn_more), true);
    }

    /* renamed from: d */
    public final void m2324d(Context context, String str) {
        String str2;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "noticeType");
        m2327a(str);
        String a = C13978e.f31386a.m9458a("iap_product_id", "");
        Intent intent = new Intent("android.intent.action.VIEW");
        if ((a == null || a.length() == 0) || C15149k.m384a((Object) "valid_product_id", (Object) a)) {
            str2 = "https://play.google.com/store/account/subscriptions";
        } else {
            C15136c0 c0Var = C15136c0.f33133a;
            Object[] objArr = {a, context.getPackageName()};
            str2 = String.format("https://play.google.com/store/account/subscriptions?sku=%s&package=%s", Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) str2, "java.lang.String.format(format, *args)");
        }
        intent.setData(Uri.parse(str2));
        C14217x3.m2156c(context, intent);
    }
}
