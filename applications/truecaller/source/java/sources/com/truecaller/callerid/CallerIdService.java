package com.truecaller.callerid;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.DisplayMetrics;
import com.truecaller.C2752R;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.aftercall.PromotionType;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import com.truecaller.callerid.CallerIdService;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.settings.CallingSettings;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.ServiceC26999e0;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p673d0.AbstractC12505c0;
import p193e.p194a.p673d0.AbstractC12574y;
import p193e.p194a.p673d0.C12514g0;
import p193e.p194a.p673d0.C12560v;
import p193e.p194a.p673d0.p674a.AbstractC12468y;
import p193e.p194a.p673d0.p674a.C12409a;
import p193e.p194a.p682e.AbstractC13329x0;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p773g.AbstractC14235c;
import p193e.p194a.p849h4.AbstractC14920n;
/* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/CallerIdService.class */
public class CallerIdService extends ServiceC26999e0 implements AbstractC12574y, AbstractC12468y.AbstractC12470b {
    @Inject

    /* renamed from: b */
    public AbstractC19854f<AbstractC12505c0> f10587b;
    @Inject

    /* renamed from: c */
    public AbstractC13706b f10588c;
    @Inject

    /* renamed from: d */
    public CallerIdPerformanceTracker f10589d;
    @Inject

    /* renamed from: e */
    public CallingSettings f10590e;
    @Inject

    /* renamed from: f */
    public AbstractC14235c f10591f;
    @Inject

    /* renamed from: g */
    public AbstractC14920n f10592g;
    @Inject

    /* renamed from: h */
    public AbstractC19321u f10593h;
    @Inject

    /* renamed from: i */
    public AbstractC20194a f10594i;

    /* renamed from: j */
    public AbstractC12468y f10595j;

    /* renamed from: k */
    public boolean f10596k = false;

    /* renamed from: l */
    public boolean f10597l = false;

    /* renamed from: j */
    public static boolean m35780j() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: l */
    public static void m35779l(String str) {
        C10480a.m26045M1(str);
        C18479b.m14875a(str);
    }

