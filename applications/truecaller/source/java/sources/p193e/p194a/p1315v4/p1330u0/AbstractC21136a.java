package p193e.p194a.p1315v4.p1330u0;

import android.os.Bundle;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.v4.u0.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/a.class */
public abstract class AbstractC21136a extends AbstractC21144h implements AbstractC21143g, d {

    /* renamed from: i */
    public boolean f59285i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC21136a(Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC21040l abstractC21040l, C21154v c21154v) {
        super(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v);
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: e */
    public void mo10246e() {
        this.f59285i = false;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    public void onBackPressed() {
        if (!this.f59285i) {
            if (!this.f59312b) {
                mo10233x(0, 2);
            } else {
                this.f59313c.mo10214c(-1);
            }
            AbstractC21159b abstractC21159b = this.f59311a;
            if (abstractC21159b == null) {
                return;
            }
            abstractC21159b.mo10198V1();
        }
    }

    public void onFailure(b<Void> bVar, Throwable th) {
        l.e(bVar, "call");
        l.e(th, "t");
        this.f59313c.mo10214c(-1);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10198V1();
        }
    }

    public void onResponse(b<Void> bVar, a0<Void> a0Var) {
        l.e(bVar, "call");
        l.e(a0Var, "response");
        this.f59313c.mo10214c(-1);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10198V1();
        }
    }
}
