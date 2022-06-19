package p193e.p194a.p195a.p200c;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImInviteGroupInfo;
import com.truecaller.messaging.data.types.Message;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.C6113f;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.c.o5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o5.class */
public final class C5627o5 implements AbstractC5585n5 {

    /* renamed from: a */
    public boolean f18924a;

    /* renamed from: b */
    public boolean f18925b;

    /* renamed from: c */
    public ConversationMode f18926c;

    /* renamed from: f */
    public Long f18929f;

    /* renamed from: g */
    public C6113f f18930g;

    /* renamed from: i */
    public final Long f18932i;

    /* renamed from: m */
    public Conversation f18936m;

    /* renamed from: o */
    public final Long f18938o;

    /* renamed from: d */
    public final Map<Long, String> f18927d = new LinkedHashMap();

    /* renamed from: e */
    public final Map<String, ImInviteGroupInfo> f18928e = new LinkedHashMap();

    /* renamed from: h */
    public int f18931h = 1;

    /* renamed from: j */
    public final Comparator<Message> f18933j = C5628a.f18939a;

    /* renamed from: k */
    public final Map<Long, Message> f18934k = new LinkedHashMap();

    /* renamed from: l */
    public Participant[] f18935l = new Participant[0];

    /* renamed from: n */
    public boolean f18937n = true;

    /* renamed from: e.a.a.c.o5$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o5$a.class */
    public static final class C5628a<T> implements Comparator<Message> {

        /* renamed from: a */
        public static final C5628a f18939a = new C5628a();

        @Override // java.util.Comparator
        public int compare(Message message, Message message2) {
            Message message3 = message;
            Message message4 = message2;
            Integer valueOf = Integer.valueOf(message3.f13384e.a(message4.f13384e));
            if (valueOf.intValue() == 0) {
                valueOf = null;
            }
            return valueOf != null ? valueOf.intValue() : (message3.f13380a > message4.f13380a ? 1 : (message3.f13380a == message4.f13380a ? 0 : -1));
        }
    }

    public C5627o5(ConversationMode conversationMode, Long l, Long l2) {
        l.e(conversationMode, "conversationMode");
        this.f18938o = l;
        this.f18926c = conversationMode;
        this.f18932i = l2;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: A */
    public boolean mo32874A() {
        return this.f18937n;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: B */
    public boolean mo32873B() {
        return this.f18924a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: C */
    public int mo32872C() {
        return this.f18934k.size();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: D */
    public Long mo32871D() {
        return this.f18932i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: E */
    public boolean mo32870E() {
        return !this.f18934k.isEmpty();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: F */
    public boolean mo32869F() {
        return this.f18925b;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: G */
    public ConversationMode mo32868G() {
        return this.f18926c;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: H */
    public boolean mo32867H() {
        Participant[] participantArr = this.f18935l;
        boolean z = true;
        if (participantArr != null) {
            Participant participant = (Participant) C25225a.m3830v0(participantArr);
            z = true;
            if (participant != null) {
                int i = participant.f11569b;
                if (i == 3) {
                    z = participant.m35450i();
                } else if (i != 4) {
                    z = true;
                } else {
                    ImGroupInfo mo32857h = mo32857h();
                    z = mo32857h != null && !C10480a.m25989a1(mo32857h);
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: I */
    public void mo32866I(boolean z) {
        this.f18925b = z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: a */
    public void mo32865a(Draft draft) {
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: b */
    public Message[] mo32864b() {
        Object[] array = i.F0(this.f18934k.values(), this.f18933j).toArray(new Message[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (Message[]) array;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: c */
    public boolean mo32863c() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: d */
    public void mo32862d(Conversation conversation) {
        this.f18936m = conversation;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: d1 */
    public boolean mo32861d1() {
        Participant[] participantArr = this.f18935l;
        boolean z = false;
        if (participantArr != null) {
            int length = participantArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (participantArr[i].m35448l()) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: e */
    public void mo32860e(C6113f c6113f) {
        this.f18930g = c6113f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: f */
    public void mo32859f(Participant[] participantArr) {
        this.f18935l = participantArr;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: g */
    public Message mo32858g() {
        return this.f18934k.entrySet().iterator().next().getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    public int getFilter() {
        return this.f18931h;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    public Long getId() {
        Conversation conversation = this.f18936m;
        return conversation != null ? Long.valueOf(conversation.f13199a) : this.f18938o;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5, p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: h */
    public ImGroupInfo mo32857h() {
        Conversation conversation = this.f18936m;
        return conversation != null ? conversation.f13224z : null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: i */
    public void mo32856i(int i) {
        this.f18931h = i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: j */
    public void mo32855j(Message message) {
        l.e(message, "message");
        this.f18934k.put(Long.valueOf(message.f13380a), message);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: k */
    public void mo32854k(long j) {
        this.f18934k.remove(Long.valueOf(j));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5
    /* renamed from: l */
    public void mo32853l() {
        this.f18934k.clear();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5, p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: o */
    public Participant[] mo32852o() {
        return this.f18935l;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5, p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: p */
    public Conversation mo32851p() {
        return this.f18936m;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5, p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: q */
    public int mo32850q() {
        Participant[] participantArr = this.f18935l;
        return participantArr != null ? participantArr.length : 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5585n5, p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: r */
    public C6113f mo32849r() {
        return this.f18930g;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: s */
    public void mo32848s(boolean z) {
        this.f18924a = z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: t */
    public void mo32847t(Long l) {
        this.f18929f = l;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: u */
    public Long mo32846u() {
        return this.f18929f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: v */
    public boolean mo32845v(long j) {
        return this.f18934k.containsKey(Long.valueOf(j));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: w */
    public Map<String, ImInviteGroupInfo> mo32844w() {
        return this.f18928e;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: x */
    public void mo32843x(boolean z) {
        this.f18937n = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32842y(int r4) {
        /*
            r3 = this;
            r0 = r3
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.f18935l
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L42
            r0 = r5
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
        L12:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L30
            r0 = r5
            r1 = r8
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            boolean r0 = r0.m35448l()
            if (r0 == 0) goto L2a
            goto L33
        L2a:
            int r8 = r8 + 1
            goto L12
        L30:
            r0 = 0
            r9 = r0
        L33:
            r0 = r9
            if (r0 == 0) goto L42
            r0 = r9
            int r0 = r0.f11593z
            r8 = r0
            goto L45
        L42:
            r0 = -1
            r8 = r0
        L45:
            r0 = r4
            r1 = r8
            r0 = r0 & r1
            if (r0 == 0) goto L4e
            r0 = 1
            r6 = r0
        L4e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5627o5.mo32842y(int):boolean");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: z */
    public Map<Long, String> mo32841z() {
        return this.f18927d;
    }
}
