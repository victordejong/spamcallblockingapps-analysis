package com.truecaller.call_alert.receive_notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.call_alert.C3576R;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p703e3.p709j.C13408a;
import p193e.p194a.p703e3.p710k.AbstractC13461p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/e3/k/p;", "a", "Le/a/e3/k/p;", "getCallSilenceHelper", "()Le/a/e3/k/p;", "setCallSilenceHelper", "(Le/a/e3/k/p;)V", "callSilenceHelper", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "<init>", "()V", "call-alert_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver.class */
public final class CallSilenceBroadcastReceiver extends BroadcastReceiver {
    @Inject

    /* renamed from: a */
    public AbstractC13461p f10541a;
    @Inject

    /* renamed from: b */
    public AbstractC19462a f10542b;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context != null) {
            C18334g0.m15205s(context).mo21874a(this);
        }
        String stringExtra = intent != null ? intent.getStringExtra("extraCallSilenceTag") : null;
        if (stringExtra != null && context != null) {
            C19291g.m13573Y(context).cancel(stringExtra, C3576R.C3578id.visible_push_caller_id_notification_id);
        }
        AbstractC13461p abstractC13461p = this.f10541a;
        if (abstractC13461p != null && stringExtra != null) {
            abstractC13461p.mo21792b(stringExtra);
        }
        AbstractC19462a abstractC19462a = this.f10542b;
        if (abstractC19462a != null) {
            abstractC19462a.mo13274b(new C13408a("silence"));
        } else {
            l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            throw null;
        }
    }
}
