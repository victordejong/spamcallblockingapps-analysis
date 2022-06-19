package p193e.p194a.p1066n;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.AfterRestoreBehaviorFlag;
import com.truecaller.backup.worker.BackupWorker;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import e.m.d.y.n;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import s1.z.c.l;
/* renamed from: e.a.n.k */
/* loaded from: classes5-dex2jar.jar:e/a/n/k.class */
public final class C18361k implements AbstractC18345j {

    /* renamed from: a */
    public final Context f51846a;

    /* renamed from: b */
    public final AbstractC14840m f51847b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC17348c> f51848c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC6233m>> f51849d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC6485m>> f51850e;

    /* renamed from: f */
    public final a<AbstractC26857y> f51851f;

    @Inject
    public C18361k(Context context, AbstractC14840m abstractC14840m, AbstractC19854f<AbstractC17348c> abstractC19854f, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC19854f<AbstractC6485m>> aVar2, a<AbstractC26857y> aVar3) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC19854f, "callHistoryManager");
        l.e(aVar, "messagesStorage");
        l.e(aVar2, "imGroupManager");
        l.e(aVar3, "workManager");
        this.f51846a = context;
        this.f51847b = abstractC14840m;
        this.f51848c = abstractC19854f;
        this.f51849d = aVar;
        this.f51850e = aVar2;
        this.f51851f = aVar3;
    }

    @Override // p193e.p194a.p1066n.AbstractC18345j
    /* renamed from: a */
    public void mo15134a(Set<? extends AfterRestoreBehaviorFlag> set) {
        this.f51848c.mo11854a().mo16223y();
        ((AbstractC6233m) ((AbstractC19854f) this.f51849d.get()).mo11854a()).mo31698b(false);
        ((AbstractC6485m) ((AbstractC19854f) this.f51850e.get()).mo11854a()).mo30896d(true, true);
        if (set != null) {
            for (AfterRestoreBehaviorFlag afterRestoreBehaviorFlag : set) {
                int ordinal = afterRestoreBehaviorFlag.ordinal();
                if (ordinal == 0) {
                    Object obj = this.f51851f.get();
                    l.d(obj, "workManager.get()");
                    C21782c.m9083c((AbstractC26857y) obj, "SendPresenceSettingWorkAction", this.f51846a, n.G0(15L), null, 8);
                } else if (ordinal == 1) {
                    this.f51847b.mo19565c(true);
                    Context context = this.f51846a;
                    l.e(context, AnalyticsConstants.CONTEXT);
                    C26702l m1431n = C26702l.m1431n(context);
                    l.d(m1431n, "WorkManager.getInstance(context)");
                    l.e(m1431n, "workManager");
                    EnumC26832h enumC26832h = EnumC26832h.REPLACE;
                    C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                    C26825d.C26826a c26826a = new C26825d.C26826a();
                    c26826a.f75068c = EnumC26841q.CONNECTED;
                    c26843a.f75127c.f74911j = new C26825d(c26826a);
                    m1431n.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
                } else if (ordinal == 2) {
                    Context applicationContext = this.f51846a.getApplicationContext();
                    Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
                    new C15565c.RunnableC15566a((AbstractApplicationC8442a) applicationContext).run();
                } else if (ordinal == 3) {
                    BackupWorker.f10190g.m35883d();
                }
            }
        }
    }
}
