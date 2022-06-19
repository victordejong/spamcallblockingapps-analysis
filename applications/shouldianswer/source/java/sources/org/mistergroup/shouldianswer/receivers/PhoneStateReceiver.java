package org.mistergroup.shouldianswer.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.api.Api;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/receivers/PhoneStateReceiver.class */
public final class PhoneStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private C3086e.EnumC3087a f7213a = C3086e.EnumC3087a.BROADCAST_PHONE_STATE;

    /* renamed from: a */
    public final void m951a(C3086e.EnumC3087a enumC3087a) {
        C1694h.m3117b(enumC3087a, "<set-?>");
        this.f7213a = enumC3087a;
    }

    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(intent, "intent");
        try {
            String stringExtra = intent.getStringExtra("state");
            Bundle extras = intent.getExtras();
            char c = 65535;
            if (extras != null) {
                Object obj = extras.get("subscription");
                c = 65535;
                if (obj instanceof Long) {
                    c = ((Number) obj).longValue();
                }
                if (obj instanceof Integer) {
                    c = ((Number) obj).intValue();
                }
            }
            String str = null;
            if (intent.hasExtra("incoming_number")) {
                str = intent.getStringExtra("incoming_number");
            }
            boolean z = true;
            if (C2405c.f6946b.m1205M().length() > 0) {
                str = C2405c.f6946b.m1205M();
            }
            boolean z2 = c < ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER);
            if (C2398ai.f6930a.m1283c() != EnumC2393af.PASSIVE) {
                z = false;
            }
            C3104j c3104j = C3104j.f9124a;
            StringBuilder sb = new StringBuilder();
            sb.append("BROADCAST: PhoneStateReceiver source=");
            sb.append(this.f7213a.name());
            sb.append(" subValid=");
            sb.append(z2 ? "true" : "false");
            sb.append(" state=");
            sb.append(stringExtra);
            sb.append(" isPassiveMode");
            sb.append(String.valueOf(z));
            C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
            if (!z || !z2) {
                return;
            }
            if (C1694h.m3123a((Object) stringExtra, (Object) TelephonyManager.EXTRA_STATE_RINGING)) {
                C3086e.f9028a.m185a(this.f7213a, str);
            }
            if (C1694h.m3123a((Object) stringExtra, (Object) TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                C3086e.f9028a.m180b(this.f7213a, str);
            }
            if (!C1694h.m3123a((Object) stringExtra, (Object) TelephonyManager.EXTRA_STATE_IDLE)) {
                return;
            }
            C3086e.f9028a.m179c(this.f7213a, str);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
