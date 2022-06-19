package p193e.p194a.p1113o4;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.o4.i */
/* loaded from: classes12-dex2jar.jar:e/a/o4/i.class */
public final class C18928i extends AbstractC21765k {

    /* renamed from: b */
    public final String f53069b = "PushIdRegistrationWorkAction";

    /* renamed from: c */
    public final AbstractC18923e f53070c;

    @Inject
    public C18928i(AbstractC18923e abstractC18923e) {
        l.e(abstractC18923e, "pushIdManager");
        this.f53070c = abstractC18923e;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        boolean mo14322a = this.f53070c.mo14322a(null);
        if (mo14322a) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
        } else if (mo14322a) {
            throw new i();
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0417c, "Result.failure()");
        }
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f53069b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f53070c.mo14321b();
    }
}
