package p193e.p194a.p1070n2.p1073c.p1074b;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p786g0.AbstractC14366h;
import s1.z.c.l;
/* renamed from: e.a.n2.c.b.a */
/* loaded from: classes4-dex2jar.jar:e/a/n2/c/b/a.class */
public final class C18476a extends AbstractC21765k {

    /* renamed from: b */
    public final String f52160b = "AccountSuspendedNotificationWorkAction";

    /* renamed from: c */
    public final C18477b f52161c;

    @Inject
    public C18476a(C18477b c18477b) {
        l.e(c18477b, "accountSuspensionNotificationHelper");
        this.f52161c = c18477b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f52161c.m14880a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f52160b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC14366h) this.f52161c.f52163b.get()).mo20164c();
    }
}
