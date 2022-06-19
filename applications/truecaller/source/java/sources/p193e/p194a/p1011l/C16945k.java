package p193e.p194a.p1011l;

import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1011l.p1023n2.C16993f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.k */
/* loaded from: classes12-dex2jar.jar:e/a/l/k.class */
public final class C16945k implements AbstractC16965n0 {

    /* renamed from: a */
    public final String f47540a = "PremiumPurchased";

    /* renamed from: b */
    public final String f47541b = "PremiumInitiatedCheckout";

    /* renamed from: c */
    public final CleverTapManager f47542c;

    public C16945k(CleverTapManager cleverTapManager) {
        l.e(cleverTapManager, "cleverTapManager");
        this.f47542c = cleverTapManager;
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        l.e(c16956m0, "params");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        this.f47542c.push(this.f47541b, m16740e(c16956m0));
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
        l.e(c16956m0, "params");
        this.f47542c.push(this.f47540a, m16740e(c16956m0));
    }

    /* renamed from: e */
    public final Map<String, Object> m16740e(C16956m0 c16956m0) {
        String str;
        String str2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str3 = c16956m0.f47561b;
        if (str3 != null) {
            linkedHashMap.put("sku", str3);
        }
        List<String> list = c16956m0.f47562c;
        if (list != null && (str2 = (String) i.D(list)) != null) {
            linkedHashMap.put("oldSku", str2);
        }
        linkedHashMap.put("source", c16956m0.f47560a.name());
        C16993f c16993f = c16956m0.f47563d;
        if (c16993f != null) {
            linkedHashMap.put("ProductKind", c16993f.f47672k.name());
        }
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = c16956m0.f47566g;
        if (subscriptionPromoEventMetaData != null && (str = subscriptionPromoEventMetaData.f14246b) != null) {
            linkedHashMap.put("campaign", str);
        }
        linkedHashMap.put("HadPremiumBefore", Boolean.valueOf(c16956m0.f47564e));
        return linkedHashMap;
    }
}
