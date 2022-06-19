package p193e.p1512i.p1516b.p1530s1;

import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1528q2.C23033o;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import p193e.p1512i.p1516b.p1533u2.C23131w;
/* renamed from: e.i.b.s1.c */
/* loaded from: classes-dex2jar.jar:e/i/b/s1/c.class */
public class C23070c implements AbstractC23068a {

    /* renamed from: a */
    public final C23021h f63884a = C23023i.m7583a(C23070c.class);

    /* renamed from: b */
    public final C23033o f63885b;

    public C23070c(C23033o c23033o) {
        this.f63885b = c23033o;
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: a */
    public void mo7387a() {
        this.f63884a.m7584c("onSdkInitialized", new Object[0]);
        this.f63885b.m7578a();
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: a */
    public void mo7386a(C23131w c23131w) {
        this.f63884a.m7584c("onBidCached: %s", c23131w);
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: b */
    public void mo7385b(C23126p c23126p, C23131w c23131w) {
        this.f63884a.m7584c("onBidConsumed: %s", c23131w);
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: c */
    public void mo7384c(AbstractC23127q abstractC23127q, Exception exc) {
        this.f63884a.m7586a(new C23019f(3, "onCdbCallFailed", exc, null));
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: d */
    public void mo7383d(AbstractC23127q abstractC23127q, C23130t c23130t) {
        this.f63884a.m7584c("onCdbCallFinished: %s", c23130t);
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: e */
    public void mo7382e(AbstractC23127q abstractC23127q) {
        this.f63884a.m7584c("onCdbCallStarted: %s", abstractC23127q);
    }
}
