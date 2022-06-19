package p193e.p1512i.p1516b;

import com.criteo.publisher.Bid;
import com.criteo.publisher.BidResponseListener;
import com.criteo.publisher.model.AdUnit;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
import s1.z.c.l;
/* renamed from: e.i.b.f2 */
/* loaded from: classes-dex2jar.jar:e/i/b/f2.class */
public class C22944f2 implements AbstractC23156x1 {

    /* renamed from: a */
    public final /* synthetic */ AdUnit f63635a;

    /* renamed from: b */
    public final /* synthetic */ BidResponseListener f63636b;

    /* renamed from: c */
    public final /* synthetic */ C22955h2 f63637c;

    public C22944f2(C22955h2 c22955h2, AdUnit adUnit, BidResponseListener bidResponseListener) {
        this.f63637c = c22955h2;
        this.f63635a = adUnit;
        this.f63636b = bidResponseListener;
    }

    @Override // p193e.p1512i.p1516b.AbstractC23156x1
    /* renamed from: a */
    public void mo7463a() {
        m7617b(null);
    }

    @Override // p193e.p1512i.p1516b.AbstractC23156x1
    /* renamed from: a */
    public void mo7462a(C23131w c23131w) {
        m7617b(new Bid(this.f63635a.getAdUnitType(), this.f63637c.f63650c, c23131w));
    }

    /* renamed from: b */
    public final void m7617b(final Bid bid) {
        C23021h c23021h = this.f63637c.f63648a;
        AdUnit adUnit = this.f63635a;
        l.f(adUnit, "adUnit");
        StringBuilder sb = new StringBuilder();
        sb.append("Getting bid response for ");
        sb.append(adUnit);
        sb.append(". Bid: ");
        sb.append(bid != null ? C26232y.m2359f(bid) : null);
        sb.append(", price: ");
        Double d = null;
        if (bid != null) {
            d = Double.valueOf(bid.getPrice());
        }
        sb.append(d);
        c23021h.m7586a(new C23019f(0, sb.toString(), null, null, 13));
        ExecutorC23149c executorC23149c = this.f63637c.f63651d;
        final BidResponseListener bidResponseListener = this.f63636b;
        executorC23149c.f64119a.post(new Runnable() { // from class: e.i.b.k
            @Override // java.lang.Runnable
            public final void run() {
                BidResponseListener.this.onResponse(bid);
            }
        });
    }
}
