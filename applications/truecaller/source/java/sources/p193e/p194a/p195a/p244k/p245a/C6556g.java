package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.database.Cursor;
import com.google.protobuf.Int64Value;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.q;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/g.class */
public final class C6556g {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f21637a;

    /* renamed from: b */
    public final ContentResolver f21638b;

    /* renamed from: c */
    public final C20592g f21639c;

    /* renamed from: d */
    public final AbstractC8432l f21640d;

    /* renamed from: e */
    public final AbstractC6115g f21641e;

    /* renamed from: f */
    public final a<AbstractC19854f<AbstractC7343q>> f21642f;

    @Inject
    public C6556g(a<AbstractC19854f<AbstractC6233m>> aVar, ContentResolver contentResolver, C20592g c20592g, AbstractC8432l abstractC8432l, AbstractC6115g abstractC6115g, a<AbstractC19854f<AbstractC7343q>> aVar2) {
        l.e(aVar, "messagesStorage");
        l.e(contentResolver, "contentResolver");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(aVar2, "notificationsManager");
        this.f21637a = aVar;
        this.f21638b = contentResolver;
        this.f21639c = c20592g;
        this.f21640d = abstractC8432l;
        this.f21641e = abstractC6115g;
        this.f21642f = aVar2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final Conversation m30771a(String str) {
        Conversation mo31752p;
        Cursor query = this.f21638b.query(C8582g0.m28307m(new String[]{str}, 1), null, null, null, null);
        if (query != null) {
            try {
                AbstractC6126a mo31772t = this.f21641e.mo31772t(query);
                if (mo31772t != null) {
                    if (!mo31772t.moveToFirst()) {
                        mo31772t = null;
                    }
                    if (mo31772t != null) {
                        mo31752p = mo31772t.mo31752p();
                        C25225a.m4016G(query, null);
                        return mo31752p;
                    }
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        mo31752p = null;
        C25225a.m4016G(query, null);
        return mo31752p;
    }

    /* renamed from: b */
    public void m30770b(Event event, int i) {
        Event.PayloadCase payloadCase;
        Participant participant;
        l.e(event, "event");
        if (!m30769c(event) || (payloadCase = event.getPayloadCase()) == null) {
            return;
        }
        int ordinal = payloadCase.ordinal();
        if (ordinal == 0) {
            Event.MessageSent messageSent = event.getMessageSent();
            l.d(messageSent, "event.messageSent");
            Peer.User sender = messageSent.getSender();
            l.d(sender, "event.messageSent.sender");
            participant = C10480a.m25952h3(sender, Boolean.valueOf(C10480a.m25959g1(event, this.f21639c)), C10480a.m26051L(event));
        } else if (ordinal == 1) {
            Event.ReportSent reportSent = event.getReportSent();
            l.d(reportSent, "event.reportSent");
            String senderId = reportSent.getSenderId();
            l.d(senderId, "event.reportSent.senderId");
            Participant.C3848b c3848b = new Participant.C3848b(3);
            c3848b.f11598e = senderId;
            c3848b.f11596c = senderId;
            participant = c3848b.m35443a();
            l.d(participant, "Participant.Builder(True…PeerId(imId)\n    .build()");
        } else if (ordinal == 2) {
            Event.ReactionSent reactionSent = event.getReactionSent();
            l.d(reactionSent, "event.reactionSent");
            Peer sender2 = reactionSent.getSender();
            l.d(sender2, "event.reactionSent.sender");
            participant = C10480a.m25947i3(sender2);
        } else if (ordinal != 9) {
            return;
        } else {
            Event.UserTyping userTyping = event.getUserTyping();
            l.d(userTyping, "event.userTyping");
            Peer.User sender3 = userTyping.getSender();
            l.d(sender3, "event.userTyping.sender");
            participant = C10480a.m25952h3(sender3, null, null);
        }
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.f13423c = participant;
        ImTransportInfo imTransportInfo = new ImTransportInfo(0L, "", 0, 0, 0, 0, 0, 0, 0, 0L, null, 0L, 0, 0, null, null, 0, i, null);
        c4209b.f13431k = 2;
        c4209b.f13434n = imTransportInfo;
        c4209b.f13437q = false;
        Message m35012a = c4209b.m35012a();
        l.d(m35012a, "Message.Builder()\n      …\n                .build()");
        ((AbstractC6233m) ((AbstractC19854f) this.f21637a.get()).mo11854a()).mo31694d0(m35012a, false);
    }

    /* renamed from: c */
    public boolean m30769c(Event event) {
        List<Int64Value> list;
        Long j;
        Int64Value of;
        l.e(event, "event");
        Event.PayloadCase payloadCase = event.getPayloadCase();
        if (payloadCase == null) {
            return false;
        }
        int ordinal = payloadCase.ordinal();
        if (ordinal == 0) {
            Event.MessageSent messageSent = event.getMessageSent();
            l.d(messageSent, "event.messageSent");
            list = messageSent.getKnownPhoneNumbersList();
            l.d(list, "event.messageSent.knownPhoneNumbersList");
        } else if (ordinal == 1) {
            Event.ReportSent reportSent = event.getReportSent();
            l.d(reportSent, "event.reportSent");
            list = reportSent.getKnownPhoneNumbersList();
            l.d(list, "event.reportSent.knownPhoneNumbersList");
        } else if (ordinal == 2) {
            Event.ReactionSent reactionSent = event.getReactionSent();
            l.d(reactionSent, "event.reactionSent");
            list = reactionSent.getKnownPhoneNumbersList();
            l.d(list, "event.reactionSent.knownPhoneNumbersList");
        } else if (ordinal != 9) {
            return false;
        } else {
            Event.UserTyping userTyping = event.getUserTyping();
            l.d(userTyping, "event.userTyping");
            list = userTyping.getKnownPhoneNumbersList();
            l.d(list, "event.userTyping.knownPhoneNumbersList");
        }
        String mo28570n = this.f21640d.mo28570n();
        if (mo28570n != null && (j = q.j(r.t(mo28570n, "+", "", false, 4))) != null && (of = Int64Value.of(j.longValue())) != null) {
            return list.contains(of);
        }
        return false;
    }
}
