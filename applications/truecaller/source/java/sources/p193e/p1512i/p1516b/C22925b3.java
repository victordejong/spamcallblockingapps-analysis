package p193e.p1512i.p1516b;

import com.criteo.publisher.annotation.Internal;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import s1.z.c.l;
@Internal
/* renamed from: e.i.b.b3 */
/* loaded from: classes-dex2jar.jar:e/i/b/b3.class */
public class C22925b3 extends AbstractC22928c2 {

    /* renamed from: d */
    public AbstractC23156x1 f63598d;

    /* renamed from: e */
    public final C23161y1 f63599e;

    /* renamed from: f */
    public final C23126p f63600f;

    /* renamed from: g */
    public final AbstractC23068a f63601g;

    /* renamed from: h */
    public final AtomicBoolean f63602h = new AtomicBoolean(false);

    public C22925b3(AbstractC23156x1 abstractC23156x1, AbstractC23068a abstractC23068a, C23161y1 c23161y1, C23126p c23126p, C22977a c22977a) {
        super(abstractC23068a, c23161y1, c22977a);
        this.f63598d = abstractC23156x1;
        this.f63601g = abstractC23068a;
        this.f63599e = c23161y1;
        this.f63600f = c23126p;
    }

    @Override // p193e.p1512i.p1516b.AbstractC22928c2
    /* renamed from: a */
    public void mo7428a(AbstractC23127q abstractC23127q, C23130t c23130t) {
        super.mo7428a(abstractC23127q, c23130t);
        if (c23130t.f64063a.size() > 1) {
            C23089l.m7560a(new IllegalStateException("During a live request, only one bid will be fetched at a time."));
        }
        if (!this.f63602h.compareAndSet(false, true)) {
            this.f63599e.m7432f(c23130t.f64063a);
            return;
        }
        if (c23130t.f64063a.size() == 1) {
            C23131w c23131w = c23130t.f64063a.get(0);
            if (this.f63599e.m7429i(c23131w)) {
                this.f63599e.m7432f(Collections.singletonList(c23131w));
                this.f63598d.mo7463a();
            } else if (c23131w.m7471n()) {
                this.f63598d.mo7462a(c23131w);
                this.f63601g.mo7385b(this.f63600f, c23131w);
            } else {
                this.f63598d.mo7463a();
            }
        } else {
            this.f63598d.mo7463a();
        }
        this.f63598d = null;
    }

    @Override // p193e.p1512i.p1516b.AbstractC22928c2
    /* renamed from: b */
    public void mo7621b(AbstractC23127q abstractC23127q, Exception exc) {
        l.f(abstractC23127q, "cdbRequest");
        l.f(exc, "exception");
        this.f63605a.mo7384c(abstractC23127q, exc);
        m7622c();
    }

    /* renamed from: c */
    public void m7622c() {
        if (this.f63602h.compareAndSet(false, true)) {
            C23161y1 c23161y1 = this.f63599e;
            C23126p c23126p = this.f63600f;
            AbstractC23156x1 abstractC23156x1 = this.f63598d;
            C23131w m7436b = c23161y1.m7436b(c23126p);
            if (m7436b != null) {
                abstractC23156x1.mo7462a(m7436b);
            } else {
                abstractC23156x1.mo7463a();
            }
            this.f63598d = null;
        }
    }
}
