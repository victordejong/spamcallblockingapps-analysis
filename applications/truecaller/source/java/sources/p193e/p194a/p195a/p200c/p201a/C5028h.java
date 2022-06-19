package p193e.p194a.p195a.p200c.p201a;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.C9662r;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p533e.AbstractC10066e;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p552i.p559g.AbstractC10342a;
import p193e.p194a.p437c.p552i.p559g.C10345c;
import p193e.p194a.p437c.p552i.p562j.p563c.AbstractC10369a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p578p.C10489f;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10605i;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.AbstractC10627r;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import p193e.p194a.p437c.p580r.p589j.C10613n;
import p193e.p194a.p437c.p580r.p589j.C10626q;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import p193e.p194a.p437c.p580r.p591l.AbstractC10649a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.k;
import s1.o;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.a.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h.class */
public final class C5028h implements AbstractC5040n, i0 {

    /* renamed from: h */
    public Map<Long, C10329b> f17196h;

    /* renamed from: i */
    public boolean f17197i;

    /* renamed from: j */
    public boolean f17198j;

    /* renamed from: k */
    public Map<Long, Float> f17199k;

    /* renamed from: m */
    public C10345c f17201m;

    /* renamed from: n */
    public a<s> f17202n;

    /* renamed from: q */
    public final f f17205q;

    /* renamed from: r */
    public final f f17206r;

    /* renamed from: s */
    public final AbstractC10342a f17207s;

    /* renamed from: t */
    public final AbstractC10066e f17208t;

    /* renamed from: u */
    public final AbstractC10330c f17209u;

    /* renamed from: v */
    public final AbstractC9691j f17210v;

    /* renamed from: w */
    public final AbstractC5041o f17211w;

    /* renamed from: x */
    public final AbstractC10369a f17212x;

    /* renamed from: a */
    public final y f17189a = d.n((p1) null, 1);

    /* renamed from: b */
    public int f17190b = -1;

    /* renamed from: c */
    public final CoroutineExceptionHandler f17191c = new C5029a(CoroutineExceptionHandler.a.a);

    /* renamed from: d */
    public final Map<Long, C10635s> f17192d = new LinkedHashMap();

    /* renamed from: e */
    public final List<C10635s> f17193e = new ArrayList();

    /* renamed from: f */
    public boolean f17194f = true;

    /* renamed from: g */
    public final AtomicBoolean f17195g = new AtomicBoolean(false);

    /* renamed from: l */
    public final List<C9662r> f17200l = new ArrayList();

    /* renamed from: o */
    public final AtomicInteger f17203o = new AtomicInteger();

    /* renamed from: p */
    public long f17204p = -1;

    /* renamed from: e.a.a.c.a.h$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h$a.class */
    public static final class C5029a extends s1.w.a implements CoroutineExceptionHandler {
        public C5029a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10480a.m26061I1(th);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl", f = "SmartCardsManager.kt", l = {212}, m = "loadConfidenceScoreCache")
    /* renamed from: e.a.a.c.a.h$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h$b.class */
    public static final class C5030b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17213d;

        /* renamed from: e */
        public int f17214e;

        /* renamed from: g */
        public Object f17216g;

        /* renamed from: h */
        public Object f17217h;

        /* renamed from: i */
        public long f17218i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5030b(s1.w.d dVar) {
            super(dVar);
            C5028h.this = r4;
        }

        /* renamed from: s */
        public final Object m33972s(Object obj) {
            this.f17213d = obj;
            this.f17214e |= Integer.MIN_VALUE;
            return C5028h.this.m33975t(0L, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$loadRowFeedback$1", f = "SmartCardsManager.kt", l = {274}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.h$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h$c.class */
    public static final class C5031c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f17219e;

        /* renamed from: f */
        public int f17220f;

        /* renamed from: h */
        public final /* synthetic */ long f17222h;

        /* renamed from: i */
        public final /* synthetic */ a f17223i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5031c(long j, a aVar, s1.w.d dVar) {
            super(2, dVar);
            C5028h.this = r5;
            this.f17222h = j;
            this.f17223i = aVar;
        }

        /* renamed from: i */
        public final s1.w.d<s> m33971i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C5031c(this.f17222h, this.f17223i, dVar);
        }

        /* renamed from: k */
        public final Object m33970k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C5031c(this.f17222h, this.f17223i, dVar).m33969s(s.a);
        }

