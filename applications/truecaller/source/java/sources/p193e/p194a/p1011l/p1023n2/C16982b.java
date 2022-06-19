package p193e.p194a.p1011l.p1023n2;

import p193e.p1432d.p1433a.p1434a.AbstractC22076i;
import p193e.p1432d.p1433a.p1434a.C22080k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.n;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.billing.GooglePlayBilling$connect$2", f = "GooglePlayBilling.kt", l = {359}, m = "invokeSuspend")
/* renamed from: e.a.l.n2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/b.class */
public final class C16982b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f47644e;

    /* renamed from: f */
    public int f47645f;

    /* renamed from: g */
    public final /* synthetic */ C16967a f47646g;

    /* renamed from: e.a.l.n2.b$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/b$a.class */
    public static final class C16983a implements AbstractC22076i {

        /* renamed from: a */
        public final /* synthetic */ n f47647a;

        /* renamed from: b */
        public final /* synthetic */ C16982b f47648b;

        public C16983a(n nVar, C16982b c16982b) {
            this.f47647a = nVar;
            this.f47648b = c16982b;
        }

        @Override // p193e.p1432d.p1433a.p1434a.AbstractC22076i
        public void onBillingServiceDisconnected() {
            C10480a.m26045M1("GooglePlayBilling onBillingServiceDisconnected() called");
            this.f47648b.f47646g.f47598a = null;
            if (this.f47647a.b()) {
                this.f47647a.c(s.a);
            }
        }

        @Override // p193e.p1432d.p1433a.p1434a.AbstractC22076i
        public void onBillingSetupFinished(C22080k c22080k) {
            l.e(c22080k, "billingResult");
            C16967a.m16720p(this.f47648b.f47646g, c22080k);
            if (this.f47647a.b()) {
                this.f47647a.c(s.a);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16982b(C16967a c16967a, d dVar) {
        super(2, dVar);
        this.f47646g = c16967a;
    }

    /* renamed from: i */
    public final d<s> m16680i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16982b(this.f47646g, dVar);
    }

    /* renamed from: k */
    public final Object m16679k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16982b(this.f47646g, dVar).m16678s(s.a);
    }

    /* renamed from: s */
    public final Object m16678s(Object obj) {
        a aVar = a.a;
        int i = this.f47645f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f47644e = this;
            this.f47645f = 1;
            o oVar = new o(C25225a.m3844s1(this), 1);
            oVar.z();
            C16967a.m16722n(this.f47646g).mo8812j(new C16983a(oVar, this));
            Object y = oVar.y();
            if (y == aVar) {
                l.e(this, "frame");
            }
            if (y == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C16982b c16982b = (C16982b) this.f47644e;
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
