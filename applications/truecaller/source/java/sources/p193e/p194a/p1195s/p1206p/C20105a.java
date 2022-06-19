package p193e.p194a.p1195s.p1206p;

import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1392y2.AbstractC21765k;
import s1.z.c.l;
/* renamed from: e.a.s.p.a */
/* loaded from: classes6-dex2jar.jar:e/a/s/p/a.class */
public final class C20105a extends AbstractC21765k {

    /* renamed from: b */
    public final String f56716b = "CallAssistantNumberSyncWorkAction";

    /* renamed from: c */
    public final Provider<AbstractC20106b> f56717c;

    @Inject
    public C20105a(Provider<AbstractC20106b> provider) {
        l.e(provider, "numberSyncer");
        this.f56717c = provider;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.work.ListenableWorker.AbstractC0414a mo9063a() {
        /*
            r3 = this;
            r0 = r3
            javax.inject.Provider<e.a.s.p.b> r0 = r0.f56717c
            java.lang.Object r0 = r0.get()
            e.a.s.p.b r0 = (p193e.p194a.p1195s.p1206p.AbstractC20106b) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
            r0 = r4
            androidx.work.ListenableWorker$a r0 = r0.execute()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
            goto L2d
        L1f:
            androidx.work.ListenableWorker$a$c r0 = new androidx.work.ListenableWorker$a$c
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Result.success()"
            s1.z.c.l.d(r0, r1)
        L2d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1195s.p1206p.C20105a.mo9063a():androidx.work.ListenableWorker$a");
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f56716b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        AbstractC20106b abstractC20106b = (AbstractC20106b) this.f56717c.get();
        return abstractC20106b != null ? abstractC20106b.mo11532a() : false;
    }
}
