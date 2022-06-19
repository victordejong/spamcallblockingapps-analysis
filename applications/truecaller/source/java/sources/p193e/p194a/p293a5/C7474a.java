package p193e.p194a.p293a5;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.smartnotifications.NotificationBannerMetaData;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.insights.InsightsNotificationTrampolineActivity;
import com.truecaller.messaging.insights.SmartNotifBroadcastReceiver;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import com.truecaller.p183ui.TruecallerInit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p231g.AbstractC6241p;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f;
import s1.c0.c;
import s1.c0.d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a5.a */
/* loaded from: classes13-dex2jar.jar:e/a/a5/a.class */
public final class C7474a implements AbstractC10412f {

    /* renamed from: a */
    public final int f23732a;

    /* renamed from: b */
    public final c f23733b = new d(101, 0);

    /* renamed from: c */
    public final g f23734c;

    /* renamed from: d */
    public final Message f23735d;

    /* renamed from: e.a.a5.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/a5/a$a.class */
    public static final class C7475a extends m implements a<Long> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC6241p f23737c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7475a(AbstractC6241p abstractC6241p) {
            super(0);
            C7474a.this = r4;
            this.f23737c = abstractC6241p;
        }

        public Object invoke() {
            Long l;
            Message message = C7474a.this.f23735d;
            long j = message.f13381b;
            if (j == -1) {
                AbstractC6241p abstractC6241p = this.f23737c;
                String m28346m = C8574c0.m28346m(message.f13382c.f11571d);
                l.d(m28346m, "PhoneNumberUtils.stripAl…e.participant.rawAddress)");
                Conversation mo31584a = abstractC6241p.mo31584a(m28346m);
                l = mo31584a != null ? Long.valueOf(mo31584a.f13199a) : null;
            } else {
                l = Long.valueOf(j);
            }
            return l;
        }
    }

    public C7474a(Message message, AbstractC6241p abstractC6241p) {
        l.e(message, "message");
        l.e(abstractC6241p, "messagesStorageQueryHelper");
        this.f23735d = message;
        this.f23732a = C17422k.m16110H(message);
        this.f23734c = C25225a.m3978P1(new C7475a(abstractC6241p));
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: a */
    public PendingIntent mo26199a(Context context, SmartNotificationMetadata smartNotificationMetadata, String str, String str2) {
        l.e(context, "appContext");
        l.e(str, "url");
        l.e(str2, "actionInfo");
        int i = this.f23732a;
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), InsightsNotificationTrampolineActivity.m34975pa(context, smartNotificationMetadata, new NotificationIdentifier(i, null, i, 2), str, str2), 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: b */
    public PendingIntent mo26198b(Context context, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, "appContext");
        int i = this.f23732a;
        int i2 = true & true ? -1 : i;
        Message message = this.f23735d;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(message, "message");
        Intent intent = new Intent(context, SmartNotifBroadcastReceiver.class);
        intent.setAction("com.truecaller.insights.notifications.DISMISS");
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_message_id", message.f13380a);
        intent.putExtra("extra_action_info", "dismiss");
        intent.putExtra("extra_smart_notif_metadata", smartNotificationMetadata);
        intent.putExtra("extra_action_type", "click");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i2, intent, 201326592);
        l.d(broadcast, "PendingIntent.getBroadca…G_IMMUTABLE\n            )");
        return broadcast;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: c */
    public PendingIntent mo26197c(Context context, NotificationBannerMetaData notificationBannerMetaData) {
        l.e(context, "appContext");
        l.e(notificationBannerMetaData, "bannerMetaData");
        int i = this.f23732a;
        long j = this.f23735d.f13380a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(notificationBannerMetaData, "bannerMetaData");
        Intent intent = new Intent(context, InsightsNotificationTrampolineActivity.class);
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("notification_name", "com.truecaller.insights.notifications.PROMO_BANNER");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_promo_banner_data", notificationBannerMetaData);
        intent.putExtra("extra_message_id", j);
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), intent, 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: d */
    public PendingIntent mo26196d(Context context, boolean z, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, "appContext");
        int i = this.f23732a;
        long j = this.f23735d.f13380a;
        Long m29564k = m29564k();
        ?? longValue = m29564k != null ? m29564k.longValue() : true;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e("whats_this", "actionInfo");
        Intent intent = new Intent(context, InsightsNotificationTrampolineActivity.class);
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("notification_name", "com.truecaller.insights.notifications.SMART_NOTIFICATION_PROMO");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_smart_notif_metadata", smartNotificationMetadata);
        intent.putExtra("extra_action_info", "whats_this");
        intent.putExtra("extra_conversation_id", longValue == true ? 1L : 0L);
        intent.putExtra("extra_action_type", "click");
        intent.putExtra("extra_message_id", j);
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), intent, 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: e */
    public PendingIntent mo26195e(Context context, boolean z, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(smartNotificationMetadata, "metadata");
        int i = this.f23732a;
        NotificationIdentifier notificationIdentifier = new NotificationIdentifier(i, null, i, 2);
        if (z) {
            return ConversationActivity.f13017e.m35129a(context, this.f23735d, "show_sms", notificationIdentifier, smartNotificationMetadata, null);
        }
        Long m29564k = m29564k();
        if (m29564k == null) {
            PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), TruecallerInit.m34555va(context, "messages", "notificationIncomingMessage", "show_sms", notificationIdentifier, smartNotificationMetadata, null), 201326592);
            l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
            return activity;
        }
        Message.C4209b m35024b = this.f23735d.m35024b();
        m35024b.f13422b = m29564k.longValue();
        Message m35012a = m35024b.m35012a();
        l.d(m35012a, "message.buildUpon().conv…n(conversationId).build()");
        return ConversationActivity.f13017e.m35129a(context, m35012a, "show_sms", notificationIdentifier, smartNotificationMetadata, null);
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: f */
    public PendingIntent mo26194f(Context context, String str, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "deepLink");
        int i = this.f23732a;
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), InsightsNotificationTrampolineActivity.m34975pa(context, smartNotificationMetadata, new NotificationIdentifier(i, null, i, 2), str, (smartNotificationMetadata == null || !l.a(smartNotificationMetadata.getCategory(), "prepaid_expiry")) ? "pay_bill" : "recharge"), 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: g */
    public PendingIntent mo26193g(Context context, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, "appContext");
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), TruecallerInit.m34588Aa(context, "messages", "notificationIncomingMessage", null, InboxTab.OTHERS, true).putExtra("extra_notification_origin", "extra_smart_notification").putExtra("extra_action_info", "show_sms").putExtra("extra_smart_notif_metadata", smartNotificationMetadata).putExtra("extra_otp_analytics_model", (Parcelable) null).putExtra("extra_action_type", "click").putExtra("extra_notification_id", this.f23732a), 201326592);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: h */
    public PendingIntent mo26192h(Context context, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(context, AnalyticsConstants.CONTEXT);
        int i = this.f23732a;
        Message message = this.f23735d;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(message, "message");
        Intent intent = new Intent(context, SmartNotifBroadcastReceiver.class);
        intent.setAction("com.truecaller.insights.notifications.MARK_AS_READ");
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_message_id", message.f13380a);
        intent.putExtra("extra_conversation_id", message.f13381b);
        intent.putExtra("extra_action_info", "mark_as_read");
        intent.putExtra("extra_smart_notif_metadata", smartNotificationMetadata);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i, intent, 201326592);
        l.d(broadcast, "PendingIntent.getBroadca…G_IMMUTABLE\n            )");
        return broadcast;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: i */
    public PendingIntent mo26191i(Context context, SmartNotificationMetadata smartNotificationMetadata, String str, String str2) {
        l.e(context, "appContext");
        l.e(str, "number");
        l.e(str2, "actionInfo");
        int i = this.f23732a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        l.e(str2, "actionInfo");
        Intent intent = new Intent(context, InsightsNotificationTrampolineActivity.class);
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("notification_name", "com.truecaller.insights.notifications.DIAL");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_smart_notif_metadata", smartNotificationMetadata);
        intent.putExtra("extra_number", str);
        intent.putExtra("extra_action_type", "click");
        intent.putExtra("extra_action_info", str2);
        PendingIntent activity = PendingIntent.getActivity(context, this.f23733b.b(), intent, 335544320);
        l.d(activity, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f
    /* renamed from: j */
    public PendingIntent mo26190j(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        int i = this.f23732a;
        Message message = this.f23735d;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(message, "message");
        Intent intent = new Intent(context, SmartNotifBroadcastReceiver.class);
        intent.setAction("com.truecaller.insights.notifications.SILENT_MARK_AS_READ");
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("extra_notification_id", i);
        intent.putExtra("extra_message_text", message.m35025a());
        intent.putExtra("extra_action_info", "mark_as_read");
        intent.putExtra("extra_action_type", "click");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i, intent, 201326592);
        l.d(broadcast, "PendingIntent.getBroadca…G_IMMUTABLE\n            )");
        return broadcast;
    }

    /* renamed from: k */
    public final Long m29564k() {
        return (Long) this.f23734c.getValue();
    }
}
