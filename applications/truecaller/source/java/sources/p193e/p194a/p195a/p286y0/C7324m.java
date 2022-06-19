package p193e.p194a.p195a.p286y0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.filters.sync.TopSpammer;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p195a.p199b1.AbstractC5007b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p837h0.AbstractC14856t;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.y0.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/m.class */
public final class C7324m implements AbstractC7323l {

    /* renamed from: a */
    public final AbstractC19022f0 f23363a;

    /* renamed from: b */
    public final AbstractC19230g f23364b;

    /* renamed from: c */
    public final AbstractC19321u f23365c;

    /* renamed from: d */
    public final AbstractC21204d f23366d;

    /* renamed from: e */
    public final AbstractC5007b f23367e;

    /* renamed from: f */
    public final AbstractC14856t f23368f;

    /* renamed from: g */
    public final AbstractC7320j f23369g;

    /* renamed from: h */
    public final C16461b f23370h;

    @Inject
    public C7324m(AbstractC19022f0 abstractC19022f0, AbstractC19230g abstractC19230g, AbstractC19321u abstractC19321u, AbstractC21204d abstractC21204d, AbstractC5007b abstractC5007b, AbstractC14856t abstractC14856t, AbstractC7320j abstractC7320j, C16461b c16461b) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC21204d, "contactStalenessHelper");
        l.e(abstractC5007b, "participantSearchHelper");
        l.e(abstractC14856t, "topSpammerRepository");
        l.e(abstractC7320j, "analyticsHelper");
        l.e(c16461b, "aggregatedContactDao");
        this.f23363a = abstractC19022f0;
        this.f23364b = abstractC19230g;
        this.f23365c = abstractC19321u;
        this.f23366d = abstractC21204d;
        this.f23367e = abstractC5007b;
        this.f23368f = abstractC14856t;
        this.f23369g = abstractC7320j;
        this.f23370h = c16461b;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7323l
    /* renamed from: a */
    public Map<Conversation, List<Message>> mo29781a(Map<Conversation, ? extends List<Message>> map) {
        l.e(map, "conversations");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Conversation, ? extends List<Message>> entry : map.entrySet()) {
            i.b(arrayList, entry.getValue());
        }
        Map<String, Participant> mo29780b = mo29780b(arrayList);
        ArrayList arrayList2 = new ArrayList(map.size());
        for (Map.Entry<Conversation, ? extends List<Message>> entry2 : map.entrySet()) {
            Conversation key = entry2.getKey();
            List<Message> value = entry2.getValue();
            Objects.requireNonNull(key);
            Conversation.C4191b c4191b = new Conversation.C4191b(key);
            Participant[] participantArr = key.f13211m;
            l.d(participantArr, "conversation.participants");
            ArrayList arrayList3 = new ArrayList(participantArr.length);
            for (Participant participant : participantArr) {
                Participant participant2 = (Participant) ((LinkedHashMap) mo29780b).get(participant.f11572e);
                if (participant2 != null) {
                    participant = participant2;
                }
                arrayList3.add(participant);
            }
            c4191b.f13249m.clear();
            c4191b.f13249m.addAll(arrayList3);
            Conversation m35063b = c4191b.m35063b();
            l.d(m35063b, "conversation.buildUpon()…\n                .build()");
            ArrayList arrayList4 = new ArrayList(C25225a.m4004J(value, 10));
            for (Message message : value) {
                Message.C4209b m35024b = message.m35024b();
                String str = message.f13382c.f11572e;
                l.d(str, "it.participant.normalizedAddress");
                m35024b.f13423c = (Participant) i.H(mo29780b, str);
                arrayList4.add(m35024b.m35012a());
            }
            arrayList2.add(new k(m35063b, arrayList4));
        }
        return i.V0(arrayList2);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7323l
    /* renamed from: b */
    public Map<String, Participant> mo29780b(List<Message> list) {
        Participant participant;
        l.e(list, "messages");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            String str = ((Message) obj).f13382c.f11572e;
            Object obj2 = linkedHashMap.get(str);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = C22128a.m8673R(linkedHashMap, str);
            }
            ((List) arrayList).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key = entry.getKey();
            List<Message> list2 = (List) entry.getValue();
            Participant participant2 = ((Message) i.B(list2)).f13382c;
            l.d(participant2, "messages.first().participant");
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list2, 10));
            for (Message message : list2) {
                arrayList2.add(Message.m35022d(message.f13393n.mo34881k0(), message.f13384e));
            }
            String str2 = this.f23364b.mo13794c() ? RemoteMessageConst.NOTIFICATION : "notificationNotDefault";
            if (!this.f23365c.mo13429d()) {
                this.f23369g.mo29782a(new k<>(participant2, this.f23370h.m17367e(participant2.f11575h)), "noConnection", str2, arrayList2);
                participant = participant2;
            } else if (!this.f23363a.mo14245a()) {
                this.f23369g.mo29782a(new k<>(participant2, this.f23370h.m17367e(participant2.f11575h)), "noAccount", str2, arrayList2);
                participant = participant2;
            } else {
                int i = participant2.f11569b;
                boolean z = true;
                if (i != 0 && i != 1 && i != 3) {
                    this.f23369g.mo29782a(new k<>(participant2, this.f23370h.m17367e(participant2.f11575h)), "notNumber", str2, arrayList2);
                    participant = participant2;
                } else if (!this.f23366d.mo10137c(participant2)) {
                    this.f23369g.mo29782a(new k<>(participant2, this.f23370h.m17367e(participant2.f11575h)), "validCacheResult", str2, arrayList2);
                    participant = participant2;
                } else {
                    C14030t mo34012b = this.f23367e.mo34012b(participant2, str2, arrayList2);
                    Contact m20837a = mo34012b != null ? mo34012b.m20837a() : null;
                    if (m20837a != null) {
                        if (participant2.f11569b == 1) {
                            z = false;
                        }
                        Participant.C3848b m35454e = participant2.m35454e();
                        m35454e.f11605l = z ? m20837a.m35491w() : C10480a.m25885v0(participant2);
                        m35454e.f11607n = participant2.f11581n & m20837a.getSource();
                        m35454e.f11606m = m20837a.m35573B();
                        m35454e.f11609p = m20837a.m35533a0();
                        participant = m35454e.m35443a();
                    } else {
                        participant = participant2;
                        if (participant2.f11577j) {
                            AbstractC14856t abstractC14856t = this.f23368f;
                            String str3 = participant2.f11572e;
                            l.d(str3, "participant.normalizedAddress");
                            TopSpammer mo19522c = abstractC14856t.mo19522c(str3);
                            participant = participant2;
                            if (mo19522c != null) {
                                Participant.C3848b m35454e2 = participant2.m35454e();
                                String label = mo19522c.getLabel();
                                if (label == null) {
                                    label = participant2.f11579l;
                                }
                                m35454e2.f11605l = label;
                                Integer reports = mo19522c.getReports();
                                m35454e2.f11609p = reports != null ? reports.intValue() : participant2.f11583p;
                                participant = m35454e2.m35443a();
                            }
                        }
                    }
                }
            }
            linkedHashMap2.put(key, participant);
        }
        return linkedHashMap2;
    }
}
