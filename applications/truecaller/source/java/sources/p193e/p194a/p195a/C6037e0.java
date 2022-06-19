package p193e.p194a.p195a;

import android.content.Context;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.e0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/e0.class */
public final class C6037e0 implements AbstractC5945d0 {

    /* renamed from: a */
    public final Context f20082a;

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f20083b;

    /* renamed from: c */
    public final AbstractC19510i0 f20084c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC7343q>> f20085d;

    @Inject
    public C6037e0(Context context, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC19510i0 abstractC19510i0, a<AbstractC19854f<AbstractC7343q>> aVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "messagesStorage");
        l.e(abstractC19510i0, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar2, "notificationManager");
        this.f20082a = context;
        this.f20083b = aVar;
        this.f20084c = abstractC19510i0;
        this.f20085d = aVar2;
    }

    @Override // p193e.p194a.p195a.AbstractC5945d0
    /* renamed from: a */
    public void mo31935a(Bundle bundle) {
        Long m3835u0;
        long[] longArray;
        Long m3835u02;
        String string;
        int hashCode;
        long[] longArray2;
        l.e(bundle, "args");
        String string2 = bundle.getString("com.truecaller.messaging.action_from_notification");
        if (string2 != null && ((hashCode = string2.hashCode()) == -1343001491 ? string2.equals("view_message") : !(hashCode == 87178430 ? !string2.equals("block_messages") : hashCode != 1280061362 || !string2.equals("reply_message"))) && (longArray2 = bundle.getLongArray("com.truecaller.messaging.message_ids")) != null) {
            ((AbstractC6233m) ((AbstractC19854f) this.f20083b.get()).mo11854a()).mo31690g0(longArray2);
        }
        int i = bundle.getInt("tc_notification_id", -1);
        String string3 = bundle.getString("tc_notification_tag");
        if (i != -1) {
            if (i != 2131364918 || string3 == null) {
                String string4 = bundle.getString("com.truecaller.messaging.action_from_notification");
                if (string4 != null && (l.a(string4, "view_message") || l.a(string4, "view_failed_message") || l.a(string4, "view_scheduled_message"))) {
                    new C26458x(this.f20082a).f74199b.cancel(string3, i);
                } else {
                    new C26458x(this.f20082a).m1816b(i);
                }
            } else {
                ((AbstractC7343q) ((AbstractC19854f) this.f20085d.get()).mo11854a()).mo29774c(i.y0(Long.valueOf(C19231g0.m13805L(string3))));
            }
            C19291g.m13515s(this.f20082a);
        }
        String string5 = bundle.getString("com.truecaller.messaging.action_from_notification");
        if (string5 != null) {
            switch (string5.hashCode()) {
                case -1343001491:
                    if (!string5.equals("view_message")) {
                        return;
                    }
                    break;
                case -1040838821:
                    if (!string5.equals("view_scheduled_message")) {
                        return;
                    }
                    break;
                case -634805537:
                    if (!string5.equals("view_failed_message") || (longArray = bundle.getLongArray("com.truecaller.messaging.message_ids")) == null || (m3835u02 = C25225a.m3835u0(longArray)) == null) {
                        return;
                    }
                    this.f20084c.mo13220f("openConversation", m3835u02.longValue());
                    return;
                case 974944168:
                    if (!string5.equals("nudge_to_send")) {
                        return;
                    }
                    String str = bundle.getBoolean("is_delivered", false) ? "deliveredNotRead" : "sentNotDelivered";
                    AbstractC19510i0 abstractC19510i0 = this.f20084c;
                    LinkedHashMap m8655X = C22128a.m8655X("NudgeImStatusNotification", "type");
                    C22128a.m8681O0("NudgeImStatusNotification", C22128a.m8649Z("messageStatus", AnalyticsConstants.NAME, str, "value", m8655X, "messageStatus", str, "action", AnalyticsConstants.NAME, ViewAction.TAP, "value", "action", ViewAction.TAP), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
                    return;
                case 1280061362:
                    if (!string5.equals("reply_message")) {
                        return;
                    }
                    break;
                case 1294941008:
                    if (!string5.equals("im_unread_remainder") || (string = bundle.getString("analytics_peer")) == null) {
                        return;
                    }
                    l.d(string, "args.getString(IM_UNREAD_REMAINDER_PEER) ?: return");
                    String string6 = bundle.getString("analytics_unread_period");
                    if (string6 == null) {
                        return;
                    }
                    l.d(string6, "args.getString(IM_UNREAD…MAINDER_PERIOD) ?: return");
                    AbstractC19510i0 abstractC19510i02 = this.f20084c;
                    LinkedHashMap m8655X2 = C22128a.m8655X("UnreadImNotification", "type");
                    C17697p3.C17699b m8560v1 = C22128a.m8560v1("unreadPeriod", AnalyticsConstants.NAME, string6, "value", m8655X2, "unreadPeriod", string6, "UnreadImNotification", C22128a.m8649Z("action", AnalyticsConstants.NAME, AnalyticsConstants.SHOW, "value", m8655X2, "action", AnalyticsConstants.SHOW, "peer", AnalyticsConstants.NAME, string, "value", "peer", string));
                    m8560v1.m15848d(m8655X2);
                    C17697p3 build = m8560v1.build();
                    l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
                    abstractC19510i02.mo13225a(build);
                    return;
                default:
                    return;
            }
            long[] longArray3 = bundle.getLongArray("com.truecaller.messaging.message_ids");
            if (longArray3 == null || (m3835u0 = C25225a.m3835u0(longArray3)) == null) {
                return;
            }
            this.f20084c.mo13223c("openConversation", m3835u0.longValue(), false);
        }
    }
}
