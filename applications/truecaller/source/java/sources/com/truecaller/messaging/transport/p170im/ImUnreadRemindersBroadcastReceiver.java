package com.truecaller.messaging.transport.p170im;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import java.util.LinkedHashMap;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/messaging/transport/im/ImUnreadRemindersBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.ImUnreadRemindersBroadcastReceiver */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImUnreadRemindersBroadcastReceiver.class */
public final class ImUnreadRemindersBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int hashCode;
        if (context == null || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("analytics_peer");
        String str = "";
        if (stringExtra == null) {
            stringExtra = "";
        }
        l.d(stringExtra, "intent.getStringExtra(EXTRA_ANALYTICS_PEER) ?: \"\"");
        String stringExtra2 = intent.getStringExtra("analytics_unread_period");
        if (stringExtra2 != null) {
            str = stringExtra2;
        }
        l.d(str, "intent.getStringExtra(EX…TICS_UNREAD_PERIOD) ?: \"\"");
        String action = intent.getAction();
        if (action == null || ((hashCode = action.hashCode()) == -1265353946 ? !action.equals("com.truecaller.maybe_later_groups") : hashCode != -592610542 || !action.equals("com.truecaller.maybe_later_personal"))) {
            StringBuilder m8728C = C22128a.m8728C("Unknown action ");
            m8728C.append(intent.getAction());
            m8728C.append(" in onReceive");
            throw new RuntimeException(m8728C.toString());
        }
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.TrueApp");
        AbstractC15539j2 mo10154s = ((TrueApp) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont… as TrueApp).objectsGraph");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        l.e("UnreadImNotification", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("unreadPeriod", AnalyticsConstants.NAME, str, "value", linkedHashMap, "unreadPeriod", str, "UnreadImNotification", C22128a.m8649Z("action", AnalyticsConstants.NAME, "dismiss", "value", linkedHashMap, "action", "dismiss", "peer", AnalyticsConstants.NAME, stringExtra, "value", "peer", stringExtra));
        m8560v1.m15848d(linkedHashMap);
        C17697p3 build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        mo12776C4.mo13275a(build);
        int hashCode2 = stringExtra.hashCode();
        if (hashCode2 != 48688) {
            if (hashCode2 == 98629247 && stringExtra.equals("group")) {
                new C26458x(context).m1816b(C2752R.C2754id.im_unread_reminders_groups_notification_id);
            }
        } else if (stringExtra.equals("121")) {
            new C26458x(context).m1816b(C2752R.C2754id.im_unread_reminders_notification_id);
        }
        C19291g.m13515s(context);
    }
}
