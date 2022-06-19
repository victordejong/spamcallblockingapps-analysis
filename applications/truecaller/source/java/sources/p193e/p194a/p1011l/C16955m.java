package p193e.p194a.p1011l;

import android.os.Bundle;
import com.mopub.network.ImpressionData;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.personalisation.PersonalisationPromo;
import java.util.List;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.m */
/* loaded from: classes12-dex2jar.jar:e/a/l/m.class */
public final class C16955m implements AbstractC16965n0 {

    /* renamed from: a */
    public final String f47551a = "value";

    /* renamed from: b */
    public final String f47552b = ImpressionData.CURRENCY;

    /* renamed from: c */
    public final String f47553c = "p13n_choice";

    /* renamed from: d */
    public final String f47554d = "p13n_name";

    /* renamed from: e */
    public final String f47555e = "personalized_premium_promotion";

    /* renamed from: f */
    public final String f47556f = "choice";

    /* renamed from: g */
    public final AbstractC19494d f47557g;

    /* renamed from: h */
    public final AbstractC17197v0 f47558h;

    /* renamed from: i */
    public final AbstractC17229a f47559i;

    public C16955m(AbstractC19494d abstractC19494d, AbstractC17197v0 abstractC17197v0, AbstractC17229a abstractC17229a) {
        l.e(abstractC19494d, "fireBaseLogger");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC17229a, "firebasePersonalisationManager");
        this.f47557g = abstractC19494d;
        this.f47558h = abstractC17197v0;
        this.f47559i = abstractC17229a;
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        Bundle bundle = new Bundle();
        bundle.putString("premium", this.f47558h.mo16408H() ? "yes" : "no");
        m16733e("ANDROID_subscription_launched", c16956m0, bundle);
        PersonalisationPromo mo16358b = this.f47559i.mo16358b();
        if (mo16358b != null) {
            AbstractC19494d abstractC19494d = this.f47557g;
            String str = this.f47553c;
            Bundle bundle2 = new Bundle();
            bundle2.putString(this.f47554d, this.f47555e);
            bundle2.putString(this.f47556f, mo16358b.getRemoteConfigValue());
            abstractC19494d.mo13284a(str, bundle2);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        Bundle bundle = new Bundle();
        String str = c16956m0.f47561b;
        if (str != null) {
            bundle.putString("sku", str);
        }
        m16733e("ANDROID_subscription_item_clk", c16956m0, bundle);
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        l.e(c16993f, "subscription");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        String str;
        l.e(c16956m0, "params");
        Bundle bundle = new Bundle();
        bundle.putBoolean("HadPremiumBefore", c16956m0.f47564e);
        String str2 = c16956m0.f47561b;
        if (str2 != null) {
            bundle.putString("Sku", str2);
        }
        List<String> list = c16956m0.f47562c;
        if (list != null && (str = (String) i.D(list)) != null) {
            bundle.putString("OldSku", str);
        }
        C16993f c16993f = c16956m0.f47563d;
        if (c16993f != null) {
            bundle.putLong(this.f47551a, c16993f.f47666e);
            bundle.putString(this.f47552b, c16993f.f47665d);
        }
        m16733e("ANDROID_subscription_purchased", c16956m0, bundle);
    }

    /* renamed from: e */
    public final void m16733e(String str, C16956m0 c16956m0, Bundle bundle) {
        bundle.putString("source", c16956m0.f47560a.name());
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = c16956m0.f47566g;
        if (subscriptionPromoEventMetaData != null) {
            String str2 = subscriptionPromoEventMetaData.f14246b;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString("Campaign", str2);
        }
        String str3 = c16956m0.f47565f;
        if (str3 != null) {
            bundle.putString("SelectedPage", str3);
        }
        this.f47557g.mo13284a(str, bundle);
    }
}
