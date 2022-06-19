package p193e.p194a.p195a.p237h1.p239o;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidOpenCommand;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.urgent.UrgentConversation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1270u2.p1271a.AbstractC20577c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p237h1.C6328g;
import p193e.p194a.p195a.p241i1.C6405h;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.h1.o.l */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/l.class */
public final class C6371l extends AbstractC20577c<AbstractC6369j, AbstractC6370k> implements AbstractC6368i {

    /* renamed from: e */
    public final List<UrgentConversation> f21224e = new ArrayList();

    /* renamed from: f */
    public final Set<AbstractC6367h> f21225f = new LinkedHashSet();

    /* renamed from: g */
    public final Set<AbstractC6359c> f21226g = new LinkedHashSet();

    /* renamed from: h */
    public final Map<Long, p1> f21227h = new LinkedHashMap();

    /* renamed from: i */
    public long f21228i = -1;

    /* renamed from: j */
    public long f21229j;

    /* renamed from: k */
    public final f f21230k;

    /* renamed from: l */
    public final AbstractC19223c0 f21231l;

    /* renamed from: m */
    public final AbstractC19222c f21232m;

    /* renamed from: n */
    public final AbstractC19230g f21233n;

    /* renamed from: o */
    public final AbstractC6392i0 f21234o;

    /* renamed from: p */
    public final AbstractC19510i0 f21235p;

    /* renamed from: q */
    public final C6328g f21236q;

    /* renamed from: e.a.a.h1.o.l$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/l$a.class */
    public static final class C6372a extends m implements l<UrgentConversation, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ long f21237b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6372a(long j) {
            super(1);
            this.f21237b = j;
        }

