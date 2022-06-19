package com.truecaller.presence;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26827e;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1049l4.C17430s;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/truecaller/presence/RingerModeListenerWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/r2/f;", "Le/a/l4/h;", "a", "Le/a/r2/f;", "getPresenceManager", "()Le/a/r2/f;", "setPresenceManager", "(Le/a/r2/f;)V", "presenceManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/presence/RingerModeListenerWorker.class */
public final class RingerModeListenerWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC19854f<AbstractC17419h> f14393a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RingerModeListenerWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParameters");
    }

    /* renamed from: n */
    public static final void m34794n(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        c26826a.f75071f = timeUnit.toMillis(1000L);
        c26826a.f75070e = timeUnit.toMillis(3000L);
        Uri uriFor = Settings.Global.getUriFor("mode_ringer");
        C26827e c26827e = c26826a.f75072g;
        c26827e.f75073a.add(new C26827e.C26828a(uriFor, false));
        C26825d c26825d = new C26825d(c26826a);
        l.d(c26825d, "Constraints.Builder()\n  …\n                .build()");
        C26842r.C26843a c26843a = new C26842r.C26843a(RingerModeListenerWorker.class);
        c26843a.f75127c.f74911j = c26825d;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26842r c26842r = m1272b;
        m1431n.mo1276l(c26842r.f75122a).m42866g(new C17430s(context));
        m1431n.m1279i("com.truecaller.presence.RingerModeListenerWorker", EnumC26832h.REPLACE, c26842r);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        AbstractC16444k2.f46188a.m17389a().mo11401A(this);
        AbstractC19854f<AbstractC17419h> abstractC19854f = this.f14393a;
        if (abstractC19854f == null) {
            l.l("presenceManager");
            throw null;
        }
        abstractC19854f.mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, false);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }
}