        /* renamed from: s */
        public final Object m33969s(Object obj) {
            Object obj2;
            C5028h c5028h;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17220f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (C5028h.this.mo33938m()) {
                    C5028h c5028h2 = C5028h.this;
                    if (c5028h2.f17196h == null && !c5028h2.f17197i) {
                        c5028h2.f17197i = true;
                        AbstractC10330c abstractC10330c = c5028h2.f17209u;
                        long j = this.f17222h;
                        this.f17219e = c5028h2;
                        this.f17220f = 1;
                        obj2 = abstractC10330c.mo26352b(j, this);
                        if (obj2 == aVar) {
                            return aVar;
                        }
                        c5028h = c5028h2;
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c5028h = (C5028h) this.f17219e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c5028h.f17196h = s1.u.i.b1((Map) obj2);
            this.f17223i.invoke();
            C5028h.this.f17197i = false;
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$loadSmartCards$1", f = "SmartCardsManager.kt", l = {171, 205}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.h$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h$d.class */
    public static final class C5032d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f17224e;

        /* renamed from: g */
        public final /* synthetic */ C10345c f17226g;

        /* renamed from: h */
        public final /* synthetic */ boolean f17227h;

        /* renamed from: i */
        public final /* synthetic */ a f17228i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5032d(C10345c c10345c, boolean z, a aVar, s1.w.d dVar) {
            super(2, dVar);
            C5028h.this = r5;
            this.f17226g = c10345c;
            this.f17227h = z;
            this.f17228i = aVar;
        }

        /* renamed from: i */
        public final s1.w.d<s> m33968i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C5032d(this.f17226g, this.f17227h, this.f17228i, dVar);
        }

        /* renamed from: k */
        public final Object m33967k(Object obj, Object obj2) {
            return m33968i(obj, (s1.w.d) obj2).m33966s(s.a);
        }

        /* renamed from: s */
        public final Object m33966s(Object obj) {
            a aVar;
            a aVar2;
            C10635s c10635s;
            C10626q c10626q;
            b bVar;
            C10635s c10635s2;
            C10626q c10626q2;
            b bVar2;
            boolean z;
            s sVar = s.a;
            s1.w.j.a aVar3 = s1.w.j.a.a;
            int i = this.f17224e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9662r c9662r = this.f17226g.f30731d;
                if (c9662r != null) {
                    C5028h.this.f17200l.add(c9662r);
                }
                C5028h c5028h = C5028h.this;
                C10345c c10345c = this.f17226g;
                boolean z2 = c5028h.f17194f;
                this.f17224e = 1;
                Object a4 = d.a4(c5028h.f17206r, new C5034i(c5028h, c10345c, z2, null), this);
                obj = a4;
                if (a4 == aVar3) {
                    return aVar3;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                C5028h.this.f17198j = false;
                return sVar;
            } else {
                C25225a.m3932a3(obj);
            }
            C10489f c10489f = (C10489f) obj;
            if (c10489f == null) {
                if (this.f17227h) {
                    if (C5028h.this.f17203o.decrementAndGet() == 0 && (aVar = this.f17228i) != null) {
                        s sVar2 = (s) aVar.invoke();
                    }
                    C5028h.this.m33974u();
                }
                return sVar;
            }
            C5028h c5028h2 = C5028h.this;
            if (c5028h2.f17194f) {
                Map<Long, C10635s> map = c10489f.f31197a;
                if (!map.isEmpty()) {
                    Iterator<Map.Entry<Long, C10635s>> it = map.entrySet().iterator();
                    while (true) {
                        z = true;
                        if (it.hasNext()) {
                            if (Boolean.valueOf(it.next().getValue().f31673a instanceof AbstractC10616p.C10623g).booleanValue()) {
                                z = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    z = true;
                }
                c5028h2.f17194f = z;
            }
            C5028h.this.f17192d.putAll(c10489f.f31197a);
            C5028h.this.f17193e.addAll(s1.u.i.F0(c10489f.f31197a.values(), new C5035j()));
            if (this.f17226g.f30731d == null && (c10635s = (C10635s) s1.u.i.D(C5028h.this.f17193e)) != null && (c10626q = c10635s.f31677e) != null && (bVar = c10626q.f31664a) != null && (c10635s2 = (C10635s) s1.u.i.S(C5028h.this.f17193e)) != null && (c10626q2 = c10635s2.f31677e) != null && (bVar2 = c10626q2.f31664a) != null) {
                C5028h.this.f17200l.add(new C9662r(bVar, bVar2));
            }
            if (C5028h.this.f17203o.decrementAndGet() == 0 && (aVar2 = this.f17228i) != null) {
                s sVar3 = (s) aVar2.invoke();
            }
            C5028h c5028h3 = C5028h.this;
            long j = this.f17226g.f30728a;
            this.f17224e = 2;
            if (c5028h3.m33975t(j, this) == aVar3) {
                return aVar3;
            }
            C5028h.this.f17198j = false;
            return sVar;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$updateRowFeedBackState$1", f = "SmartCardsManager.kt", l = {291}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.h$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/h$e.class */
    public static final class C5033e extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f17229e;

        /* renamed from: f */
        public Object f17230f;

        /* renamed from: g */
        public Object f17231g;

        /* renamed from: h */
        public Object f17232h;

        /* renamed from: i */
        public int f17233i;

        /* renamed from: k */
        public final /* synthetic */ List f17235k;

        /* renamed from: l */
        public final /* synthetic */ a f17236l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5033e(List list, a aVar, s1.w.d dVar) {
            super(2, dVar);
            C5028h.this = r5;
            this.f17235k = list;
            this.f17236l = aVar;
        }

        /* renamed from: i */
        public final s1.w.d<s> m33965i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C5033e(this.f17235k, this.f17236l, dVar);
        }

        /* renamed from: k */
        public final Object m33964k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C5033e(this.f17235k, this.f17236l, dVar).m33963s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x019c  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x01b2  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0188 -> B:32:0x018d). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m33963s(java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 447
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5028h.C5033e.m33963s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C5028h(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC10342a abstractC10342a, AbstractC10066e abstractC10066e, AbstractC10330c abstractC10330c, AbstractC9691j abstractC9691j, AbstractC5041o abstractC5041o, AbstractC10369a abstractC10369a) {
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "backgroundCoroutineContext");
        l.e(abstractC10342a, "infoCardManager");
        l.e(abstractC10066e, "insightsSmartCardAnalyticsManager");
        l.e(abstractC10330c, "feedbackManager");
        l.e(abstractC9691j, "statusProvider");
        l.e(abstractC5041o, "updateCategoriesManager");
        l.e(abstractC10369a, "importantSendersManager");
        this.f17205q = fVar;
        this.f17206r = fVar2;
        this.f17207s = abstractC10342a;
        this.f17208t = abstractC10066e;
        this.f17209u = abstractC10330c;
        this.f17210v = abstractC9691j;
        this.f17211w = abstractC5041o;
        this.f17212x = abstractC10369a;
        int i = CoroutineExceptionHandler.d0;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: a */
    public void mo33950a(Set<Long> set) {
        l.e(set, "idList");
        this.f17208t.mo26741a(set);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: b */
    public void mo33949b() {
        this.f17208t.mo26734h();
        this.f17208t.mo26740b();
        d.X(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        m33974u();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: c */
    public void mo33948c(String str, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(str, "action");
        l.e(kVar, "category");
        this.f17208t.mo26739c(str, kVar, z);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: d */
    public C10635s mo33947d(Message message) {
        C10635s c10635s;
        l.e(message, "message");
        if (message.f13390k == 2) {
            Participant participant = message.f13382c;
            l.d(participant, "message.participant");
            if (!participant.m35448l()) {
                c10635s = null;
                return c10635s;
            }
        }
        c10635s = this.f17192d.get(Long.valueOf(message.f13380a));
        return c10635s;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: e */
    public C10635s mo33946e(long j, b bVar) {
        boolean z;
        l.e(bVar, "dateTime");
        Map<Long, C10635s> map = this.f17192d;
        if (map == null || map.isEmpty()) {
            return null;
        }
        C10635s c10635s = this.f17192d.get(Long.valueOf(j));
        if (c10635s != null) {
            return c10635s;
        }
        List<C9662r> list = this.f17200l;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (C9662r c9662r : list) {
                if (bVar.a(c9662r.f29193a) > 0 && bVar.a(c9662r.f29194b) < 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            return null;
        }
        b z2 = bVar.z(1);
        b H = bVar.H(1);
        C10345c c10345c = this.f17201m;
        if (c10345c == null) {
            return null;
        }
        l.d(z2, "fromDate");
        l.d(H, "toDate");
        mo33942i(C10345c.m26319a(c10345c, 0L, null, null, new C9662r(z2, H), 7), false, this.f17202n);
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: f */
    public boolean mo33945f() {
        boolean z = true;
        if (!(!this.f17192d.isEmpty())) {
            z = this.f17211w.mo33932a();
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: g */
    public void mo33944g(k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(kVar, "category");
        this.f17208t.mo26735g(kVar, z);
    }

    public f getCoroutineContext() {
        return this.f17205q.plus(this.f17189a);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: h */
    public boolean mo33943h() {
        return !this.f17192d.isEmpty();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: i */
    public void mo33942i(C10345c c10345c, boolean z, a<s> aVar) {
        l.e(c10345c, "requestInfocard");
        this.f17201m = c10345c;
        this.f17202n = aVar;
        this.f17198j = true;
        this.f17203o.incrementAndGet();
        d.w2(this, this.f17191c, (j0) null, new C5032d(c10345c, z, aVar, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: j */
    public void mo33941j(String str, String str2, boolean z) {
        l.e(str2, "action");
        this.f17208t.mo26730l(str, m33976s(), str2, z);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: k */
    public void mo33940k(long j, AbstractC10605i abstractC10605i) {
        l.e(abstractC10605i, "feedbackCard");
        this.f17208t.mo26732j(j, abstractC10605i);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: l */
    public void mo33939l(long j, int i, a<s> aVar) {
        l.e(aVar, "listener");
        this.f17195g.set(true);
        this.f17190b = i;
        d.w2(this, this.f17191c, (j0) null, new C5031c(j, aVar, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: m */
    public boolean mo33938m() {
        return this.f17210v.mo27273V();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: n */
    public boolean mo33937n() {
        return this.f17210v.mo27291D();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: o */
    public void mo33936o(List<o<C10328a, Long, Long>> list, String str, a<s> aVar) {
        l.e(list, "msgs");
        l.e(str, "feedbackType");
        l.e(aVar, "listener");
        if (mo33938m()) {
            d.w2(this, (f) null, (j0) null, new C5033e(list, aVar, null), 3, (Object) null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r0 == 3) goto L6;
     */
    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p437c.p580r.p589j.C10635s mo33935p(long r8, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r10
            java.lang.String r1 = "address"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            e.a.c.i.j.c.a r0 = r0.f17212x
            r1 = r10
            boolean r0 = r0.mo26273a(r1)
            r11 = r0
            r0 = r7
            int r0 = r0.f17190b
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r12
            r1 = 2
            if (r0 == r1) goto L2b
            r0 = r13
            r10 = r0
            r0 = r12
            r1 = 3
            if (r0 != r1) goto L5f
        L2b:
            r0 = r7
            java.util.Map<java.lang.Long, e.a.c.i.e.b> r0 = r0.f17196h
            r14 = r0
            r0 = r13
            r10 = r0
            r0 = r14
            if (r0 == 0) goto L5f
            r0 = r14
            r1 = r8
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            e.a.c.i.e.b r0 = (p193e.p194a.p437c.p552i.p557e.C10329b) r0
            r14 = r0
            r0 = r13
            r10 = r0
            r0 = r14
            if (r0 == 0) goto L5f
            r0 = r7
            r1 = r14
            r2 = r7
            int r2 = r2.f17190b
            r3 = r11
            r4 = r8
            e.a.c.r.j.s r0 = r0.m33973v(r1, r2, r3, r4)
            r10 = r0
        L5f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5028h.mo33935p(long, java.lang.String):e.a.c.r.j.s");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
        if (r19 != null) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p437c.p580r.p589j.C10635s mo33934q(p193e.p194a.p437c.p552i.p557e.C10328a r14, long r15, long r17, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5028h.mo33934q(e.a.c.i.e.a, long, long, java.lang.String):e.a.c.r.j.s");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5040n
    /* renamed from: r */
    public boolean mo33933r(String str) {
        l.e(str, "address");
        return this.f17212x.mo26273a(str);
    }

    /* renamed from: s */
    public final String m33976s() {
        int i = this.f17190b;
        return i != 2 ? i != 3 ? null : "spam_tab" : "others_tab";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m33975t(long r6, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5028h.m33975t(long, s1.w.d):java.lang.Object");
    }

    /* renamed from: u */
    public final void m33974u() {
        this.f17192d.clear();
        this.f17193e.clear();
        this.f17190b = -1;
        this.f17196h = null;
        this.f17197i = false;
        this.f17198j = false;
        this.f17200l.clear();
        this.f17201m = null;
        this.f17202n = null;
        this.f17203o.set(0);
        this.f17194f = true;
        this.f17204p = -1L;
    }

    /* renamed from: v */
    public final C10635s m33973v(C10329b c10329b, @AbstractC10649a int i, boolean z, long j) {
        C10635s c10635s;
        C10635s c10635s2;
        Float f;
        AbstractC10616p.C10622f c10622f = AbstractC10616p.C10622f.f31659b;
        Map<Long, Float> map = this.f17199k;
        if (map == null || (f = map.get(Long.valueOf(j))) == null || ((double) f.floatValue()) >= 0.6d) {
            return null;
        }
        int i2 = AbstractC10649a.f31738a;
        if (i != 3) {
            c10635s = null;
            if (i == 2) {
                c10635s = null;
                if (!z) {
                    b bVar = c10329b.f30681c;
                    l.e(c10329b, "insightsFeedback");
                    l.e(bVar, "datetime");
                    c10635s2 = new C10635s(c10622f, new C10613n(new C10612m(-1, 0, 0, 6), "", "", null, null, null, null, null, null, null, null, null, 4088), null, r.n(c10329b.f30684f, "reported_spam", true) ? null : AbstractC10597h.C10603f.f31615d, new C10626q(bVar), null, null, c10329b.f30684f.length() > 0 ? c10329b : null, null, null, false, 1888);
                }
            }
            return c10635s;
        }
        b bVar2 = c10329b.f30681c;
        l.e(c10329b, "insightsFeedback");
        l.e(bVar2, "datetime");
        c10635s2 = new C10635s(c10622f, new C10613n(new C10612m(-1, 0, 0, 6), "", "", null, null, null, null, null, null, null, null, null, 4088), null, r.n(c10329b.f30684f, "reported_not_spam", true) ? null : AbstractC10597h.C10601d.f31613d, new C10626q(bVar2), null, null, r.n(c10329b.f30684f, "reported_not_spam", true) ? c10329b : null, null, null, false, 1888);
        c10635s = c10635s2;
        return c10635s;
    }
}
