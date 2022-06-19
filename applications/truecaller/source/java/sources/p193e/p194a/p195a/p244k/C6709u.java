package p193e.p194a.p195a.p244k;

import android.content.Intent;
import com.google.common.base.Predicate;
import com.google.common.collect.Iterables;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import o3.a;
import p1727n3.p1789g0.C26232y;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p200c.p217o.AbstractC5614h;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.p245a.AbstractC6592n;
import p193e.p194a.p195a.p244k.p245a.C6587m0;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.u */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/u.class */
public class C6709u implements AbstractC6708t, Iterable<AbstractC6704q> {

    /* renamed from: w */
    public static final long f22074w = TimeUnit.SECONDS.toMillis(3);

    /* renamed from: x */
    public static final int[] f22075x = {3, 0, 1, 2, 4, 5, 6, 7};

    /* renamed from: a */
    public final AbstractC6392i0 f22076a;

    /* renamed from: b */
    public final AbstractC7201a f22077b;

    /* renamed from: c */
    public final AbstractC19230g f22078c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC6233m>> f22079d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC6690i> f22080e;

    /* renamed from: f */
    public final AbstractC6704q f22081f;

    /* renamed from: g */
    public final AbstractC6704q f22082g;

    /* renamed from: h */
    public final AbstractC6704q f22083h;

    /* renamed from: i */
    public final AbstractC6704q f22084i;

    /* renamed from: j */
    public final AbstractC6704q f22085j;

    /* renamed from: k */
    public final AbstractC6704q f22086k;

    /* renamed from: l */
    public final AbstractC6704q f22087l;

    /* renamed from: m */
    public final AbstractC6704q f22088m;

    /* renamed from: n */
    public final AbstractC6704q f22089n;

    /* renamed from: o */
    public final AbstractC6704q f22090o;

    /* renamed from: p */
    public final AbstractC8432l f22091p;

    /* renamed from: q */
    public final AbstractC19219a0 f22092q;

    /* renamed from: r */
    public final AbstractC7156p f22093r;

    /* renamed from: s */
    public final AbstractC7290a f22094s;

    /* renamed from: t */
    public final AbstractC8541a f22095t;

    /* renamed from: u */
    public final AbstractC5614h f22096u;

    /* renamed from: v */
    public final AbstractC6592n f22097v;

    /* renamed from: e.a.a.k.u$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/u$b.class */
    public class C6711b implements Iterator<AbstractC6704q> {

        /* renamed from: a */
        public int f22098a = 0;

        public C6711b(C6710a c6710a) {
            C6709u.this = r4;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22098a < C6709u.f22075x.length;
        }

        @Override // java.util.Iterator
        public AbstractC6704q next() {
            C6709u c6709u = C6709u.this;
            int[] iArr = C6709u.f22075x;
            int i = this.f22098a;
            this.f22098a = i + 1;
            return c6709u.mo30539x(iArr[i]);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException("Not allowed for this iterator");
        }
    }

