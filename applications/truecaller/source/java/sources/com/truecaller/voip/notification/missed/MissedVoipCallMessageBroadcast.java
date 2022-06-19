package com.truecaller.voip.notification.missed;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.util.VoipAnalyticsContext;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p666y.p669c.AbstractC12313a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/d/c0/j1;", AbstractC2405c.f7629a, "Le/a/d/c0/j1;", "getSupport", "()Le/a/d/c0/j1;", "setSupport", "(Le/a/d/c0/j1;)V", "support", "<init>", "()V", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast.class */
public final class MissedVoipCallMessageBroadcast extends AbstractC12313a {
    @Inject

    /* renamed from: c */
    public AbstractC11421j1 f16388c;

    @Override // p193e.p194a.p619d.p666y.p669c.AbstractC12313a, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        ArrayList<String> stringArrayListExtra;
        String stringExtra2;
        super.onReceive(context, intent);
        if (context == null || intent == null) {
            return;
        }
        C19291g.m13573Y(context).cancel(C4781R.C4783id.voip_incoming_service_missed_call_notification);
        C19291g.m13515s(context);
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        int hashCode = action.hashCode();
        if (hashCode == -1366172540) {
            if (!action.equals("com.truecaller.voip.ACTION_ACTION_CALL") || (stringExtra = intent.getStringExtra("com.truecaller.voip.extra.EXTRA_NUMBER")) == null) {
                return;
            }
            AbstractC11421j1 abstractC11421j1 = this.f16388c;
            if (abstractC11421j1 != null) {
                abstractC11421j1.mo24117a(stringExtra, VoipAnalyticsContext.MISSED_CALL_NOTIFICATION.getValue());
            } else {
                l.l("support");
                throw null;
            }
        } else if (hashCode == -170036511) {
            if (!action.equals("com.truecaller.voip.ACTION_GROUP_CALL") || (stringArrayListExtra = intent.getStringArrayListExtra("com.truecaller.voip.extra.EXTRA_GROUP_NUMBERS")) == null) {
                return;
            }
            AbstractC11421j1 abstractC11421j12 = this.f16388c;
            if (abstractC11421j12 != null) {
                abstractC11421j12.mo24095w(stringArrayListExtra, VoipAnalyticsContext.MISSED_CALL_NOTIFICATION.getValue());
            } else {
                l.l("support");
                throw null;
            }
        } else if (hashCode != 1057236004 || !action.equals("com.truecaller.voip.ACTION_MESSAGE") || (stringExtra2 = intent.getStringExtra("com.truecaller.voip.extra.EXTRA_NUMBER")) == null) {
        } else {
            AbstractC11421j1 abstractC11421j13 = this.f16388c;
            if (abstractC11421j13 != null) {
                abstractC11421j13.mo24113e(stringExtra2, null);
            } else {
                l.l("support");
                throw null;
            }
        }
    }
}
