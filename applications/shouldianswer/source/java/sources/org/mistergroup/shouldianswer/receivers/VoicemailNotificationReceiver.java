package org.mistergroup.shouldianswer.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p098b.C2299l;
import org.mistergroup.shouldianswer.utils.C3085d;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/receivers/VoicemailNotificationReceiver.class */
public final class VoicemailNotificationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(intent, "intent");
        try {
            C3104j.m157a(C3104j.f9124a, "BROADCAST: VoicemailNotificationReceiver.onReceive", (String) null, 2, (Object) null);
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            C3104j c3104j = C3104j.f9124a;
            StringBuilder sb = new StringBuilder();
            sb.append("bundle is ");
            C1694h.m3122a((Object) extras, "bundle");
            sb.append(C3085d.m190a(extras, null, 1, null));
            C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
            String str = null;
            boolean z = false;
            int i = extras.containsKey("android.telephony.extra.NOTIFICATION_COUNT") ? extras.getInt("android.telephony.extra.NOTIFICATION_COUNT") : 0;
            if (extras.containsKey("android.telephony.extra.VOICEMAIL_NUMBER")) {
                str = extras.getString("android.telephony.extra.VOICEMAIL_NUMBER");
            }
            if (extras.containsKey("android.telephony.extra.IS_REFRESH")) {
                z = extras.getBoolean("android.telephony.extra.IS_REFRESH");
            }
            if (extras.containsKey("is_refresh")) {
                z = extras.getBoolean("is_refresh");
            }
            C3104j.m157a(C3104j.f9124a, "VoicemailNotificationReceiver.onReceive notificationCount=" + String.valueOf(i), (String) null, 2, (Object) null);
            C3104j.m157a(C3104j.f9124a, "VoicemailNotificationReceiver.onReceive voicemailNumber=" + str, (String) null, 2, (Object) null);
            C3104j.m157a(C3104j.f9124a, "VoicemailNotificationReceiver.onReceive isRefresh=" + String.valueOf(z), (String) null, 2, (Object) null);
            if (z || i <= 0) {
                return;
            }
            C3104j.m157a(C3104j.f9124a, "VoicemailNotificationReceiver.onReceive showNotification", (String) null, 2, (Object) null);
            C2299l.f6490a.m1668a(str);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