    public C6709u(AbstractC6392i0 abstractC6392i0, AbstractC7201a abstractC7201a, AbstractC19230g abstractC19230g, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC19854f<AbstractC6690i> abstractC19854f, AbstractC6704q abstractC6704q, AbstractC6704q abstractC6704q2, AbstractC6704q abstractC6704q3, AbstractC6704q abstractC6704q4, AbstractC6704q abstractC6704q5, AbstractC6704q abstractC6704q6, AbstractC6704q abstractC6704q7, AbstractC6704q abstractC6704q8, AbstractC6704q abstractC6704q9, AbstractC8432l abstractC8432l, AbstractC19219a0 abstractC19219a0, AbstractC7156p abstractC7156p, AbstractC7290a abstractC7290a, AbstractC8541a abstractC8541a, AbstractC6704q abstractC6704q10, AbstractC5614h abstractC5614h, AbstractC6592n abstractC6592n) {
        this.f22076a = abstractC6392i0;
        this.f22077b = abstractC7201a;
        this.f22078c = abstractC19230g;
        this.f22081f = abstractC6704q;
        this.f22080e = abstractC19854f;
        this.f22082g = abstractC6704q2;
        this.f22083h = abstractC6704q3;
        this.f22084i = abstractC6704q4;
        this.f22085j = abstractC6704q5;
        this.f22087l = abstractC6704q6;
        this.f22088m = abstractC6704q7;
        this.f22089n = abstractC6704q8;
        this.f22090o = abstractC6704q9;
        this.f22079d = aVar;
        this.f22091p = abstractC8432l;
        this.f22092q = abstractC19219a0;
        this.f22093r = abstractC7156p;
        this.f22094s = abstractC7290a;
        this.f22095t = abstractC8541a;
        this.f22086k = abstractC6704q10;
        this.f22096u = abstractC5614h;
        this.f22097v = abstractC6592n;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: A */
    public void mo30564A(int i, Intent intent, int i2) {
        AbstractC6704q mo30540w = mo30540w(i, null);
        if (mo30540w == null) {
            return;
        }
        this.f22080e.mo11854a().mo30574i(mo30540w, intent, i2).mo11828g();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: B */
    public AbstractC19891x<Message> mo30563B(Message message) {
        if (message.m35020f() && message.f13379S != -1) {
            C6587m0 c6587m0 = (C6587m0) mo30539x(2);
            AssertionUtil.isNotNull(c6587m0, new String[0]);
            return !c6587m0.mo15167v(message) ? AbstractC19891x.m11834h(null) : AbstractC19891x.m11834h(this.f22097v.mo30698c(message));
        }
        return AbstractC19891x.m11834h(null);
    }

    /* renamed from: C */
    public final void m30562C() {
        if (this.f22095t.getBoolean("deleteBackupDuplicates", false)) {
            HashSet hashSet = new HashSet();
            hashSet.add(0);
            hashSet.add(1);
            ((AbstractC6233m) ((AbstractC19854f) this.f22079d.get()).mo11854a()).mo31705V(false, hashSet);
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: a */
    public AbstractC19844a mo30561a(final Message message, Participant[] participantArr, AbstractC19868j abstractC19868j, final AbstractC19851d0<Draft> abstractC19851d0) {
        Entity[] entityArr;
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.f13381b != -1, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.f13393n.mo34879u() != -1, new String[0]);
        Draft.C4194b c4194b = new Draft.C4194b();
        Collections.addAll(c4194b.f13286c, participantArr);
        c4194b.f13288e = message.m35025a();
        for (Entity entity : message.f13394o) {
            if (!entity.mo34894r()) {
                c4194b.m35056b((BinaryEntity) entity);
            }
        }
        String str = message.f13397r;
        String str2 = str;
        if (str == null) {
            str2 = "unknown";
        }
        return ((AbstractC6233m) ((AbstractC19854f) this.f22079d.get()).mo11854a()).mo31719B(c4194b.m35055c(), str2).mo11830e(abstractC19868j, new AbstractC19851d0() { // from class: e.a.a.k.c
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                ((AbstractC6233m) ((AbstractC19854f) C6709u.this.f22079d.get()).mo11854a()).mo31708Q(message.f13380a).mo11828g();
                abstractC19851d0.onResult((Draft) obj);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: b */
    public AbstractC19891x<Message> mo30560b(Message message, Participant[] participantArr, boolean z, boolean z2) {
        if (!message.m35020f()) {
            return AbstractC19891x.m11834h(null);
        }
        int mo30548n = mo30548n(message.m35018h(), participantArr, z2);
        AbstractC6704q mo30539x = mo30539x(mo30548n);
        AssertionUtil.isNotNull(mo30539x, new String[0]);
        if (!mo30539x.mo15167v(message)) {
            return AbstractC19891x.m11834h(null);
        }
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (mo30548n != 2) {
                z3 = true;
            }
        }
        AbstractC19891x<Message> mo30572k = this.f22080e.mo11854a().mo30572k(message, participantArr, mo30548n, z3 ? f22074w : (char) 0);
        this.f22094s.mo29843e(message.f13396q, mo30548n);
        return mo30572k;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: c */
    public int mo30559c(Message message) {
        AbstractC6704q mo30540w = mo30540w(message.f13390k, null);
        AssertionUtil.AlwaysFatal.isNotNull(mo30540w, new String[0]);
        return mo30540w.mo15183c(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: d */
    public boolean mo30558d(Message message, Entity entity, boolean z) {
        AssertionUtil.AlwaysFatal.isTrue(entity.f13306a != -1, new String[0]);
        return mo30539x(message.f13390k).mo15182d(message, entity, z);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: e */
    public boolean mo30557e(Message message) {
        AbstractC6704q mo30540w = mo30540w(message.f13390k, null);
        AssertionUtil.AlwaysFatal.isNotNull(mo30540w, new String[0]);
        return mo30540w.mo15181e(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: f */
    public boolean mo30556f(Message message, Entity entity) {
        AssertionUtil.AlwaysFatal.isTrue(entity.f13306a != -1, new String[0]);
        return mo30539x(message.f13390k).mo15180f(message, entity);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: g */
    public boolean mo30555g(final Message message) {
        if ((message.f13386g & 9) != 9) {
            return false;
        }
        ((AbstractC6233m) ((AbstractC19854f) this.f22079d.get()).mo11854a()).mo31717D(message, ((e) new b()).a).mo11829f(new AbstractC19851d0() { // from class: e.a.a.k.b
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C6709u c6709u = C6709u.this;
                Boolean bool = (Boolean) obj;
                c6709u.f22080e.mo11854a().mo30576g(message);
            }
        });
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: h */
    public AbstractC19891x<Message> mo30554h(Message message, boolean z) {
        return mo30560b(message, new Participant[]{message.f13382c}, z, false);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: i */
    public List<Integer> mo30553i() {
        ArrayList arrayList = new ArrayList();
        Iterator<AbstractC6704q> it = iterator();
        while (it.hasNext()) {
            AbstractC6704q next = it.next();
            if (next.mo15188A()) {
                arrayList.add(Integer.valueOf(next.getType()));
            }
        }
        return arrayList;
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC6704q> iterator() {
        return new C6711b(null);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: j */
    public Iterable<AbstractC6704q> mo30552j() {
        return this;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: k */
    public AbstractC6704q mo30551k(int i, boolean z, AbstractC6704q abstractC6704q) {
        switch (i) {
            case 0:
                return z ? this.f22082g : this.f22087l;
            case 1:
                return z ? this.f22083h : this.f22088m;
            case 2:
                return this.f22084i;
            case 3:
                return this.f22081f;
            case 4:
                return this.f22085j;
            case 5:
                return this.f22089n;
            case 6:
                return this.f22090o;
            case 7:
                return this.f22086k;
            default:
                return abstractC6704q;
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: l */
    public List<Integer> mo30550l(final Message message, final Participant[] participantArr) {
        Integer[] numArr;
        ArrayList arrayList = new ArrayList();
        final int mo30548n = mo30548n(message.m35018h(), participantArr, false);
        arrayList.add(Integer.valueOf(mo30548n));
        int[] iArr = f22075x;
        if (iArr == null) {
            numArr = null;
        } else if (iArr.length == 0) {
            numArr = w3.c.a.a.a.a.d;
        } else {
            numArr = new Integer[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                numArr[i] = Integer.valueOf(iArr[i]);
            }
        }
        List asList = Arrays.asList(numArr);
        Predicate predicate = new Predicate() { // from class: e.a.a.k.d
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                C6709u c6709u = C6709u.this;
                int i2 = mo30548n;
                Message message2 = message;
                Participant[] participantArr2 = participantArr;
                Integer num = (Integer) obj;
                Objects.requireNonNull(c6709u);
                AbstractC6704q mo30539x = c6709u.mo30539x(num.intValue());
                boolean z = false;
                if (num.intValue() != i2) {
                    if (mo30539x.mo15178i(message2)) {
                        int length = participantArr2.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                z = true;
                                break;
                            } else if (!mo30539x.mo15165x(participantArr2[i3])) {
                                z = false;
                                break;
                            } else {
                                i3++;
                            }
                        }
                    } else {
                        z = false;
                    }
                }
                return z;
            }
        };
        Objects.requireNonNull(asList);
        Collection collection = new Iterables.4(asList, predicate);
        if (collection instanceof Collection) {
            arrayList.addAll(collection);
        } else {
            C26232y.addAll(arrayList, collection.iterator());
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: m */
    public Draft mo30549m(Message message, Participant[] participantArr, Conversation conversation) {
        Entity[] entityArr;
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.f13381b != -1, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.f13393n.mo34879u() != -1, new String[0]);
        Draft.C4194b c4194b = new Draft.C4194b();
        Collections.addAll(c4194b.f13286c, participantArr);
        c4194b.f13288e = message.m35025a();
        c4194b.f13285b = conversation;
        for (Entity entity : message.f13394o) {
            if (!entity.mo34894r()) {
                c4194b.m35056b((BinaryEntity) entity);
            }
        }
        c4194b.f13299p = message.f13380a;
        c4194b.f13300q = message.f13386g;
        c4194b.f13296m = message.f13391l;
        return c4194b.m35055c();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: n */
    public int mo30548n(boolean z, Participant[] participantArr, boolean z2) {
        boolean z3;
        if (z2 || !mo30546p(participantArr)) {
            if (z) {
                return 1;
            }
            if (participantArr.length <= 1) {
                return 0;
            }
            if (!this.f22076a.mo31155Q2()) {
                return 1;
            }
            AbstractC6704q mo30539x = mo30539x(0);
            int length = participantArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z3 = true;
                    break;
                } else if (!mo30539x.mo15165x(participantArr[i])) {
                    z3 = false;
                    break;
                } else {
                    i++;
                }
            }
            return !z3 ? 1 : 0;
        }
        return 2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: o */
    public AbstractC19891x<Message> mo30547o(Message message) {
        Message mo30699b;
        if (message.m35020f() && message.f13379S != -1) {
            C6587m0 c6587m0 = (C6587m0) mo30539x(2);
            AssertionUtil.isNotNull(c6587m0, new String[0]);
            if (c6587m0.mo15167v(message) && (mo30699b = this.f22097v.mo30699b(message)) != null) {
                return this.f22080e.mo11854a().mo30575h(mo30699b);
            }
            return AbstractC19891x.m11834h(null);
        }
        return AbstractC19891x.m11834h(null);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: p */
    public boolean mo30546p(Participant[] participantArr) {
        boolean z = true;
        if (!this.f22091p.mo28580d() || participantArr.length != 1 || !this.f22084i.mo15165x(participantArr[0])) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: q */
    public AbstractC19891x<Boolean> mo30545q(String str, Message message, Participant[] participantArr, long j, long j2, int i) {
        AssertionUtil.AlwaysFatal.isFalse(j == 0, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.m35020f(), new String[0]);
        int mo30548n = mo30548n(message.m35018h(), participantArr, i != 2);
        AbstractC6690i mo11854a = this.f22080e.mo11854a();
        Message.C4209b m35024b = message.m35024b();
        m35024b.f13432l = mo30548n;
        AbstractC19891x<Boolean> mo30573j = mo11854a.mo30573j(m35024b.m35012a(), j, participantArr, j2);
        this.f22094s.mo29840h(str, j, mo30548n);
        return mo30573j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: r */
    public boolean mo30544r(String str, boolean z, Participant[] participantArr, boolean z2, C6676e c6676e) {
        return mo30539x(mo30548n(z, participantArr, z2)).mo15163z(str, c6676e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        r8 = false;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo30543t(com.truecaller.messaging.data.types.Message r6, com.truecaller.data.entity.messaging.Participant[] r7) {
        /*
            r5 = this;
            r0 = r6
            int r0 = r0.f13390k
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L13
            r0 = 1
            r10 = r0
            goto L16
        L13:
            r0 = 0
            r10 = r0
        L16:
            r0 = r5
            r1 = r6
            boolean r1 = r1.m35018h()
            r2 = r7
            r3 = r10
            int r0 = r0.mo30548n(r1, r2, r3)
            r11 = r0
            r0 = r5
            r1 = r11
            e.a.a.k.q r0 = r0.mo30539x(r1)
            r12 = r0
            r0 = r7
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r8 = r0
        L31:
            r0 = r8
            r1 = r13
            if (r0 >= r1) goto L4d
            r0 = r12
            r1 = r7
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.mo15165x(r1)
            if (r0 != 0) goto L47
            goto L6c
        L47:
            int r8 = r8 + 1
            goto L31
        L4d:
            r0 = r12
            int r0 = r0.getType()
            r1 = r6
            int r1 = r1.f13390k
            if (r0 == r1) goto L6c
            r0 = r12
            r1 = r6
            boolean r0 = r0.mo15178i(r1)
            if (r0 == 0) goto L6c
            r0 = r9
            r8 = r0
            goto L6e
        L6c:
            r0 = 0
            r8 = r0
        L6e:
            r0 = r8
            if (r0 == 0) goto L75
            r0 = r11
            return r0
        L75:
            r0 = 3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.C6709u.mo30543t(com.truecaller.messaging.data.types.Message, com.truecaller.data.entity.messaging.Participant[]):int");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: u */
    public void mo30542u(int i, Intent intent, int i2) {
        AbstractC6704q mo30540w = mo30540w(i, null);
        if (mo30540w == null) {
            return;
        }
        try {
            this.f22080e.mo11854a().mo30574i(mo30540w, intent, i2).mo11831c();
        } catch (InterruptedException e) {
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: v */
    public AbstractC19844a mo30541v(Message message, AbstractC19868j abstractC19868j, AbstractC19851d0<Draft> abstractC19851d0) {
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(message.f13393n.mo34879u() != -1, new String[0]);
        Message.C4209b m35024b = message.m35024b();
        m35024b.f13427g = 17;
        return ((AbstractC6233m) ((AbstractC19854f) this.f22079d.get()).mo11854a()).mo31703X(m35024b.m35012a()).mo11830e(abstractC19868j, abstractC19851d0);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: w */
    public AbstractC6704q mo30540w(int i, AbstractC6704q abstractC6704q) {
        return mo30551k(i, this.f22078c.mo13782o(this.f22093r.getName()), null);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: x */
    public AbstractC6704q mo30539x(int i) {
        AbstractC6704q mo30540w = mo30540w(i, null);
        if (mo30540w != null) {
            return mo30540w;
        }
        throw new IllegalArgumentException("Unsupported transport type");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a6  */
    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30538y() {
        /*
            r6 = this;
            r0 = r6
            e.a.p5.g r0 = r0.f22078c
            boolean r0 = r0.mo13794c()
            r7 = r0
            r0 = r6
            e.a.a.i0 r0 = r0.f22076a
            boolean r0 = r0.mo30962z3()
            r8 = r0
            r0 = r6
            e.a.p5.a0 r0 = r0.f22092q
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.READ_SMS"
            r2[r3] = r4
            boolean r0 = r0.mo13825h(r1)
            r9 = r0
            r0 = r6
            e.a.a.i0 r0 = r0.f22076a
            boolean r0 = r0.mo31207G0()
            r10 = r0
            r0 = r8
            r1 = r7
            if (r0 == r1) goto L65
            r0 = r6
            e.a.a.i0 r0 = r0.f22076a
            r1 = r7
            r0.mo31160P2(r1)
            r0 = r7
            if (r0 == 0) goto L65
            r0 = r6
            o3.a<e.a.r2.f<e.a.a.g.m>> r0 = r0.f22079d
            java.lang.Object r0 = r0.get()
            e.a.r2.f r0 = (p193e.p194a.p1187r2.AbstractC19854f) r0
            java.lang.Object r0 = r0.mo11854a()
            e.a.a.g.m r0 = (p193e.p194a.p195a.p231g.AbstractC6233m) r0
            r0.mo31693e0()
            r0 = 1
            r11 = r0
            goto L68
        L65:
            r0 = 0
            r11 = r0
        L68:
            r0 = r9
            r1 = r10
            if (r0 == r1) goto L94
            r0 = r6
            e.a.a.i0 r0 = r0.f22076a
            r1 = r9
            r0.mo31031m4(r1)
            r0 = r6
            e.a.b0.o.a r0 = r0.f22095t
            java.lang.String r1 = "deleteBackupDuplicates"
            r2 = 1
            r0.putBoolean(r1, r2)
            r0 = r9
            if (r0 == 0) goto L91
            r0 = r6
            e.a.a.r0.a r0 = r0.f22077b
            r0.mo30000a()
        L91:
            r0 = 1
            r11 = r0
        L94:
            r0 = r6
            e.a.a.c.o.h r0 = r0.f22096u
            r0.mo32884c()
            r0 = r9
            if (r0 != 0) goto La6
            r0 = r6
            r0.m30562C()
            return
        La6:
            r0 = r11
            if (r0 == 0) goto Lc6
            r0 = r6
            o3.a<e.a.r2.f<e.a.a.g.m>> r0 = r0.f22079d
            java.lang.Object r0 = r0.get()
            e.a.r2.f r0 = (p193e.p194a.p1187r2.AbstractC19854f) r0
            java.lang.Object r0 = r0.mo11854a()
            e.a.a.g.m r0 = (p193e.p194a.p195a.p231g.AbstractC6233m) r0
            r1 = 1
            r0.mo31698b(r1)
            return
        Lc6:
            r0 = r6
            o3.a<e.a.r2.f<e.a.a.g.m>> r0 = r0.f22079d
            java.lang.Object r0 = r0.get()
            e.a.r2.f r0 = (p193e.p194a.p1187r2.AbstractC19854f) r0
            java.lang.Object r0 = r0.mo11854a()
            e.a.a.g.m r0 = (p193e.p194a.p195a.p231g.AbstractC6233m) r0
            r1 = r7
            r0.mo31707T(r1)
            r0 = r6
            r0.m30562C()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.C6709u.mo30538y():void");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6708t
    /* renamed from: z */
    public AbstractC19891x<Boolean> mo30537z(String str, long j, long j2, int i) {
        AbstractC19891x<Boolean> mo30571l = this.f22080e.mo11854a().mo30571l(j, j2);
        this.f22094s.mo29844d(str, j2, i);
        return mo30571l;
    }
}
