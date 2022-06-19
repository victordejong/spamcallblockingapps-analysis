package com.truecaller.messaging.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/truecaller/messaging/notifications/ReactionBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/r2/f;", "Le/a/a/k/a/c0;", "a", "Le/a/r2/f;", "getImReactionManagerRef", "()Le/a/r2/f;", "setImReactionManagerRef", "(Le/a/r2/f;)V", "imReactionManagerRef", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/ReactionBroadcastReceiver.class */
public final class ReactionBroadcastReceiver extends BroadcastReceiver {
    @Inject

    /* renamed from: a */
    public AbstractC19854f<AbstractC6523c0> f13656a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        if (this.f13656a == null) {
            AbstractC16444k2.f46188a.m17389a().mo11396F(this);
        }
        String action = intent.getAction();
        if (action == null || action.hashCode() != 545703614 || !action.equals("com.truecaller.mark_as_seen")) {
            StringBuilder m8728C = C22128a.m8728C("Unknown action ");
            m8728C.append(intent.getAction());
            m8728C.append(" in onReceive");
            throw new RuntimeException(m8728C.toString());
        }
        long[] longArrayExtra = intent.getLongArrayExtra("message_ids");
        if (longArrayExtra == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        AbstractC19854f<AbstractC6523c0> abstractC19854f = this.f13656a;
        if (abstractC19854f != null) {
            abstractC19854f.mo11854a().mo30797i(longArrayExtra);
        } else {
            l.l("imReactionManagerRef");
            throw null;
        }
    }
}
