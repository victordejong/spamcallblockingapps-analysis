package p459j.p460a.p582w0;

import android.content.Context;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.IapOpenAppConfig;
import gogolook.callgogolook2.gson.IapYearlyCampaign;
import gogolook.callgogolook2.gson.PromoInfo;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p568u.C13646d;
import p459j.p460a.p576w.p578o.C13795b;
import p459j.p460a.p576w.p578o.C13799f;
import p459j.p460a.p576w.p578o.C13803i;
import p459j.p460a.p576w.p578o.C13804j;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14296p;
import p459j.p460a.p613z0.DialogC14597a;
import p626l.p631e0.C14966w;
import p626l.p632u.C15026r;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.h2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/h2.class */
public final class C14021h2 {

    /* renamed from: a */
    public static final C14021h2 f31457a = new C14021h2();

    /* renamed from: a */
    public static final float m2792a(PlanProductRealmObject planProductRealmObject) {
        C15149k.m377b(planProductRealmObject, "monthlyObject");
        SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
        return skuDetails != null ? skuDetails.getRealPrice() : 0.0f;
    }

    /* renamed from: a */
    public static final String m2794a(Context context, int i) {
        String str;
        C15149k.m377b(context, "context");
        if (i == 50) {
            str = context.getString(R$string.premium_discout_50);
            C15149k.m383a((Object) str, "context.getString(R.string.premium_discout_50)");
        } else if (i == 70) {
            str = context.getString(R$string.premium_discout_70);
            C15149k.m383a((Object) str, "context.getString(R.string.premium_discout_70)");
        } else if (i == 85) {
            str = context.getString(R$string.premium_discout_85);
            C15149k.m383a((Object) str, "context.getString(R.string.premium_discout_85)");
        } else if (i != 100) {
            str = context.getString(R$string.premiumsubscribe_yearly_discount_default);
            C15149k.m383a((Object) str, "context.getString(R.stri…_yearly_discount_default)");
        } else {
            str = context.getString(R$string.premium_discout_100);
            C15149k.m383a((Object) str, "context.getString(R.string.premium_discout_100)");
        }
        return str;
    }

