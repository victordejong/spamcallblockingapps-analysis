package p193e.p194a.p195a.p244k.p245a;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.f */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f.class */
public final class C6545f extends AbstractC21765k {

    /* renamed from: b */
    public final String f21608b = "FetchImContactsWorkAction";

    /* renamed from: c */
    public final AbstractC6583l f21609c;

    @Inject
    public C6545f(AbstractC6583l abstractC6583l) {
        l.e(abstractC6583l, "imContactFetcher");
        this.f21609c = abstractC6583l;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f21609c.mo30734a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f21608b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f21609c.isEnabled();
    }
}
