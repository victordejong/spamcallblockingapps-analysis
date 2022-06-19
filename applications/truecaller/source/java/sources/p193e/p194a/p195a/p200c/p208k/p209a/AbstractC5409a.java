package p193e.p194a.p195a.p200c.p208k.p209a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5062a7;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.AbstractC5769t7;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5732i;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.a.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/a.class */
public abstract class AbstractC5409a implements AbstractC5418j {

    /* renamed from: a */
    public final AbstractC5524m5 f18495a;

    /* renamed from: b */
    public final AbstractC5484l5 f18496b;

    /* renamed from: c */
    public final AbstractC6708t f18497c;

    /* renamed from: d */
    public final AbstractC5769t7 f18498d;

    /* renamed from: e */
    public final AbstractC5794w3 f18499e;

    /* renamed from: f */
    public final AbstractC5418j.AbstractC5420b f18500f;

    /* renamed from: g */
    public final AbstractC5418j.AbstractC5419a f18501g;

    public AbstractC5409a(AbstractC5524m5 abstractC5524m5, AbstractC5484l5 abstractC5484l5, AbstractC6708t abstractC6708t, AbstractC5769t7 abstractC5769t7, AbstractC5794w3 abstractC5794w3, AbstractC5418j.AbstractC5420b abstractC5420b, AbstractC5418j.AbstractC5419a abstractC5419a, C20592g c20592g) {
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5769t7, "viewProvider");
        l.e(abstractC5794w3, "items");
        l.e(abstractC5420b, "listener");
        l.e(abstractC5419a, "actionModeListener");
        l.e(c20592g, "featuresRegistry");
        this.f18495a = abstractC5524m5;
        this.f18496b = abstractC5484l5;
        this.f18497c = abstractC6708t;
        this.f18498d = abstractC5769t7;
        this.f18499e = abstractC5794w3;
        this.f18500f = abstractC5420b;
        this.f18501g = abstractC5419a;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: D */
    public void mo33167D(String str) {
        l.e(str, "url");
        this.f18500f.mo32743D(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: K */
    public void mo33166K() {
        this.f18500f.mo32732K();
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: K0 */
    public void mo33165K0(Message message) {
        l.e(message, "message");
        this.f18500f.mo32731K0(message);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: P0 */
    public void mo33164P0(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        this.f18500f.mo32720P0(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: Q0 */
    public void mo33163Q0(Message message) {
        if (message != null) {
            this.f18500f.mo32718Q0(message);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: S0 */
    public void mo33162S0(String str) {
        l.e(str, "inviteKey");
        this.f18500f.mo32713S0(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: V0 */
    public void mo33161V0(String str) {
        l.e(str, "number");
        this.f18500f.mo32709V0(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: Z0 */
    public void mo33160Z0(String str) {
        l.e(str, "link");
        this.f18500f.mo32708Z0(str);
    }

    /* renamed from: a */
    public boolean mo32978a() {
        return true;
    }

    /* renamed from: b */
    public boolean mo32977b() {
        return true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: c */
    public void mo14342c(Object obj) {
        l.e((AbstractC5062a7) obj, "itemView");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: e */
    public void mo33132e(String str, boolean z, String str2) {
        l.e(str, "senderId");
        l.e(str2, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: f */
    public boolean mo32979f() {
        return true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f18499e.getCount();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        return item != null ? item.getId() : (char) 65535;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: h */
    public void mo33126h(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        AbstractC6225a abstractC6225a = item;
        if (!(item instanceof Message)) {
            abstractC6225a = null;
        }
        Message message = (Message) abstractC6225a;
        if (message != null) {
            if (!this.f18495a.mo32870E()) {
                this.f18501g.mo32967s4(message);
            } else if (!this.f18495a.mo32873B()) {
            } else {
                C10480a.m26013U1(this.f18501g, message, false, 2, null);
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: h1 */
    public void mo33159h1(Entity entity, Message message) {
        if (entity == null || entity.f13308c != 0 || message == null) {
            return;
        }
        this.f18500f.mo32700h1(entity, message);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: i */
    public void mo33158i(Message message, String str) {
        l.e(message, "message");
        l.e(str, "action");
        this.f18500f.mo32696i(message, str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: i1 */
    public void mo33157i1(Entity entity, PlayerVisualizerView playerVisualizerView, AbstractC5732i abstractC5732i) {
        l.e(playerVisualizerView, "visualizer");
        l.e(abstractC5732i, "playbackInfoListener");
        this.f18500f.mo32695i1(entity, playerVisualizerView, abstractC5732i);
    }

    /* renamed from: j */
    public boolean mo32976j() {
        return true;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: k */
    public void mo33156k(double d, double d2, String str, int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        AbstractC6225a abstractC6225a = item;
        if (!(item instanceof Message)) {
            abstractC6225a = null;
        }
        this.f18500f.mo32741Ea(d, d2, str, (Message) abstractC6225a);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: k0 */
    public void mo33155k0(Message message) {
        l.e(message, "message");
        this.f18500f.mo32692k0(message);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: k1 */
    public void mo33154k1(String str) {
        l.e(str, "url");
        this.f18500f.mo32691k1(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: l */
    public void mo33153l(int i, int i2) {
        Mention mention;
        String imId;
        AbstractC6225a item = this.f18499e.getItem(i2);
        if (!(item instanceof Message)) {
            item = null;
        }
        Message message = (Message) item;
        if (message != null) {
            Mention[] mentionArr = message.f13395p;
            l.d(mentionArr, "message.mentions");
            int length = mentionArr.length;
            int i3 = 0;
            while (true) {
                mention = null;
                if (i3 >= length) {
                    break;
                }
                mention = mentionArr[i3];
                boolean z = true;
                if (mention.getOffset() != i + 1) {
                    z = false;
                }
                if (z) {
                    break;
                }
                i3++;
            }
            if (mention == null || (imId = mention.getImId()) == null) {
                return;
            }
            this.f18500f.mo32740F9(imId);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: n */
    public void mo33125n(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        AbstractC6225a abstractC6225a = item;
        if (!(item instanceof Message)) {
            abstractC6225a = null;
        }
        Message message = (Message) abstractC6225a;
        if (message != null) {
            if (!this.f18495a.mo32873B()) {
                if (message.f13386g == 9) {
                    this.f18501g.mo32969ab(message);
                    return;
                } else {
                    this.f18501g.mo32971A3(message, false);
                    return;
                }
            }
            if (this.f18495a.mo32873B() || this.f18495a.mo32845v(message.f13380a)) {
                C10480a.m26013U1(this.f18501g, message, false, 2, null);
            }
            if (this.f18495a.mo32872C() != 1 || this.f18495a.mo32873B()) {
                return;
            }
            this.f18501g.mo32968e();
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: o */
    public void mo14341o(Object obj) {
        l.e((AbstractC5062a7) obj, "itemView");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: p */
    public void mo14340p(Object obj) {
        l.e((AbstractC5062a7) obj, "itemView");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: q */
    public void mo33152q(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        AbstractC6225a abstractC6225a = item;
        if (!(item instanceof Message)) {
            abstractC6225a = null;
        }
        Message message = (Message) abstractC6225a;
        if (message != null) {
            this.f18500f.mo32724N7(message);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: q0 */
    public void mo33151q0(Message message, Entity entity) {
        this.f18500f.mo32683q0(message, entity);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (((com.truecaller.messaging.data.types.Message) r8) == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (r8 != null) goto L14;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33172s(int r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r5
            if (r0 != 0) goto L2e
            r0 = r4
            e.a.a.c.w3 r0 = r0.f18499e
            r1 = r5
            e.a.a.g.l0.a r0 = r0.getItem(r1)
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof com.truecaller.messaging.data.types.Message
            if (r0 != 0) goto L20
            goto L23
        L20:
            r0 = r7
            r8 = r0
        L23:
            r0 = r8
            com.truecaller.messaging.data.types.Message r0 = (com.truecaller.messaging.data.types.Message) r0
            if (r0 == 0) goto L54
            goto L52
        L2e:
            r0 = r4
            e.a.a.c.w3 r0 = r0.f18499e
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            e.a.a.g.l0.a r0 = r0.getItem(r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof com.truecaller.messaging.data.types.Message
            if (r0 != 0) goto L4a
            r0 = r7
            r8 = r0
            goto L4a
        L4a:
            r0 = r8
            com.truecaller.messaging.data.types.Message r0 = (com.truecaller.messaging.data.types.Message) r0
            if (r0 != 0) goto L54
        L52:
            r0 = 1
            r6 = r0
        L54:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a.m33172s(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0113, code lost:
        if (r0.f13385f.P().m(r0.f13385f.P()) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x012b, code lost:
        if (r0.f13384e.P().m(r0.f13384e.P()) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0131, code lost:
        r15 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0215  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(p193e.p194a.p195a.p200c.AbstractC5062a7 r10, int r11) {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a.mo11464G(e.a.a.c.a7, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00be, code lost:
        if ((r0 - ((w3.b.a.e0.e) r0).a) >= java.util.concurrent.TimeUnit.MILLISECONDS.convert(60, java.util.concurrent.TimeUnit.MINUTES)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fa, code lost:
        if ((r0 - ((w3.b.a.e0.e) r0).a) >= java.util.concurrent.TimeUnit.MILLISECONDS.convert(60, java.util.concurrent.TimeUnit.MINUTES)) goto L33;
     */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33171u(com.truecaller.messaging.data.types.Message r8, int r9) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a.m33171u(com.truecaller.messaging.data.types.Message, int):boolean");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: v1 */
    public void mo33150v1(String str) {
        l.e(str, "link");
        this.f18500f.mo32678v1(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: x */
    public void mo33149x(Message message) {
        l.e(message, "message");
        this.f18501g.mo32971A3(message, true);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: y */
    public void mo14339y(Object obj) {
        l.e((AbstractC5062a7) obj, "itemView");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: z */
    public boolean mo33130z(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: z0 */
    public void mo33148z0(Message message, Entity entity) {
        this.f18500f.mo32673z0(message, entity);
    }
}
