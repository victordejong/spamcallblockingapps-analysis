package org.mistergroup.shouldianswer.receivers;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p098b.C2274e;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/receivers/MissedCallNotificationReceiver.class */
public final class MissedCallNotificationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Object obj;
        Object obj2;
        C1694h.m3117b(context, "context");
        C1694h.m3117b(intent, "intent");
        try {
            C3104j.m157a(C3104j.f9124a, "BROADCAST: MissedCallNotificationReceiver", (String) null, 2, (Object) null);
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            String str = null;
            Intent intent2 = null;
            int i = extras.containsKey("android.telecom.extra.NOTIFICATION_COUNT") ? extras.getInt("android.telecom.extra.NOTIFICATION_COUNT") : 0;
            if (extras.containsKey("android.telecom.extra.NOTIFICATION_PHONE_NUMBER")) {
                str = extras.getString("android.telecom.extra.NOTIFICATION_PHONE_NUMBER");
            }
            if (extras.containsKey("android.telecom.extra.CLEAR_MISSED_CALLS_INTENT") && (obj2 = extras.get("android.telecom.extra.CLEAR_MISSED_CALLS_INTENT")) != null) {
                if (i > 0) {
                    ((PendingIntent) obj2).send(context, 0, new Intent());
                }
                C3104j.m157a(C3104j.f9124a, obj2.toString(), (String) null, 2, (Object) null);
            }
            if (extras.containsKey("android.telecom.extra.CALL_BACK_INTENT") && (obj = extras.get("android.telecom.extra.CALL_BACK_INTENT")) != null) {
                C3104j.m157a(C3104j.f9124a, obj.toString(), (String) null, 2, (Object) null);
            }
            if (str == null) {
                return;
            }
            C2274e.f6371a.m1708a(new NumberInfo(str, C3099f.f9116a.m177a(), EnumC2436k.UNKNOWN, false, 8, null), i);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