        /* renamed from: d */
        public Object m31385d(Object obj) {
            UrgentConversation urgentConversation = (UrgentConversation) obj;
            s1.z.c.l.e(urgentConversation, "it");
            return Boolean.valueOf(urgentConversation.f13900a.f13199a == this.f21237b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6371l(@Named("UI") f fVar, AbstractC19223c0 abstractC19223c0, AbstractC19222c abstractC19222c, AbstractC19230g abstractC19230g, AbstractC6392i0 abstractC6392i0, AbstractC19510i0 abstractC19510i0, C6328g c6328g) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19510i0, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(c6328g, "expiryHelper");
        this.f21230k = fVar;
        this.f21231l = abstractC19223c0;
        this.f21232m = abstractC19222c;
        this.f21233n = abstractC19230g;
        this.f21234o = abstractC6392i0;
        this.f21235p = abstractC19510i0;
        this.f21236q = c6328g;
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: B6 */
    public void mo31399B6(Conversation conversation) {
        int i;
        String str;
        AbstractC6369j abstractC6369j;
        AbstractC6369j abstractC6369j2;
        if (conversation == null) {
            return;
        }
        Iterator<UrgentConversation> it = this.f21224e.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (it.next().f13900a.f13199a == conversation.f13199a) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            UrgentConversation urgentConversation = this.f21224e.get(i2);
            this.f21224e.set(i2, UrgentConversation.m34877a(urgentConversation, null, urgentConversation.f13901b + 1, -1L, 1));
            p1 remove = this.f21227h.remove(Long.valueOf(conversation.f13199a));
            if (remove != null) {
                d.T(remove, (CancellationException) null, 1, (Object) null);
            }
        } else {
            this.f21224e.add(0, new UrgentConversation(conversation, 1, -1L));
        }
        m31394Kj();
        if (!this.f21225f.isEmpty()) {
            return;
        }
        if (this.f21233n.mo13780q() >= 26 && (abstractC6369j = (AbstractC6369j) this.f57687b) != null && abstractC6369j.mo31400d() && (abstractC6369j2 = (AbstractC6369j) this.f57687b) != null) {
            abstractC6369j2.mo31401c();
        }
        Iterator<T> it2 = this.f21224e.iterator();
        int i3 = 0;
        while (true) {
            i = i3;
            if (!it2.hasNext()) {
                break;
            }
            i3 = i + ((UrgentConversation) it2.next()).f13901b;
        }
        AbstractC6370k abstractC6370k = (AbstractC6370k) this.f57683a;
        if (abstractC6370k != null) {
            String mo13759k = this.f21231l.mo13759k(C2752R.plurals.urgent_message_received, i, new Object[0]);
            StringBuilder m8708H = C22128a.m8708H(mo13759k, "resourceProvider.getQuan…e_received, messageCount)");
            Participant[] participantArr = conversation.f13211m;
            s1.z.c.l.d(participantArr, "conversation.participants");
            Object m3845s0 = C25225a.m3845s0(participantArr);
            s1.z.c.l.d(m3845s0, "conversation.participants.first()");
            m8708H.append(C6405h.m31301c((Participant) m3845s0));
            if (this.f21224e.size() != 1) {
                StringBuilder m8728C = C22128a.m8728C(StringConstant.SPACE);
                m8728C.append(this.f21231l.mo13768b(C2752R.string.StrMore, Integer.valueOf(this.f21224e.size() - 1)));
                str = m8728C.toString();
            } else {
                str = "";
            }
            m8708H.append(str);
            abstractC6370k.mo31376e(mo13759k, m8708H.toString());
        }
        AbstractC6370k abstractC6370k2 = (AbstractC6370k) this.f57683a;
        if (abstractC6370k2 == null) {
            return;
        }
        abstractC6370k2.mo31374g(true);
    }

    /* renamed from: Ij */
    public final void m31398Ij(long j) {
        i.w0(this.f21224e, new C6372a(j));
        m31394Kj();
        if (this.f21224e.isEmpty()) {
            mo31388qg(false);
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: J5 */
    public void mo31397J5(AbstractC6359c abstractC6359c) {
        s1.z.c.l.e(abstractC6359c, "listener");
        this.f21226g.remove(abstractC6359c);
    }

    /* renamed from: Jj */
    public final boolean m31396Jj(UrgentConversation urgentConversation) {
        C6328g c6328g = this.f21236q;
        long mo13821a = this.f21232m.mo13821a();
        Objects.requireNonNull(c6328g);
        s1.z.c.l.e(urgentConversation, "conversation");
        long j = urgentConversation.f13902c;
        return j >= 0 && mo13821a > c6328g.m31442a() + j;
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: K8 */
    public void mo31395K8() {
        AbstractC6369j abstractC6369j = (AbstractC6369j) this.f57687b;
        if (abstractC6369j != null) {
            abstractC6369j.mo31403a();
        }
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: Kj */
    public final void m31394Kj() {
        Object obj;
        int i;
        AbstractC6370k abstractC6370k = (AbstractC6370k) this.f57683a;
        if (abstractC6370k != null) {
            Iterator<T> it = this.f21224e.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                i2 = i + ((UrgentConversation) it.next()).f13901b;
            }
            abstractC6370k.mo31373h(i);
        }
        List<UrgentConversation> list = this.f21224e;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((UrgentConversation) obj2).f13902c >= 0) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            obj = null;
        } else {
            obj = it2.next();
            if (it2.hasNext()) {
                char c = ((UrgentConversation) obj).f13902c;
                Object obj3 = obj;
                do {
                    Object next = it2.next();
                    ?? r0 = ((UrgentConversation) next).f13902c;
                    obj = obj3;
                    char c2 = c;
                    if (c > r0) {
                        obj = next;
                        c2 = r0;
                    }
                    obj3 = obj;
                    c = c2;
                } while (it2.hasNext());
            }
        }
        UrgentConversation urgentConversation = (UrgentConversation) obj;
        if (urgentConversation == null) {
            AbstractC6370k abstractC6370k2 = (AbstractC6370k) this.f57683a;
            if (abstractC6370k2 != null) {
                abstractC6370k2.mo31381J();
            }
        } else {
            AbstractC6370k abstractC6370k3 = (AbstractC6370k) this.f57683a;
            if (abstractC6370k3 != null) {
                abstractC6370k3.mo31365t(urgentConversation.f13902c, this.f21236q.m31442a());
            }
        }
        for (AbstractC6367h abstractC6367h : this.f21225f) {
            abstractC6367h.mo31404W8(this.f21224e);
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: Nf */
    public void mo31393Nf(long j) {
        m31398Ij(j);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: Rc */
    public void mo31392Rc() {
        AbstractC6369j abstractC6369j = (AbstractC6369j) this.f57687b;
        if (abstractC6369j != null) {
            abstractC6369j.mo31403a();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.h1.o.k, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC6370k) obj;
        s1.z.c.l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo31380a(this.f21234o.mo31167O0(r0.mo31379b() * 0.7f));
        this.f21229j = this.f21232m.mo13819c();
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6352k
    /* renamed from: Zd */
    public void mo31391Zd(long j) {
        Object obj;
        if (j != this.f21228i) {
            Iterator<T> it = this.f21224e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((UrgentConversation) obj).f13900a.f13199a == this.f21228i) {
                    break;
                }
            }
            UrgentConversation urgentConversation = (UrgentConversation) obj;
            if (urgentConversation != null && m31396Jj(urgentConversation)) {
                m31398Ij(this.f21228i);
            }
        }
        this.f21228i = j;
        Iterator<UrgentConversation> it2 = this.f21224e.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (it2.next().f13900a.f13199a == j) {
                break;
            }
            i++;
        }
        if (i < 0) {
            return;
        }
        UrgentConversation urgentConversation2 = this.f21224e.get(i);
        Long valueOf = Long.valueOf(urgentConversation2.f13902c);
        boolean z = false;
        if (valueOf.longValue() >= 0) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        UrgentConversation m34877a = UrgentConversation.m34877a(urgentConversation2, null, 0, valueOf != null ? valueOf.longValue() : this.f21232m.mo13821a(), 1);
        this.f21224e.set(i, m34877a);
        long j2 = m34877a.f13900a.f13199a;
        p1 remove = this.f21227h.remove(Long.valueOf(j2));
        if (remove != null) {
            d.T(remove, (CancellationException) null, 1, (Object) null);
        }
        this.f21227h.put(Long.valueOf(j2), d.w2(this, (f) null, (j0) null, new C6373m(this, m34877a, j2, null), 3, (Object) null));
        m31394Kj();
        this.f21235p.mo13216j(MraidOpenCommand.NAME, Long.valueOf(this.f21232m.mo13819c() - this.f21229j));
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20577c, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC6370k abstractC6370k = (AbstractC6370k) this.f57683a;
        if (abstractC6370k != null) {
            abstractC6370k.mo31375f();
        }
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: c5 */
    public void mo31390c5(AbstractC6359c abstractC6359c) {
        s1.z.c.l.e(abstractC6359c, "listener");
        this.f21226g.add(abstractC6359c);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: e3 */
    public void mo31389e3(float f) {
        this.f21234o.mo31106a1(f);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: qg */
    public void mo31388qg(boolean z) {
        for (AbstractC6359c abstractC6359c : this.f21226g) {
            abstractC6359c.mo31408a();
        }
        AbstractC6369j abstractC6369j = (AbstractC6369j) this.f57687b;
        if (abstractC6369j != null) {
            abstractC6369j.mo31402b();
        }
        if (z) {
            this.f21235p.mo13216j("dismiss", Long.valueOf(this.f21232m.mo13819c() - this.f21229j));
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: qi */
    public void mo31387qi(AbstractC6367h abstractC6367h) {
        boolean z;
        s1.z.c.l.e(abstractC6367h, "listener");
        this.f21225f.remove(abstractC6367h);
        if (!this.f21225f.isEmpty()) {
            return;
        }
        List<UrgentConversation> list = this.f21224e;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (UrgentConversation urgentConversation : list) {
                if (!m31396Jj(urgentConversation)) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            mo31388qg(false);
            return;
        }
        mo31391Zd(-1L);
        AbstractC6370k abstractC6370k = (AbstractC6370k) this.f57683a;
        if (abstractC6370k == null) {
            return;
        }
        abstractC6370k.mo31378c(true);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6368i
    /* renamed from: vd */
    public void mo31386vd(AbstractC6367h abstractC6367h) {
        s1.z.c.l.e(abstractC6367h, "listener");
        AbstractC6370k abstractC6370k = (AbstractC6370k) this.f57683a;
        if (abstractC6370k != null) {
            abstractC6370k.mo31378c(false);
        }
        AbstractC6370k abstractC6370k2 = (AbstractC6370k) this.f57683a;
        if (abstractC6370k2 != null) {
            abstractC6370k2.mo31374g(false);
        }
        AbstractC6370k abstractC6370k3 = (AbstractC6370k) this.f57683a;
        if (abstractC6370k3 != null) {
            abstractC6370k3.mo31377d();
        }
        this.f21225f.add(abstractC6367h);
        abstractC6367h.mo31404W8(this.f21224e);
    }
}
