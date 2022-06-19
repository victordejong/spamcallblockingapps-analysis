package p193e.p194a.p1146q2.p1147a1;

import android.os.Build;
import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.q2.a1.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/a1/a.class */
public final class C19464a extends AbstractC21765k {

    /* renamed from: b */
    public final String f54049b = "AppNotificationSettingsWorkAction";

    /* renamed from: c */
    public final AbstractC8432l f54050c;

    /* renamed from: d */
    public final AbstractC19465b f54051d;

    @Inject
    public C19464a(AbstractC8432l abstractC8432l, AbstractC19465b abstractC19465b) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19465b, "notificationsAnalyticsManager");
        this.f54050c = abstractC8432l;
        this.f54051d = abstractC19465b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f54051d.mo13305a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54049b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return Build.VERSION.SDK_INT >= 26 && this.f54050c.mo28580d();
    }
}
