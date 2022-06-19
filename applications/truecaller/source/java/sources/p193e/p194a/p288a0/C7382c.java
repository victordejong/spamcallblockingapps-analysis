package p193e.p194a.p288a0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.a0.c */
/* loaded from: classes12-dex2jar.jar:e/a/a0/c.class */
public final class C7382c extends AbstractC21765k {

    /* renamed from: b */
    public final AbstractC8432l f23513b;

    /* renamed from: c */
    public final AbstractC7390i f23514c;

    @Inject
    public C7382c(AbstractC8432l abstractC8432l, AbstractC7390i abstractC7390i) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC7390i, "spamCategoriesRepository");
        this.f23513b = abstractC8432l;
        this.f23514c = abstractC7390i;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c = this.f23514c.mo29695e() ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0416b();
        l.d(c0417c, "if (spamCategoriesReposi… Result.retry()\n        }");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return "SpamCategoriesFetchWorkAction";
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f23513b.mo28580d();
    }
}