    /* renamed from: a */
    public static final String m2793a(Context context, int i, PromoInfo.ProductInfo productInfo, boolean z) {
        String str;
        C15149k.m377b(context, "context");
        if (i == 0) {
            str = context.getString(z ? R$string.premium_promo_page_newcomers_discount_full_price : R$string.open_app_promo_page_newcomers_discount_full_price);
        } else if (i != 1) {
            str = i != 4 ? null : context.getString(R$string.whoscall_premium_label);
        } else {
            str = productInfo != null ? productInfo.m28272c() : null;
            boolean z2 = true;
            if (str != null) {
                z2 = str.length() == 0;
            }
            if (z2) {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static final String m2790a(String str) {
        C15149k.m377b(str, "productId");
        String str2 = "iap_purchase_id_" + str;
        C15149k.m383a((Object) str2, "sb.toString()");
        return str2;
    }

    /* renamed from: b */
    public static final void m2787b(Context context) {
        C15149k.m377b(context, "context");
        DialogC14597a aVar = new DialogC14597a(context);
        aVar.setTitle(R$string.ad_free_iap_notice_title);
        DialogC14597a.m1043a(aVar, R$string.ad_free_iap_notice_content, false, null, 6, null);
        aVar.show();
    }

    /* renamed from: b */
    public static final void m2786b(String str) {
        C15149k.m377b(str, C13032a.f29462d);
        if (C13915b3.m3051c("iap_product_id", str)) {
            C13915b3.m3044e("iap_product_id", str);
            C14261f.m1965c(m2779g());
            C14296p.m1822a(m2779g());
        }
    }

    /* renamed from: c */
    public static final IapYearlyCampaign.Wording m2783c(List<IapYearlyCampaign.Wording> list) {
        boolean z;
        Object obj;
        IapYearlyCampaign.Wording wording;
        String n = C14017g4.m2810n();
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (C14966w.m715b(n, ((IapYearlyCampaign.Wording) obj).m28416a(), true)) {
                break;
            }
        }
        IapYearlyCampaign.Wording wording2 = (IapYearlyCampaign.Wording) obj;
        if (wording2 == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        List<String> b = wording2.m28415b();
        if (b != null) {
            if (b.size() != 2 || !C14196v3.m2252a(b.get(0), b.get(1), currentTimeMillis)) {
                z = false;
            }
            if (!z) {
                b = null;
            }
            if (b != null) {
                wording = wording2;
                return wording;
            }
        }
        wording = null;
        return wording;
    }

    /* renamed from: d */
    public static final int m2782d() {
        return m2779g() ? R$drawable.ic_crown_unselect : m2781e() ? R$drawable.ic_gift_promote : R$drawable.ic_gift_unselect;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b4 A[Catch: Exception -> 0x00da, n -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #2 {n -> 0x00e1, Exception -> 0x00da, blocks: (B:3:0x0002, B:5:0x0023, B:7:0x002c, B:9:0x0035, B:11:0x003e, B:13:0x004d, B:18:0x005d, B:20:0x0067, B:22:0x006e, B:24:0x007d, B:29:0x008d, B:31:0x0097, B:42:0x00b4), top: B:50:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m2781e() {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14021h2.m2781e():boolean");
    }

    /* renamed from: f */
    public static final boolean m2780f() {
        C13646d b = f31457a.m2788b();
        return b != null ? b.m3739b() : false;
    }

    /* renamed from: g */
    public static final boolean m2779g() {
        String b = C13915b3.m3056b("iap_product_id", "");
        C15149k.m383a((Object) b, "Prefs.getString(PREF_PREMIUM_PRODUCT, \"\")");
        return b.length() > 0;
    }

    /* renamed from: h */
    public static final void m2778h() {
        int a = C13915b3.m3066a("log_setting_type", -1);
        int a2 = C13915b3.m3066a("pref_offlinedb_iap_enabled_status", 0);
        if (1 == a && !C13915b3.m3067a("iap_product_id")) {
            m2786b("valid_product_id");
        }
        if (!C13915b3.m3067a(C14015g2.m2841b("ads"))) {
            C14015g2.m2844a("ads", a);
        }
        if (!C13915b3.m3067a(C14015g2.m2841b("offlinedb"))) {
            C14015g2.m2844a("offlinedb", a2);
        }
    }

    /* renamed from: i */
    public static final boolean m2777i() {
        try {
            IapOpenAppConfig iapOpenAppConfig = (IapOpenAppConfig) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("open_app_iap_promo"), (Class<Object>) IapOpenAppConfig.class);
            if (iapOpenAppConfig == null) {
                return false;
            }
            if (!iapOpenAppConfig.m28431a()) {
                iapOpenAppConfig = null;
            }
            if (iapOpenAppConfig == null) {
                return false;
            }
            boolean z = false;
            if (System.currentTimeMillis() - C14217x3.m2138h() > ((long) iapOpenAppConfig.m28430b()) * AdUtils.ONE_DAY) {
                z = false;
                if (System.currentTimeMillis() - C13915b3.m3065a("show_iap_open_app_promo_page_time", 0L) > iapOpenAppConfig.m28429c() * AdUtils.ONE_DAY) {
                    z = true;
                }
            }
            return z;
        } catch (C10108n e) {
            return false;
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
            return false;
        }
    }

    /* renamed from: j */
    public static final void m2776j() {
        C13915b3.m3055b("has_shown_intro_iap_promo", true);
    }

    /* renamed from: k */
    public static final boolean m2775k() {
        return !m2779g() && f31457a.m2784c();
    }

    /* renamed from: l */
    public static final boolean m2774l() {
        boolean z = false;
        if (!C13915b3.m3062a("has_shown_intro_iap_promo", false)) {
            z = false;
            if (C13640c.m3745d().m3753a("iap_onboarding_promo_page_enable")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    public static final boolean m2773m() {
        return !m2779g() && m2777i();
    }

    /* renamed from: n */
    public static final void m2772n() {
        C13915b3.m3061a("iap_product_id");
        C14015g2.m2846a();
    }

    /* renamed from: a */
    public final double m2796a(long j) {
        return j / 1000000.0d;
    }

    /* renamed from: a */
    public final List<String> m2795a(Context context) {
        C15149k.m377b(context, "context");
        ArrayList arrayList = new ArrayList();
        String string = context.getString(R$string.premium_feature_adfree);
        C15149k.m383a((Object) string, "context.getString(R.string.premium_feature_adfree)");
        arrayList.add(string);
        if (C14073m.m2623e()) {
            String string2 = context.getString(R$string.db_spam_hammer_iap_cta);
            C15149k.m383a((Object) string2, "context.getString(R.string.db_spam_hammer_iap_cta)");
            arrayList.add(string2);
        }
        if (C13891a.m3152j()) {
            String string3 = context.getString(R$string.premiumsubscribe_point_c_new_v2);
            C15149k.m383a((Object) string3, "context.getString(R.stri…subscribe_point_c_new_v2)");
            arrayList.add(string3);
            String string4 = context.getString(R$string.premiumsubscribe_point_b_v2);
            C15149k.m383a((Object) string4, "context.getString(R.stri…miumsubscribe_point_b_v2)");
            arrayList.add(string4);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m2797a() {
        if (C14063l4.m2659f()) {
            C14063l4.m2677a(false, (AbstractC6377c) null);
        }
        C11876e eVar = new C11876e();
        if (eVar.m8004b()) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            eVar.m8014a(o);
        }
    }

    /* renamed from: a */
    public final void m2789a(List<C13799f> list) {
        C15149k.m377b(list, "planList");
        ArrayList<C13799f> arrayList = new ArrayList();
        for (Object obj : list) {
            C13799f fVar = (C13799f) obj;
            boolean z = false;
            if (!fVar.m3424f().isEmpty()) {
                z = false;
                if (C15149k.m384a((Object) "googleplay", (Object) fVar.m3424f().get(0).m3420c())) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            m2772n();
            return;
        }
        m2786b(((C13799f) arrayList.get(0)).m3424f().get(0).m3416g());
        ArrayList arrayList2 = new ArrayList();
        for (C13799f fVar2 : arrayList) {
            C15026r.m552a(arrayList2, fVar2.m3428b());
        }
        C14015g2.m2843a(arrayList2);
    }

    /* renamed from: a */
    public final boolean m2791a(C13804j jVar, SubscriptionStatusRealmObject subscriptionStatusRealmObject) {
        C13803i b;
        Long b2;
        C15149k.m377b(jVar, "newStatus");
        C15149k.m377b(subscriptionStatusRealmObject, "oriStatusRealmObject");
        boolean z = true;
        if (jVar.m3400c() != 1 || jVar.m3400c() != subscriptionStatusRealmObject.getStatus() || (b = jVar.m3401b()) == null || (b2 = b.m3409b()) == null) {
            return false;
        }
        long longValue = b2.longValue();
        Long expiryTimeMillis = subscriptionStatusRealmObject.getExpiryTimeMillis();
        if (expiryTimeMillis == null) {
            return false;
        }
        if (longValue <= expiryTimeMillis.longValue()) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final C13646d m2788b() {
        C13646d dVar;
        try {
            dVar = (C13646d) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("iap_post_call_end_promo"), (Class<Object>) C13646d.class);
        } catch (C10108n e) {
            dVar = null;
        }
        return dVar;
    }

    /* renamed from: b */
    public final void m2785b(List<C13799f> list) {
        Object obj;
        Object obj2;
        C15149k.m377b(list, "planList");
        ArrayList<C13799f> arrayList = new ArrayList();
        for (Object obj3 : list) {
            C13799f fVar = (C13799f) obj3;
            boolean z = false;
            if (!fVar.m3424f().isEmpty()) {
                z = false;
                if (C15149k.m384a((Object) "gogolook", (Object) fVar.m3424f().get(0).m3420c())) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(obj3);
            }
        }
        if (arrayList.isEmpty()) {
            AdUtils.m28818a(0);
            C14063l4.m2660e(0);
            return;
        }
        int i = 0;
        int i2 = 0;
        for (C13799f fVar2 : arrayList) {
            Iterator<T> it = fVar2.m3428b().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (C15149k.m384a((Object) "ads", (Object) ((C13795b) obj).m3443a())) {
                    break;
                }
            }
            int i3 = i;
            if (((C13795b) obj) != null) {
                Integer k = fVar2.m3424f().get(0).m3412k();
                i3 = i;
                if (k != null) {
                    i3 = k.intValue();
                }
            }
            Iterator<T> it2 = fVar2.m3428b().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it2.next();
                if (C15149k.m384a((Object) "offlinedb", (Object) ((C13795b) obj2).m3443a())) {
                    break;
                }
            }
            i = i3;
            if (((C13795b) obj2) != null) {
                Integer k2 = fVar2.m3424f().get(0).m3412k();
                i = i3;
                if (k2 != null) {
                    i2 = k2.intValue();
                    i = i3;
                }
            }
        }
        AdUtils.m28818a(i);
        C14063l4.m2660e(i2);
    }

    /* renamed from: c */
    public final boolean m2784c() {
        C13646d b = m2788b();
        boolean z = false;
        if (b != null) {
            if (!b.m3740a()) {
                b = null;
            }
            z = false;
            if (b != null) {
                z = false;
                if (System.currentTimeMillis() - C14217x3.m2138h() > ((long) b.m3738c()) * AdUtils.ONE_DAY) {
                    z = false;
                    if (System.currentTimeMillis() - C13915b3.m3065a("show_iap_post_ced_promo_time", 0L) > b.m3737d() * AdUtils.ONE_DAY) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
