package p193e.p194a.p1310v2;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1310v2.AbstractC20968l;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.v2.q */
/* loaded from: classes5-dex2jar.jar:e/a/v2/q.class */
public final class C20982q extends AbstractC21765k {

    /* renamed from: e */
    public static final C20983a f58949e = new C20983a(null);

    /* renamed from: b */
    public final String f58950b = "AttestationWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f58951c;

    /* renamed from: d */
    public final a<AbstractC20954c> f58952d;

    /* renamed from: e.a.v2.q$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/q$a.class */
    public static final class C20983a {
        public C20983a(f fVar) {
        }
    }

    @Inject
    public C20982q(a<AbstractC8432l> aVar, a<AbstractC20954c> aVar2) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "attestationManager");
        this.f58951c = aVar;
        this.f58952d = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        AbstractC20968l mo10466a = ((AbstractC20954c) this.f58952d.get()).mo10466a();
        if (mo10466a instanceof AbstractC20968l.C20975b) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
        } else if (!(mo10466a instanceof AbstractC20968l.AbstractC20969a) || !((AbstractC20968l.AbstractC20969a) mo10466a).f58938a) {
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0417c, "Result.failure()");
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0417c, "Result.retry()");
        }
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f58950b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f58951c.get()).mo28580d() && ((AbstractC20954c) this.f58952d.get()).mo10465b();
    }
}
