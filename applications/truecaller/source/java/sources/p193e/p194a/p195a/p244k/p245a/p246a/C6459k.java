package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.messenger.p138v1.GetEvents;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17748t0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6625s1;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.s;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.k */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/k.class */
public final class C6459k implements AbstractC6457i {

    /* renamed from: a */
    public final int f21445a;

    /* renamed from: b */
    public final AbstractC6625s1 f21446b;

    /* renamed from: c */
    public final ContentResolver f21447c;

    /* renamed from: d */
    public final AbstractC6392i0 f21448d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC19463a0> f21449e;

    /* renamed from: f */
    public AbstractC6503z f21450f;

    @Inject
    public C6459k(AbstractC6625s1 abstractC6625s1, ContentResolver contentResolver, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC6503z abstractC6503z) {
        l.e(abstractC6625s1, "messengerStubManager");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC6503z, "imUnprocessedHistoryManager");
        this.f21446b = abstractC6625s1;
        this.f21447c = contentResolver;
        this.f21448d = abstractC6392i0;
        this.f21449e = abstractC19854f;
        this.f21450f = abstractC6503z;
        this.f21445a = abstractC6392i0.mo31075f2();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6457i
    /* renamed from: a */
    public boolean mo30903a(String str) {
        l.e(str, "groupId");
        ContentResolver contentResolver = this.f21447c;
        Uri m28338C = C8582g0.m28338C();
        ContentValues contentValues = new ContentValues();
        contentValues.put("history_status", (Integer) 4);
        contentResolver.update(m28338C, contentValues, "im_group_id=? AND history_status = 2", new String[]{str});
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6457i
    /* renamed from: b */
    public void mo30902b(ImGroupInfo imGroupInfo, s1.z.b.l<? super Event, s> lVar) {
        C20458b.C20459a mo20911c;
        int i;
        l.e(imGroupInfo, "groupInfo");
        l.e(lVar, "consumer");
        int i2 = imGroupInfo.f13327i;
        if (i2 != 3) {
            if (i2 != 1 && i2 != 4) {
                return;
            }
            if (imGroupInfo.f13329k >= this.f21448d.mo31171N1()) {
                m30900d(imGroupInfo.f13319a, 3);
                this.f21450f.mo30826c(imGroupInfo.f13319a, imGroupInfo.f13328j);
                return;
            }
            mo20911c = this.f21446b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20458b.C20459a c20459a = mo20911c;
            if (c20459a == null) {
                return;
            }
            m30900d(imGroupInfo.f13319a, 2);
            long max = Math.max(imGroupInfo.f13328j - this.f21445a, 0L);
            try {
                GetEvents.Request.C3047a newBuilder = GetEvents.Request.newBuilder();
                InputPeer.C3289b newBuilder2 = InputPeer.newBuilder();
                InputPeer.Group.C3286a newBuilder3 = InputPeer.Group.newBuilder();
                newBuilder3.m35899a(imGroupInfo.f13319a);
                InputPeer.Group build = newBuilder3.build();
                newBuilder2.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder2).instance.setGroup(build);
                InputPeer build2 = newBuilder2.build();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(build2);
                long j = imGroupInfo.f13328j;
                int i3 = this.f21445a;
                long j2 = i3;
                if (j / j2 <= 0) {
                    i3 = (int) (j % j2);
                }
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setLimit(i3);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setSinceSeq(max);
                GetEvents.Response m11117h = c20459a.m11117h((GetEvents.Request) newBuilder.build());
                l.d(m11117h, "stub.getEvents(request)");
                if (m11117h.getEventsCount() == 0) {
                    m30900d(imGroupInfo.f13319a, 3);
                    return;
                }
                List<Event> eventsList = m11117h.getEventsList();
                l.d(eventsList, "response.eventsList");
                for (Event event : i.x0(eventsList)) {
                    l.d(event, "it");
                    lVar.d(event);
                }
                List<Event> eventsList2 = m11117h.getEventsList();
                l.d(eventsList2, "response.eventsList");
                if (!eventsList2.isEmpty()) {
                    Iterator<T> it = eventsList2.iterator();
                    int i4 = 0;
                    while (true) {
                        i = i4;
                        if (!it.hasNext()) {
                            break;
                        }
                        Event event2 = (Event) it.next();
                        l.d(event2, "it");
                        if (event2.getPayloadCase() == Event.PayloadCase.MESSAGE_SENT) {
                            i4++;
                            if (i4 < 0) {
                                i.M0();
                                throw null;
                            }
                        }
                    }
                } else {
                    i = 0;
                }
                long j3 = imGroupInfo.f13329k + i;
                List<Event> eventsList3 = m11117h.getEventsList();
                l.d(eventsList3, "response.eventsList");
                Object B = i.B(eventsList3);
                l.d(B, "response.eventsList.first()");
                mo30901c(imGroupInfo.f13319a, ((Event) B).getContextSeq(), 1, j3, null);
                String str = imGroupInfo.f13319a;
                int eventsCount = m11117h.getEventsCount();
                List<Event> eventsList4 = m11117h.getEventsList();
                l.d(eventsList4, "response.eventsList");
                Map<CharSequence, Integer> m3842s3 = C25225a.m3842s3(new LinkedHashMap(), C6458j.f21444b);
                for (Event event3 : eventsList4) {
                    m3842s3.put(event3.getPayloadCase().toString(), Integer.valueOf(((Number) i.H(m3842s3, event3.getPayloadCase().toString())).intValue() + 1));
                }
                boolean z = eventsCount < this.f21448d.mo31075f2() || j3 >= ((long) this.f21448d.mo31171N1());
                Schema schema = C17748t0.f50310g;
                C17748t0.C17750b c17750b = new C17748t0.C17750b(null);
                c17750b.validate(c17750b.fields()[2], str);
                c17750b.f50320a = str;
                c17750b.fieldSetFlags()[2] = true;
                int i5 = (int) max;
                c17750b.validate(c17750b.fields()[4], Integer.valueOf(i5));
                c17750b.f50322c = i5;
                c17750b.fieldSetFlags()[4] = true;
                c17750b.validate(c17750b.fields()[3], m3842s3);
                c17750b.f50321b = m3842s3;
                c17750b.fieldSetFlags()[3] = true;
                c17750b.validate(c17750b.fields()[5], Boolean.valueOf(z));
                c17750b.f50323d = z;
                c17750b.fieldSetFlags()[5] = true;
                this.f21449e.mo11854a().mo13111a(c17750b.build());
            } catch (RuntimeException e) {
                mo30901c(imGroupInfo.f13319a, imGroupInfo.f13328j, 4, imGroupInfo.f13329k, null);
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6457i
    /* renamed from: c */
    public boolean mo30901c(String str, long j, int i, long j2, Integer num) {
        l.e(str, "groupId");
        ContentValues contentValues = new ContentValues();
        contentValues.put("history_sequence_num", Long.valueOf(j));
        contentValues.put("history_status", Integer.valueOf(i));
        contentValues.put("history_message_count", Long.valueOf(j2));
        if (num != null) {
            contentValues.put("join_mode", num);
        }
        boolean z = true;
        if (this.f21447c.update(C8582g0.m28338C(), contentValues, "im_group_id=?", new String[]{str}) <= 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m30900d(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("history_status", Integer.valueOf(i));
        boolean z = true;
        if (this.f21447c.update(C8582g0.m28338C(), contentValues, "im_group_id=?", new String[]{str}) <= 0) {
            z = false;
        }
        return z;
    }
}
