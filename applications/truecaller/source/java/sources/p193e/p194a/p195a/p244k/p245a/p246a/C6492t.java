package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.os.Parcelable;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.ReactionContent;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.messaging.transport.p170im.SendReactionWorker;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import org.apache.avro.Schema;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17804x0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.t */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/t.class */
public final class C6492t implements AbstractC6491s {

    /* renamed from: a */
    public final ContentResolver f21500a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC6523c0> f21501b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC19463a0> f21502c;

    /* renamed from: d */
    public final AbstractC19462a f21503d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC6233m>> f21504e;

    /* renamed from: f */
    public final AbstractC6392i0 f21505f;

    /* renamed from: g */
    public final AbstractC26857y f21506g;

    @Inject
    public C6492t(ContentResolver contentResolver, AbstractC19854f<AbstractC6523c0> abstractC19854f, AbstractC19854f<AbstractC19463a0> abstractC19854f2, AbstractC19462a abstractC19462a, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC6392i0 abstractC6392i0, AbstractC26857y abstractC26857y) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC19854f, "imReactionManager");
        l.e(abstractC19854f2, "eventsTracker");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar, "messageStorage");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC26857y, "workManager");
        this.f21500a = contentResolver;
        this.f21501b = abstractC19854f;
        this.f21502c = abstractC19854f2;
        this.f21503d = abstractC19462a;
        this.f21504e = aVar;
        this.f21505f = abstractC6392i0;
        this.f21506g = abstractC26857y;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6491s
    /* renamed from: a */
    public C6702p mo30868a(Message message) {
        l.e(message, "message");
        TransportInfo transportInfo = message.f13393n;
        l.d(transportInfo, "message.getTransportInfo()");
        ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
        int i = imTransportInfo.f13745r;
        return i != 2000 ? i != 2001 ? null : m30863f(imTransportInfo, false) : m30863f(imTransportInfo, true);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6491s
    /* renamed from: b */
    public void mo30867b(Intent intent) {
        String str;
        String string;
        l.e(intent, "intent");
        Message message = (Message) intent.getParcelableExtra("message");
        if (message != null) {
            String stringExtra = intent.getStringExtra("emoji");
            String stringExtra2 = intent.getStringExtra("initiated_via");
            String mo31078f = this.f21505f.mo31078f();
            if (mo31078f == null) {
                return;
            }
            Cursor query = this.f21500a.query(C8582g0.m28305o(2), new String[]{"raw_id"}, "_id = ?", new String[]{String.valueOf(message.f13380a)}, null);
            if (query != null) {
                try {
                    String string2 = query.moveToFirst() ? query.getString(0) : null;
                    C25225a.m4016G(query, null);
                    str = string2;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                str = null;
            }
            if (str == null) {
                return;
            }
            query = this.f21500a.query(C17891a1.C17897f.m15702a(), new String[]{"tc_group_id"}, "_id=?", new String[]{String.valueOf(message.f13381b)}, null);
            if (query != null) {
                try {
                    string = query.moveToFirst() ? query.getString(0) : null;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                string = null;
            }
            boolean z = true;
            if (message.f13382c.f11570c == null) {
                z = string != null;
            }
            AssertionUtil.isTrue(z, "imPeerId or imGroupId must be set for sending reaction");
            m30862g(new Reaction(0L, message.f13380a, mo31078f, stringExtra, System.currentTimeMillis(), 2, 0L, null, 193), str, false);
            m30864e(this.f21505f.mo31078f(), stringExtra, stringExtra2, "outgoing");
            AbstractC26857y abstractC26857y = this.f21506g;
            EnumC26832h enumC26832h = EnumC26832h.APPEND;
            long j = message.f13380a;
            long j2 = message.f13382c.f11568a;
            l.e(str, "rawId");
            l.e(mo31078f, "fromPeerId");
            C26842r.C26843a m1269e = new C26842r.C26843a(SendReactionWorker.class).m1269e(EnumC26674a.EXPONENTIAL, 30L, TimeUnit.SECONDS);
            HashMap m8667T = C22128a.m8667T("raw_id", str);
            m8667T.put("message_id", Long.valueOf(j));
            m8667T.put("from_peer_id", mo31078f);
            m8667T.put("particpant_id", Long.valueOf(j2));
            m8667T.put("to_group_id", string);
            m8667T.put("emoji", stringExtra);
            C26829f c26829f = new C26829f(m8667T);
            C26829f.m1300g(c26829f);
            m1269e.f75127c.f74906e = c26829f;
            m1269e.f75128d.add("send_im_reaction");
            C26825d.C26826a c26826a = new C26825d.C26826a();
            c26826a.f75068c = EnumC26841q.CONNECTED;
            m1269e.f75127c.f74911j = new C26825d(c26826a);
            C26842r m1272b = m1269e.m1272b();
            l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
            abstractC26857y.m1279i("SendReaction", enumC26832h, m1272b);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6491s
    /* renamed from: c */
    public void mo30866c(Event.ReactionSent reactionSent, boolean z, boolean z2) {
        l.e(reactionSent, "reactionSent");
        ReactionContent content = reactionSent.getContent();
        l.d(content, "reactionSent.content");
        String refMessageId = content.getRefMessageId();
        l.d(refMessageId, "reactionSent.content.refMessageId");
        ReactionContent content2 = reactionSent.getContent();
        l.d(content2, "reactionSent.content");
        ReactionContent.Emoji emoji = content2.getEmoji();
        l.d(emoji, "reactionSent.content.emoji");
        String value = emoji.getValue();
        l.d(value, "reactionSent.content.emoji.value");
        Peer sender = reactionSent.getSender();
        l.d(sender, "reactionSent.sender");
        Peer.User user = sender.getUser();
        l.d(user, "reactionSent.sender.user");
        String id = user.getId();
        l.d(id, "reactionSent.sender.user.id");
        long millis = TimeUnit.SECONDS.toMillis(reactionSent.getDate());
        Peer recipient = reactionSent.getRecipient();
        l.d(recipient, "reactionSent.recipient");
        Peer.Group group = recipient.getGroup();
        l.d(group, "reactionSent.recipient.group");
        l.d(group.getId(), "reactionSent.recipient.group.id");
        int i = 1;
        if (z2 || z) {
            i = 0;
        }
        m30862g(new Reaction(0L, 0L, id, value, millis, i, 0L, null, 195), refMessageId, true);
        m30864e(id, value, null, "incoming");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6491s
    /* renamed from: d */
    public void mo30865d(Intent intent) {
        l.e(intent, "intent");
        Parcelable parcelableExtra = intent.getParcelableExtra("reaction");
        if (parcelableExtra != null) {
            Reaction reaction = (Reaction) parcelableExtra;
            String stringExtra = intent.getStringExtra("raw_id");
            if (stringExtra == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            m30862g(reaction, stringExtra, false);
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* renamed from: e */
    public final void m30864e(String str, String str2, String str3, String str4) {
        AbstractC19463a0 mo11854a = this.f21502c.mo11854a();
        Schema schema = C17804x0.f50619g;
        C17804x0.C17806b c17806b = new C17804x0.C17806b(null);
        if (str2 == null) {
            str2 = "";
        }
        c17806b.validate(c17806b.fields()[3], str2);
        c17806b.f50630b = str2;
        c17806b.fieldSetFlags()[3] = true;
        c17806b.validate(c17806b.fields()[2], str);
        c17806b.f50629a = str;
        c17806b.fieldSetFlags()[2] = true;
        c17806b.validate(c17806b.fields()[4], str4);
        c17806b.f50631c = str4;
        c17806b.fieldSetFlags()[4] = true;
        if (str3 == null) {
            str3 = "";
        }
        c17806b.validate(c17806b.fields()[5], str3);
        c17806b.f50632d = str3;
        c17806b.fieldSetFlags()[5] = true;
        mo11854a.mo13111a(c17806b.build());
    }

    /* renamed from: f */
    public final C6702p m30863f(ImTransportInfo imTransportInfo, boolean z) {
        Reaction[] reactionArr = imTransportInfo.f13738k;
        if (reactionArr != null) {
            this.f21501b.mo11854a().mo30799g(imTransportInfo.f13729b, reactionArr).mo11831c();
            return new C6702p(true, z, z, null);
        }
        return new C6702p(false, false, false, null);
    }

    /* renamed from: g */
    public final void m30862g(Reaction reaction, String str, boolean z) {
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.f13423c = Participant.f11566B;
        int i = z ? 2000 : 2001;
        l.e(str, "rawId");
        l.e(reaction, "reaction");
        Object[] array = i.d0(new Reaction[]{reaction}).toArray(new Reaction[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        ImTransportInfo imTransportInfo = new ImTransportInfo(0L, str, 0, 0, 0, 0, 0, 0, 0, 0L, (Reaction[]) array, 0L, 0, 0, null, null, 0, i, null);
        c4209b.f13431k = 2;
        c4209b.f13434n = imTransportInfo;
        Message m35012a = c4209b.m35012a();
        l.d(m35012a, "Message.Builder()\n      …   )\n            .build()");
        ((AbstractC6233m) ((AbstractC19854f) this.f21504e.get()).mo11854a()).mo31694d0(m35012a, false);
    }
}
