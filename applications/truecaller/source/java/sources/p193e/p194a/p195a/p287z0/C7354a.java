package p193e.p194a.p195a.p287z0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.nudgetosend.MessageToNudgeBroadcastReceiver;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.z.c.l;
/* renamed from: e.a.a.z0.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/z0/a.class */
public final class C7354a implements AbstractC7357d {

    /* renamed from: a */
    public final Context f23434a;

    /* renamed from: b */
    public final AbstractC14920n f23435b;

    @Inject
    public C7354a(Context context, AbstractC14920n abstractC14920n) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14920n, "notificationManager");
        this.f23434a = context;
        this.f23435b = abstractC14920n;
    }

    @Override // p193e.p194a.p195a.p287z0.AbstractC7357d
    /* renamed from: a */
    public void mo29744a(long j, long j2, String str, boolean z) {
        String str2;
        String string = this.f23434a.getString(z ? 2131887132 : 2131887134, str);
        String str3 = "context.getString(\n     …participantName\n        )";
        l.d(string, "context.getString(\n     …participantName\n        )");
        if (z) {
            str2 = this.f23434a.getString(C2752R.string.NudgeToSendSmsAfterDeliveryNotificationText);
            str3 = "context.getString(R.stri…DeliveryNotificationText)";
        } else {
            str2 = this.f23434a.getString(C2752R.string.NudgeToSendSmsAfterSentNotificationText, str);
        }
        l.d(str2, str3);
        Context context = this.f23434a;
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("conversation_id", j2);
        intent.putExtra("message_id", j);
        intent.putExtra("com.truecaller.messaging.action_from_notification", "nudge_to_send");
        intent.putExtra("is_delivered", z);
        int i = (int) j2;
        PendingIntent activity = PendingIntent.getActivity(context, i, intent, 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        Context context2 = this.f23434a;
        l.e(context2, AnalyticsConstants.CONTEXT);
        Intent intent2 = new Intent(context2, MessageToNudgeBroadcastReceiver.class);
        intent2.setAction("ACTION_DISMISS_NUDGE_MESSAGE");
        intent2.putExtra("extra_message_id", j);
        intent2.putExtra("extra_is_delivered", z);
        PendingIntent broadcast = PendingIntent.getBroadcast(context2, i, intent2, 335544320);
        l.d(broadcast, "PendingIntent.getBroadca…ingIntent.FLAG_IMMUTABLE)");
        C26450q c26450q = new C26450q(this.f23434a, this.f23435b.mo19425a("nudge_to_send"));
        c26450q.m1855n(string);
        c26450q.m1856m(str2);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(str2);
        c26450q.m1845x(c26447o);
        c26450q.f74137R.icon = 2131232129;
        Context context3 = this.f23434a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context3, 2131101323);
        c26450q.m1854o(-1);
        c26450q.m1853p(16, true);
        c26450q.f74147g = activity;
        c26450q.f74137R.deleteIntent = broadcast;
        l.d(c26450q, "NotificationCompat.Build…leteIntent(dismissIntent)");
        String valueOf = String.valueOf(j2);
        valueOf.hashCode();
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        this.f23435b.mo19414l(valueOf, C2752R.C2754id.nudge_to_send_sms_notification_id, m1865d);
    }

    @Override // p193e.p194a.p195a.p287z0.AbstractC7357d
    /* renamed from: b */
    public void mo29743b(long j) {
        this.f23435b.mo19424b(String.valueOf(j), C2752R.C2754id.nudge_to_send_sms_notification_id);
    }
}