    /* renamed from: m */
    public static void m35778m(Context context, Bundle bundle) {
        Intent intent = new Intent(context, CallerIdService.class);
        intent.addFlags(32);
        intent.putExtras(bundle);
        m35779l("[CallerIdService] Starting service");
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                context.startForegroundService(intent);
            } catch (Throwable th) {
                if (!(th instanceof ForegroundServiceStartNotAllowedException)) {
                    throw th;
                }
                AssertionUtil.reportThrowableButNeverCrash(th);
            }
        } else if (m35780j()) {
            context.startForegroundService(intent);
        } else {
            try {
                context.startService(intent);
            } catch (SecurityException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: a */
    public void mo22868a(PromotionType promotionType, HistoryEvent historyEvent, CallingSettings callingSettings) {
        AfterCallPromotionActivity.wa(this, callingSettings, promotionType, historyEvent);
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: b */
    public void mo22867b() {
        m35779l("[CallerIdService] Stopping service");
        this.f10596k = true;
        stopSelf();
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: c */
    public void mo22866c(HistoryEvent historyEvent, FilterMatch filterMatch) {
        if (this.f10591f.mo20332c()) {
            return;
        }
        this.f10591f.mo20331d(historyEvent, filterMatch, false);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y.AbstractC12470b
    /* renamed from: d */
    public void mo22954d() {
        this.f10595j = null;
        this.f10587b.mo11854a().mo22926e();
        this.f10594i.release();
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: e */
    public void mo22865e(C12560v c12560v, boolean z) {
        boolean z2;
        if (this.f10595j == null && z && !this.f10588c.mo21263f()) {
            AbstractC19244l0 mo22909b = this.f10589d.mo22909b(CallerIdPerformanceTracker.TraceType.CIDWINDOW_INIT);
            C12409a c12409a = new C12409a(this, this, this.f10590e);
            c12409a.m22962h();
            try {
                c12409a.m22969a();
                z2 = true;
            } catch (RuntimeException e) {
                C10480a.m26057J1(e, "Cannot add caller id window");
                z2 = false;
            }
            this.f10589d.mo22910a(mo22909b);
            if (z2) {
                this.f10595j = c12409a;
                this.f10587b.mo11854a().mo22929b(c12560v);
            }
        }
        if (this.f10595j != null) {
            AbstractC19244l0 mo22909b2 = this.f10589d.mo22909b(CallerIdPerformanceTracker.TraceType.CIDWINDOW_UPDATE);
            this.f10595j.m22961i(c12560v);
            this.f10589d.mo22910a(mo22909b2);
        }
        this.f10587b.mo11854a().mo22930a(c12560v);
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: f */
    public void mo22864f() {
        AbstractC12468y abstractC12468y = this.f10595j;
        if (abstractC12468y != null) {
            abstractC12468y.f36421f = false;
            abstractC12468y.m22968b(abstractC12468y.f36427l.getTranslationX(), true, true);
        }
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo22863g() {
        AbstractC12468y abstractC12468y = this.f10595j;
        return AbstractC19891x.m11834h(Boolean.valueOf(abstractC12468y != null && abstractC12468y.f36421f));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: h */
    public void mo22862h() {
        int i = AbstractC13329x0.f38735d;
        sendBroadcast(new Intent("com.truecaller.EVENT_AFTER_CALL_START"));
    }

    /* renamed from: i */
    public final Notification m35781i() {
        Notification.Builder contentTitle = new Notification.Builder(this, this.f10592g.mo19425a("caller_id")).setSmallIcon(2131236603).setContentTitle(getString(C2752R.string.CallerIdNotificationTitle));
        Object obj = C26467a.f74235a;
        return contentTitle.setColor(C26467a.C26471d.m1787a(this, 2131101323)).build();
    }

    @Override // p1727n3.p1868v.ServiceC26999e0, android.app.Service
    public IBinder onBind(Intent intent) {
        this.f75517a.m983a(AbstractC27028u.EnumC27029a.ON_START);
        if (m35780j()) {
            m35779l("[CallerIdService] onBind: Stopping foreground");
            this.f10597l = true;
            stopForeground(true);
        }
        return new Binder();
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AbstractC12468y abstractC12468y = this.f10595j;
        if (abstractC12468y != null) {
            DisplayMetrics displayMetrics = abstractC12468y.f36416a.getResources().getDisplayMetrics();
            abstractC12468y.f36424i = displayMetrics.widthPixels;
            abstractC12468y.f36425j = displayMetrics.heightPixels - C19045j0.m14204l(abstractC12468y.f36416a.getResources());
        }
    }

    @Override // p1727n3.p1868v.ServiceC26999e0, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        AbstractC19854f mo11838a = mo10154s.mo12119z1().mo11845d().mo11838a(AbstractC12574y.class, this);
        CallerIdPerformanceTracker mo12697I1 = mo10154s.mo12697I1();
        AbstractC19244l0 mo22909b = mo12697I1.mo22909b(CallerIdPerformanceTracker.TraceType.CIDSERVICE_INJECT);
        C20399t1.C20411h c20411h = (C20399t1.C20411h) AbstractC17399l2.f48744a.m16142a().mo11179e(new C12514g0(mo11838a));
        this.f10587b = (AbstractC19854f) c20411h.f57410f.get();
        AbstractC13706b mo12314k7 = c20411h.f57406b.f57299b.mo12314k7();
        Objects.requireNonNull(mo12314k7, "Cannot return null from a non-@Nullable component method");
        this.f10588c = mo12314k7;
        CallerIdPerformanceTracker mo12697I12 = c20411h.f57406b.f57299b.mo12697I1();
        Objects.requireNonNull(mo12697I12, "Cannot return null from a non-@Nullable component method");
        this.f10589d = mo12697I12;
        Objects.requireNonNull(c20411h.f57406b.f57299b.mo11648b(), "Cannot return null from a non-@Nullable component method");
        CallingSettings mo12414d6 = c20411h.f57406b.f57299b.mo12414d6();
        Objects.requireNonNull(mo12414d6, "Cannot return null from a non-@Nullable component method");
        this.f10590e = mo12414d6;
        AbstractC14235c mo12357h6 = c20411h.f57406b.f57299b.mo12357h6();
        Objects.requireNonNull(mo12357h6, "Cannot return null from a non-@Nullable component method");
        this.f10591f = mo12357h6;
        AbstractC14920n mo12458a1 = c20411h.f57406b.f57299b.mo12458a1();
        Objects.requireNonNull(mo12458a1, "Cannot return null from a non-@Nullable component method");
        this.f10592g = mo12458a1;
        AbstractC19321u mo12725G1 = c20411h.f57406b.f57299b.mo12725G1();
        Objects.requireNonNull(mo12725G1, "Cannot return null from a non-@Nullable component method");
        this.f10593h = mo12725G1;
        AbstractC20194a mo12364h = c20411h.f57406b.f57299b.mo12364h();
        Objects.requireNonNull(mo12364h, "Cannot return null from a non-@Nullable component method");
        this.f10594i = mo12364h;
        mo12697I1.mo22910a(mo22909b);
        this.f10593h.mo13427f().m42867f(this, new AbstractC27012l0() { // from class: e.a.d0.n
            @Override // p1727n3.p1868v.AbstractC27012l0
            public final void onChanged(Object obj) {
                CallerIdService.this.f10587b.mo11854a().mo22927d(((Boolean) obj).booleanValue());
            }
        });
    }

    @Override // p1727n3.p1868v.ServiceC26999e0, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f10587b.mo11854a().onDestroy();
    }

    @Override // p1727n3.p1868v.ServiceC26999e0, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        StringBuilder sb = new StringBuilder();
        sb.append("[CallerIdService] onStartCommand called with intent : ");
        sb.append(intent);
        sb.append(" action: ");
        sb.append(intent != null ? intent.getAction() : "");
        sb.append(" startId: ");
        sb.append(i2);
        C10480a.m26045M1(sb.toString());
        int intExtra = intent.getIntExtra("CALL_STATE", -1);
        if (m35780j()) {
            startForeground(C2752R.C2754id.caller_id_service_foreground_notification, m35781i());
            m35779l("[CallerIdService] onStartCommand: Started foreground with state: " + intExtra);
            if (this.f10597l) {
                stopForeground(true);
                m35779l("[CallerIdService] onStartCommand: Stopped foreground. Service is bound.");
            }
        }
        AssertionUtil.AlwaysFatal.isTrue(intExtra != -1, new String[0]);
        String stringExtra = intent.getStringExtra("NUMBER");
        int intExtra2 = intent.getIntExtra("SIM_SLOT_INDEX", -1);
        int intExtra3 = intent.getIntExtra("ACTION", 0);
        long longExtra = intent.getLongExtra("TIMESTAMP", -1L);
        FilterMatch filterMatch = (FilterMatch) intent.getParcelableExtra("FILTER_MATCH");
        AssertionUtil.AlwaysFatal.isTrue(longExtra != -1, new String[0]);
        this.f10587b.mo11854a().mo22928c(intExtra, stringExtra, intExtra2, intExtra3, longExtra, filterMatch);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        this.f10597l = false;
        if (!this.f10596k && m35780j()) {
            m35779l("[CallerIdService] onUnbind: Starting foreground");
            startForeground(C2752R.C2754id.caller_id_service_foreground_notification, m35781i());
        }
        return super.onUnbind(intent);
    }
}
