package com.truecaller.insights.reminders.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/insights/reminders/receiver/ReminderBootReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/ReminderBootReceiver.class */
public final class ReminderBootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!l.a(intent != null ? intent.getAction() : null, "android.intent.action.BOOT_COMPLETED")) {
            return;
        }
        AbstractApplicationC8442a abstractApplicationC8442a = null;
        if (context != null) {
            abstractApplicationC8442a = context.getApplicationContext();
        }
        Objects.requireNonNull(abstractApplicationC8442a, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractApplicationC8442a abstractApplicationC8442a2 = abstractApplicationC8442a;
        if (!abstractApplicationC8442a2.mo28540W() || !abstractApplicationC8442a2.mo28545R().m10979Z().isEnabled()) {
            return;
        }
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "InsightsRemindersWorkAction", context, null, null, 12);
    }
}
