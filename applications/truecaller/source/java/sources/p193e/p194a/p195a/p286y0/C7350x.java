package p193e.p194a.p195a.p286y0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.notifications.ReactionBroadcastReceiver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26452s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.AbstractC15287q;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.y0.x */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/x.class */
public final class C7350x implements AbstractC7347u {

    /* renamed from: a */
    public final Context f23430a;

    /* renamed from: b */
    public final AbstractC15287q f23431b;

    /* renamed from: c */
    public final AbstractC15275e f23432c;

    /* renamed from: d */
    public final AbstractC19022f0 f23433d;

    @Inject
    public C7350x(Context context, AbstractC15287q abstractC15287q, AbstractC15275e abstractC15275e, AbstractC19022f0 abstractC19022f0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15287q, "notificationIconHelper");
        l.e(abstractC15275e, "notificationManager");
        l.e(abstractC19022f0, "deviceManager");
        this.f23430a = context;
        this.f23431b = abstractC15287q;
        this.f23432c = abstractC15275e;
        this.f23433d = abstractC19022f0;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7347u
    /* renamed from: a */
    public void mo29749a(Map<Reaction, ? extends Participant> map) {
        boolean z;
        l.e(map, "reactionWithParticipant");
        Set<Reaction> keySet = map.keySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : keySet) {
            Long valueOf = Long.valueOf(((Reaction) obj).f13457g);
            Object obj2 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Iterable<Reaction> iterable = (Iterable) entry.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                for (Reaction reaction : iterable) {
                    if (reaction.f13456f == 1) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (!z) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : ((TreeMap) C25225a.m3877l3(linkedHashMap2, new C7348v(linkedHashMap2))).entrySet()) {
            Long l = (Long) entry2.getKey();
            List list = (List) entry2.getValue();
            l.d(list, "reactions");
            List<Reaction> x0 = i.x0(list);
            C26452s c26452s = new C26452s();
            c26452s.m1839m(this.f23430a.getResources().getQuantityString(C2752R.plurals.reactions_notification_summary_title, x0.size(), Integer.valueOf(x0.size())));
            Reaction reaction2 = (Reaction) i.B(x0);
            Participant participant = map.get(reaction2);
            if (participant == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(x0, 10));
            for (Reaction reaction3 : x0) {
                arrayList2.add(Long.valueOf(reaction3.f13452b));
            }
            long[] U0 = i.U0(arrayList2);
            for (Reaction reaction4 : x0) {
                Participant participant2 = map.get(reaction4);
                if (participant2 != null) {
                    c26452s.m1841k(this.f23430a.getString(C2752R.string.reactions_notification_inbox_line, participant2.f11579l, reaction4.f13454d));
                }
            }
            C26450q c26450q = new C26450q(this.f23430a, this.f23432c.mo18973a("personal_chats"));
            c26450q.f74137R.icon = 2131232129;
            Context context = this.f23430a;
            Object obj3 = C26467a.f74235a;
            c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131099684);
            String str = reaction2.f13458h;
            if (str == null) {
                str = participant.f11579l;
            }
            c26450q.m1855n(str);
            c26450q.m1856m(this.f23430a.getString(C2752R.string.reactions_notification_inbox_line, participant.f11579l, reaction2.f13454d));
            c26450q.m1854o(-1);
            c26450q.f74152l = 1;
            c26450q.f74147g = ConversationActivity.C4167a.m35127c(ConversationActivity.f13017e, this.f23430a, reaction2.f13457g, reaction2.f13452b, null, false, false, false, null, null, null, 1016);
            Context context2 = this.f23430a;
            int i = (int) reaction2.f13452b;
            l.e(context2, AnalyticsConstants.CONTEXT);
            l.e(U0, "messageIds");
            Intent intent = new Intent(context2, ReactionBroadcastReceiver.class);
            intent.setAction("com.truecaller.mark_as_seen");
            intent.putExtra("message_ids", U0);
            PendingIntent broadcast = PendingIntent.getBroadcast(context2, i, intent, 201326592);
            l.d(broadcast, "PendingIntent.getBroadca…ingIntent.FLAG_IMMUTABLE)");
            c26450q.f74137R.deleteIntent = broadcast;
            c26450q.m1853p(16, true);
            c26450q.f74137R.when = reaction2.f13455e;
            l.d(c26450q, "Builder(context, channel…  .setWhen(reaction.date)");
            c26450q.m1845x(c26452s);
            l.d(c26450q, "buildNotification(lastRe…Ids).setStyle(inboxStyle)");
            AbstractC15275e abstractC15275e = this.f23432c;
            long longValue = l.longValue();
            Notification mo18955a = this.f23431b.mo18955a(c26450q, new C7349w(participant, this, map));
            l.d(mo18955a, "notificationIconHelper.c…Avatar(lastParticipant) }");
            abstractC15275e.mo18965i(String.valueOf(longValue), C2752R.C2754id.im_reaction_notification_id, mo18955a, "notificationIncomingReaction");
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7347u
    /* renamed from: b */
    public void mo29748b(long j) {
        this.f23432c.mo18972b(String.valueOf(j), C2752R.C2754id.im_reaction_notification_id);
    }
}
