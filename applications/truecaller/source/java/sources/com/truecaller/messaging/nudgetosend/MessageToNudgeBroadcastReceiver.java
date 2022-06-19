package com.truecaller.messaging.nudgetosend;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1146q2.AbstractC19462a;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/messaging/nudgetosend/MessageToNudgeBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/nudgetosend/MessageToNudgeBroadcastReceiver.class */
public final class MessageToNudgeBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        if (context == null || intent == null || (action = intent.getAction()) == null || action.hashCode() != 1969746501 || !action.equals("ACTION_DISMISS_NUDGE_MESSAGE")) {
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("extra_is_delivered", false);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC19462a mo12776C4 = ((AbstractC21187w1) applicationContext).mo10154s().mo12776C4();
        String str = booleanExtra ? "deliveredNotRead" : "sentNotDelivered";
        LinkedHashMap m8655X = C22128a.m8655X("NudgeImStatusNotification", "type");
        C22128a.m8684N0("NudgeImStatusNotification", C22128a.m8649Z("messageStatus", AnalyticsConstants.NAME, str, "value", m8655X, "messageStatus", str, "action", AnalyticsConstants.NAME, "dismiss", "value", "action", "dismiss"), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", mo12776C4);
    }
}
