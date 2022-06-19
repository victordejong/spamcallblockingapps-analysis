package com.truecaller.notifications;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.p183ui.TruecallerInit;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p937j4.p939b.p940a.C15570g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "", "alternate", "a", "(Z)V", "Le/a/j2;", C22021b.f61237c, "Le/a/j2;", "graph", "Landroid/content/Context;", AbstractC2405c.f7629a, "Landroid/content/Intent;", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/MissedCallsNotificationActionReceiver.class */
public final class MissedCallsNotificationActionReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public Context f14075a;

    /* renamed from: b */
    public AbstractC15539j2 f14076b;

    /* renamed from: c */
    public Intent f14077c;

    /* renamed from: com.truecaller.notifications.MissedCallsNotificationActionReceiver$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/MissedCallsNotificationActionReceiver$a.class */
    public static final class C4314a<R> implements AbstractC19851d0<AbstractC17373b> {
        public C4314a() {
            MissedCallsNotificationActionReceiver.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            if (abstractC17373b2 == null) {
                return;
            }
            AbstractC15539j2 abstractC15539j2 = MissedCallsNotificationActionReceiver.this.f14076b;
            if (abstractC15539j2 == null) {
                l.l("graph");
                throw null;
            }
            AbstractC14722a mo12360h3 = abstractC15539j2.mo12360h3();
            l.d(mo12360h3, "graph.missedCallReminderManager()");
            while (abstractC17373b2.moveToNext()) {
                try {
                    HistoryEvent mo16159n = abstractC17373b2.mo16159n();
                    if (mo16159n != null) {
                        l.d(mo16159n, "it.historyEvent ?: continue");
                        mo12360h3.m19723c(mo16159n);
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        C25225a.m4016G(abstractC17373b2, th);
                    }
                }
            }
            th = null;
        }
    }

    /* renamed from: b */
    public static final PendingIntent m34852b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent m34588Aa = TruecallerInit.m34588Aa(context, "calls", RemoteMessageConst.NOTIFICATION, "openApp", null, false);
        l.d(m34588Aa, "TruecallerInit.createInt…      false\n            )");
        PendingIntent activity = PendingIntent.getActivity(context, C2752R.C2754id.req_code_missed_call_notification_open, m34588Aa, 335544320);
        l.d(activity, "PendingIntent.getActivit…G_IMMUTABLE\n            )");
        return activity;
    }

    /* renamed from: a */
    public final void m34853a(boolean z) {
        AbstractC15539j2 abstractC15539j2 = this.f14076b;
        if (abstractC15539j2 == null) {
            l.l("graph");
            throw null;
        }
        AbstractC19854f<AbstractC17348c> mo12471Z0 = abstractC15539j2.mo12471Z0();
        l.d(mo12471Z0, "graph.callHistoryManager()");
        Intent intent = this.f14077c;
        if (intent == null) {
            l.l("intent");
            throw null;
        }
        long longExtra = intent.getLongExtra("lastTimestamp", RecyclerView.FOREVER_NS);
        mo12471Z0.mo11854a().mo16227u(longExtra).mo11829f(new C4314a());
        mo12471Z0.mo11854a().mo16241g(longExtra);
        if (z) {
            return;
        }
        final Context context = this.f14075a;
        if (context != null) {
            new Thread(new Runnable() { // from class: e.a.o5.c
                @Override // java.lang.Runnable
                public final void run() {
                    new C15570g(context).m18660c();
                }
            }).start();
        } else {
            l.l(AnalyticsConstants.CONTEXT);
            throw null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC15539j2 mo10154s;
        if (context != null) {
            this.f14075a = context;
            if (intent == null) {
                return;
            }
            this.f14077c = intent;
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext;
            if (!(applicationContext instanceof TrueApp)) {
                context2 = null;
            }
            TrueApp trueApp = (TrueApp) context2;
            if (trueApp == null || (mo10154s = trueApp.mo10154s()) == null) {
                return;
            }
            this.f14076b = mo10154s;
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            l.d(action, "intent.action ?: return");
            AbstractC15539j2 abstractC15539j2 = this.f14076b;
            if (abstractC15539j2 == null) {
                l.l("graph");
                throw null;
            }
            AbstractC19022f0 mo12377g0 = abstractC15539j2.mo12377g0();
            l.d(mo12377g0, "graph.deviceManager()");
            if (mo12377g0.mo14246Q0()) {
                AbstractC15539j2 abstractC15539j22 = this.f14076b;
                if (abstractC15539j22 == null) {
                    l.l("graph");
                    throw null;
                } else if (!abstractC15539j22.mo12809A().mo28580d()) {
                    return;
                }
            }
            switch (action.hashCode()) {
                case -502740451:
                    if (action.equals("com.truecaller.CLEAR_ALTERNATIVE_MISSED_CALLS")) {
                        m34853a(true);
                        break;
                    }
                    break;
                case -152353365:
                    if (action.equals("com.truecaller.CLEAR_MISSED_CALLS")) {
                        m34853a(false);
                        break;
                    }
                    break;
                case 603891238:
                    if (action.equals("com.truecaller.CALL")) {
                        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
                        Intent intent2 = this.f14077c;
                        if (intent2 == null) {
                            l.l("intent");
                            throw null;
                        }
                        long longExtra = intent2.getLongExtra("callLogId", -1L);
                        if (longExtra != -1) {
                            AbstractC15539j2 abstractC15539j23 = this.f14076b;
                            if (abstractC15539j23 == null) {
                                l.l("graph");
                                throw null;
                            }
                            abstractC15539j23.mo12471Z0().mo11854a().mo16243e(longExtra);
                        }
                        Context context3 = this.f14075a;
                        if (context3 == null) {
                            l.l(AnalyticsConstants.CONTEXT);
                            throw null;
                        }
                        C19291g.m13515s(context3);
                        Intent intent3 = this.f14077c;
                        if (intent3 == null) {
                            l.l("intent");
                            throw null;
                        }
                        String stringExtra = intent3.getStringExtra("number");
                        if (stringExtra != null) {
                            l.d(stringExtra, "intent.getStringExtra(EXTRA_NUMBER) ?: return");
                            l.e(RemoteMessageConst.NOTIFICATION, "analyticsContext");
                            l.e(showOnBoarded, "callContextOption");
                            InitiateCallHelper.CallOptions callOptions = new InitiateCallHelper.CallOptions(stringExtra, RemoteMessageConst.NOTIFICATION, stringExtra, null, false, false, null, false, showOnBoarded);
                            AbstractC15539j2 abstractC15539j24 = this.f14076b;
                            if (abstractC15539j24 == null) {
                                l.l("graph");
                                throw null;
                            } else {
                                abstractC15539j24.mo12389f3().m35744b(callOptions);
                                break;
                            }
                        }
                    }
                    break;
                case 2097706097:
                    if (action.equals("com.truecaller.SMS")) {
                        AbstractC15539j2 abstractC15539j25 = this.f14076b;
                        if (abstractC15539j25 == null) {
                            l.l("graph");
                            throw null;
                        }
                        AbstractC19854f<AbstractC17348c> mo12471Z0 = abstractC15539j25.mo12471Z0();
                        l.d(mo12471Z0, "graph.callHistoryManager()");
                        Intent intent4 = this.f14077c;
                        if (intent4 == null) {
                            l.l("intent");
                            throw null;
                        }
                        long longExtra2 = intent4.getLongExtra("callLogId", -1L);
                        if (longExtra2 != -1) {
                            mo12471Z0.mo11854a().mo16243e(longExtra2);
                        }
                        Context context4 = this.f14075a;
                        if (context4 == null) {
                            l.l(AnalyticsConstants.CONTEXT);
                            throw null;
                        }
                        C19291g.m13515s(context4);
                        Intent intent5 = this.f14077c;
                        if (intent5 == null) {
                            l.l("intent");
                            throw null;
                        }
                        Intent intent6 = new Intent("android.intent.action.SENDTO", Uri.fromParts("smsto", intent5.getStringExtra("number"), null));
                        intent6.setFlags(268435456);
                        Context context5 = this.f14075a;
                        if (context5 == null) {
                            l.l(AnalyticsConstants.CONTEXT);
                            throw null;
                        } else {
                            context5.startActivity(intent6);
                            break;
                        }
                    }
                    break;
            }
            new C26458x(context).f74199b.cancel("missedCall", 12345);
        }
    }
}
