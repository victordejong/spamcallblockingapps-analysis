package p193e.p194a.p1349x;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ghost_call.GhostCallBroadcastReceiver;
import com.truecaller.ghost_call.GhostCallService;
import com.truecaller.ghost_call.GhostCallState;
import com.truecaller.ghost_call.ScheduleDuration;
import com.truecaller.premium.data.feature.PremiumFeature;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17052b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1272u3.C20592g;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.x.m */
/* loaded from: classes9-dex2jar.jar:e/a/x/m.class */
public final class C21374m implements AbstractC21373l {

    /* renamed from: a */
    public final AlarmManager f59823a;

    /* renamed from: b */
    public final a1<GhostCallState> f59824b;

    /* renamed from: c */
    public final i1<GhostCallState> f59825c;

    /* renamed from: d */
    public final PendingIntent f59826d;

    /* renamed from: e */
    public final C20592g f59827e;

    /* renamed from: f */
    public final AbstractC17052b f59828f;

    /* renamed from: g */
    public final AbstractC21385w f59829g;

    /* renamed from: h */
    public final Context f59830h;

    /* renamed from: i */
    public final AbstractC19219a0 f59831i;

    @Inject
    public C21374m(C20592g c20592g, AbstractC17052b abstractC17052b, AbstractC21385w abstractC21385w, Context context, AbstractC19219a0 abstractC19219a0) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17052b, "premiumFeatureManager");
        l.e(abstractC21385w, "ghostCallSettings");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19219a0, "permissionUtil");
        this.f59827e = c20592g;
        this.f59828f = abstractC17052b;
        this.f59829g = abstractC21385w;
        this.f59830h = context;
        this.f59831i = abstractC19219a0;
        Object systemService = context.getSystemService("alarm");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        this.f59823a = (AlarmManager) systemService;
        a1<GhostCallState> a = k1.a(GhostCallState.ENDED);
        this.f59824b = a;
        this.f59825c = a;
        this.f59826d = PendingIntent.getBroadcast(context, 1001, new Intent(context, GhostCallBroadcastReceiver.class), 201326592);
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: A */
    public void mo9835A() {
        this.f59829g.mo9798S2(0L);
        this.f59823a.cancel(this.f59826d);
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: B */
    public void mo9834B(C21345i c21345i) {
        l.e(c21345i, "ghostCallConfig");
        AbstractC21385w abstractC21385w = this.f59829g;
        abstractC21385w.setPhoneNumber(c21345i.f59758a);
        abstractC21385w.setProfileName(c21345i.f59759b);
        abstractC21385w.mo9796Y(c21345i.f59760c);
        abstractC21385w.mo9788h0(c21345i.f59761d.ordinal());
        abstractC21385w.mo9798S2(c21345i.f59762e);
        if (!this.f59829g.mo9801D1()) {
            this.f59829g.mo9800I(true);
        }
        if (c21345i.f59761d == ScheduleDuration.IMMEDIATE) {
            mo9833C();
        } else if (!this.f59831i.mo13827f()) {
        } else {
            b C = new b().C(TimeUnit.MILLISECONDS.convert(c21345i.f59761d.getDelay(), c21345i.f59761d.getTimeUnit()));
            AlarmManager alarmManager = this.f59823a;
            l.d(C, "launchTime");
            long j = ((e) C).a;
            PendingIntent pendingIntent = this.f59826d;
            alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(j, pendingIntent), pendingIntent);
        }
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: C */
    public void mo9833C() {
        if (!mo9832b()) {
            return;
        }
        this.f59824b.setValue(GhostCallState.RINGING);
        if (GhostCallService.m35316b()) {
            Context context = this.f59830h;
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent action = GhostCallService.m35317a(context).setAction("com.truecaller.ACTION_START_CALL");
            l.d(action, "createServiceIntent(cont…(ACTION_GHOST_START_CALL)");
            context.startForegroundService(action);
            return;
        }
        Context context2 = this.f59830h;
        l.e(context2, AnalyticsConstants.CONTEXT);
        Intent action2 = GhostCallService.m35317a(context2).setAction("com.truecaller.ACTION_START_CALL");
        l.d(action2, "createServiceIntent(cont…(ACTION_GHOST_START_CALL)");
        context2.startService(action2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if ((android.os.Build.VERSION.SDK_INT >= 24) != false) goto L11;
     */
    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9832b() {
        /*
            r5 = this;
            r0 = r5
            e.a.u3.g r0 = r0.f59827e
            r6 = r0
            r0 = r6
            e.a.u3.g$a r0 = r0.f57766K
            r1 = r6
            s1.a.l[] r2 = p193e.p194a.p1272u3.C20592g.f57695p6
            r3 = 33
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L38
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto L2d
            r0 = 1
            r9 = r0
            goto L30
        L2d:
            r0 = 0
            r9 = r0
        L30:
            r0 = r9
            if (r0 == 0) goto L38
            goto L3a
        L38:
            r0 = 0
            r8 = r0
        L3a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1349x.C21374m.mo9832b():boolean");
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: c */
    public boolean mo9831c() {
        return this.f59828f.mo16600a(PremiumFeature.GHOST_CALL, true);
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: v */
    public void mo9830v() {
        this.f59824b.setValue(GhostCallState.ENDED);
        Context context = this.f59830h;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent action = GhostCallService.m35317a(context).setAction("com.truecaller.ACTION_END_CALL");
        l.d(action, "createServiceIntent(cont…on(ACTION_GHOST_END_CALL)");
        context.startService(action);
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: w */
    public i1<GhostCallState> mo9829w() {
        return this.f59825c;
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: x */
    public void mo9828x() {
        this.f59824b.setValue(GhostCallState.ENDED);
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: y */
    public boolean mo9827y() {
        return this.f59831i.mo13827f();
    }

    @Override // p193e.p194a.p1349x.AbstractC21373l
    /* renamed from: z */
    public void mo9826z() {
        this.f59824b.setValue(GhostCallState.ONGOING);
        Context context = this.f59830h;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent action = GhostCallService.m35317a(context).setAction("com.truecaller.ACTION_ON_CALL_PICKED");
        l.d(action, "createServiceIntent(cont…ION_GHOST_ON_CALL_PICKED)");
        context.startService(action);
    }
}
