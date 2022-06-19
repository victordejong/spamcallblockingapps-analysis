package p193e.p194a.p1011l;

import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import s1.z.c.l;
/* renamed from: e.a.l.m0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/m0.class */
public final class C16956m0 {

    /* renamed from: a */
    public final PremiumLaunchContext f47560a;

    /* renamed from: b */
    public final String f47561b;

    /* renamed from: c */
    public final List<String> f47562c;

    /* renamed from: d */
    public final C16993f f47563d;

    /* renamed from: e */
    public final boolean f47564e;

    /* renamed from: f */
    public final String f47565f;

    /* renamed from: g */
    public final SubscriptionPromoEventMetaData f47566g;

    /* renamed from: h */
    public final C16993f f47567h;

    /* renamed from: i */
    public final String f47568i;

    public C16956m0(PremiumLaunchContext premiumLaunchContext, String str, List<String> list, C16993f c16993f, boolean z, String str2, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, C16993f c16993f2, String str3) {
        l.e(premiumLaunchContext, "launchContext");
        this.f47560a = premiumLaunchContext;
        this.f47561b = str;
        this.f47562c = list;
        this.f47563d = c16993f;
        this.f47564e = z;
        this.f47565f = str2;
        this.f47566g = subscriptionPromoEventMetaData;
        this.f47567h = c16993f2;
        this.f47568i = str3;
    }

    public /* synthetic */ C16956m0(PremiumLaunchContext premiumLaunchContext, String str, List list, C16993f c16993f, boolean z, String str2, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, C16993f c16993f2, String str3, int i) {
        this(premiumLaunchContext, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : c16993f, (i & 16) != 0 ? false : z, null, null, null, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16956m0)) {
                return false;
            }
            C16956m0 c16956m0 = (C16956m0) obj;
            return l.a(this.f47560a, c16956m0.f47560a) && l.a(this.f47561b, c16956m0.f47561b) && l.a(this.f47562c, c16956m0.f47562c) && l.a(this.f47563d, c16956m0.f47563d) && this.f47564e == c16956m0.f47564e && l.a(this.f47565f, c16956m0.f47565f) && l.a(this.f47566g, c16956m0.f47566g) && l.a(this.f47567h, c16956m0.f47567h) && l.a(this.f47568i, c16956m0.f47568i);
        }
        return true;
    }

    public int hashCode() {
        PremiumLaunchContext premiumLaunchContext = this.f47560a;
        int i = 0;
        int hashCode = premiumLaunchContext != null ? premiumLaunchContext.hashCode() : 0;
        String str = this.f47561b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<String> list = this.f47562c;
        int hashCode3 = list != null ? list.hashCode() : 0;
        C16993f c16993f = this.f47563d;
        int hashCode4 = c16993f != null ? c16993f.hashCode() : 0;
        boolean z = this.f47564e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        String str2 = this.f47565f;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = this.f47566g;
        int hashCode6 = subscriptionPromoEventMetaData != null ? subscriptionPromoEventMetaData.hashCode() : 0;
        C16993f c16993f2 = this.f47567h;
        int hashCode7 = c16993f2 != null ? c16993f2.hashCode() : 0;
        String str3 = this.f47568i;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumEventParams(launchContext=");
        m8728C.append(this.f47560a);
        m8728C.append(", sku=");
        m8728C.append(this.f47561b);
        m8728C.append(", oldSkus=");
        m8728C.append(this.f47562c);
        m8728C.append(", subscription=");
        m8728C.append(this.f47563d);
        m8728C.append(", hadPremiumBefore=");
        m8728C.append(this.f47564e);
        m8728C.append(", selectedPage=");
        m8728C.append(this.f47565f);
        m8728C.append(", subscriptionPromoEventMetaData=");
        m8728C.append(this.f47566g);
        m8728C.append(", yearlyWelcomeSubscription=");
        m8728C.append(this.f47567h);
        m8728C.append(", purchaseButtonSource=");
        return C22128a.m8618h(m8728C, this.f47568i, ")");
    }
}
