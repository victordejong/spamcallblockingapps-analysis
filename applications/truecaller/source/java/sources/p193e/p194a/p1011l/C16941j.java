package p193e.p194a.p1011l;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.truecaller.premium.data.ProductKind;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1340w2.C21188a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.j */
/* loaded from: classes12-dex2jar.jar:e/a/l/j.class */
public final class C16941j implements AbstractC16965n0 {

    /* renamed from: a */
    public final C21188a f47537a;

    public C16941j(C21188a c21188a) {
        l.e(c21188a, "appsFlyerEventsTracker");
        this.f47537a = c21188a;
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
        l.e(c16956m0, "params");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        C21188a c21188a = this.f47537a;
        int i = (int) (c16993f.f47666e / 1000000);
        String str = c16993f.f47665d;
        String str2 = c16993f.f47662a;
        Objects.requireNonNull(c21188a);
        l.e(str2, "sku");
        c21188a.m10153a(AFInAppEventType.SUBSCRIBE, i.W(new k[]{new k(AFInAppEventParameterName.REVENUE, Integer.valueOf(i)), new k(AFInAppEventParameterName.CURRENCY, str), new k(AFInAppEventParameterName.CONTENT_ID, str2), new k("renewal", Boolean.TRUE)}));
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        C16993f c16993f = c16956m0.f47563d;
        if (c16993f != null) {
            if (c16993f.f47672k == ProductKind.CONSUMABLE_YEARLY) {
                C21188a c21188a = this.f47537a;
                int i = (int) (c16993f.f47666e / 1000000);
                String str = c16993f.f47665d;
                String str2 = c16993f.f47662a;
                String str3 = c16956m0.f47560a.toString();
                Objects.requireNonNull(c21188a);
                l.e(str2, "sku");
                l.e(str3, "source");
                c21188a.m10153a(AFInAppEventType.PURCHASE, i.W(new k[]{new k(AFInAppEventParameterName.REVENUE, Integer.valueOf(i)), new k(AFInAppEventParameterName.CURRENCY, str), new k("purchase_source", str3), new k("sku", str2), new k(AFInAppEventParameterName.CONTENT_ID, str2)}));
                return;
            }
            C21188a c21188a2 = this.f47537a;
            boolean z = c16956m0.f47564e;
            int i2 = (int) (c16993f.f47666e / 1000000);
            String str4 = c16993f.f47665d;
            String str5 = c16956m0.f47560a.toString();
            String str6 = c16993f.f47662a;
            List<String> list = c16956m0.f47562c;
            String str7 = list != null ? (String) i.D(list) : null;
            Objects.requireNonNull(c21188a2);
            l.e(str5, "source");
            l.e(str6, "sku");
            c21188a2.m10153a(AFInAppEventType.SUBSCRIBE, i.W(new k[]{new k("new_subscription", Boolean.valueOf(!z)), new k(AFInAppEventParameterName.REVENUE, Integer.valueOf(i2)), new k(AFInAppEventParameterName.CURRENCY, str4), new k("purchase_source", str5), new k("sku", str6), new k("old_sku", str7)}));
        }
    }
}
