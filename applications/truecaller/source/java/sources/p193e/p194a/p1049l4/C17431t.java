package p193e.p194a.p1049l4;

import androidx.work.ListenableWorker;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.l4.t */
/* loaded from: classes12-dex2jar.jar:e/a/l4/t.class */
public final class C17431t extends AbstractC21765k {

    /* renamed from: b */
    public final String f48809b = "SendPresenceSettingWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f48810c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC17419h>> f48811d;

    @Inject
    public C17431t(a<AbstractC8432l> aVar, a<AbstractC19854f<AbstractC17419h>> aVar2) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "presenceManager");
        this.f48810c = aVar;
        this.f48811d = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        try {
            if (l.a(((AbstractC17419h) ((AbstractC19854f) this.f48811d.get()).mo11854a()).mo16131a().mo11831c(), Boolean.TRUE)) {
                ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c, "Result.success()");
                return c0417c;
            }
        } catch (InterruptedException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
        l.d(c0416b, "Result.retry()");
        return c0416b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f48809b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f48810c.get()).mo28580d();
    }
}
