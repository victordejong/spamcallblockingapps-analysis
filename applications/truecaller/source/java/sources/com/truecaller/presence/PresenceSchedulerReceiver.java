package com.truecaller.presence;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
/* loaded from: classes12-dex2jar.jar:com/truecaller/presence/PresenceSchedulerReceiver.class */
public class PresenceSchedulerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        String action = intent.getAction();
        action.hashCode();
        boolean z = true;
        switch (action.hashCode()) {
            case -135745394:
                if (action.equals("com.truecaller.action.ACTION_UPDATE_PRESENCE_FOR_CURRENT_USER")) {
                    z = false;
                    break;
                }
                break;
            case 190343278:
                if (action.equals("com.truecaller.action.ACTION_SET_LAST_SEEN")) {
                    z = true;
                    break;
                }
                break;
            case 798292259:
                if (action.equals("android.intent.action.BOOT_COMPLETED")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                mo10154s.mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.RECURRING_TASK, false);
                return;
            case true:
                mo10154s.mo12445b1().mo11854a().mo16129c();
                return;
            case true:
                mo10154s.mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.RECURRING_TASK, true);
                return;
            default:
                return;
        }
    }
}
