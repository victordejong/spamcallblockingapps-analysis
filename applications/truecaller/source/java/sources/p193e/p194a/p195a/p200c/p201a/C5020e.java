package p193e.p194a.p195a.p200c.p201a;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p523a0.C9662r;
import p193e.p194a.p437c.p533e.AbstractC10054a;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p559g.C10345c;
import p193e.p194a.p437c.p578p.AbstractC10485d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import p193e.p194a.p437c.p610y.C10872f;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.a.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e.class */
public final class C5020e implements AbstractC5027g, i0 {

    /* renamed from: e */
    public Map<Long, Float> f17156e;

    /* renamed from: g */
    public C10345c f17158g;

    /* renamed from: h */
    public a<s> f17159h;

    /* renamed from: k */
    public final f f17162k;

    /* renamed from: l */
    public final f f17163l;

    /* renamed from: m */
    public final AbstractC10054a f17164m;

    /* renamed from: n */
    public final AbstractC10330c f17165n;

    /* renamed from: o */
    public final AbstractC10485d f17166o;

    /* renamed from: p */
    public final AbstractC10821g f17167p;

    /* renamed from: q */
    public final AbstractC9625e f17168q;

    /* renamed from: a */
    public final y f17152a = d.n((p1) null, 1);

    /* renamed from: b */
    public final CoroutineExceptionHandler f17153b = new C5021a(CoroutineExceptionHandler.a.a);

    /* renamed from: c */
    public final Map<Long, C10872f> f17154c = new LinkedHashMap();

    /* renamed from: d */
    public final List<C10872f> f17155d = new ArrayList();

    /* renamed from: f */
    public final List<C9662r> f17157f = new ArrayList();

    /* renamed from: i */
    public final AtomicInteger f17160i = new AtomicInteger();

    /* renamed from: j */
    public long f17161j = -1;

    /* renamed from: e.a.a.c.a.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e$a.class */
    public static final class C5021a extends s1.w.a implements CoroutineExceptionHandler {
        public C5021a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10480a.m26061I1(th);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.InfoCardManagerRevampImpl", f = "InfoCardsManagerRevamp.kt", l = {161}, m = "loadConfidenceScoreCache")
    /* renamed from: e.a.a.c.a.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e$b.class */
    public static final class C5022b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17169d;

        /* renamed from: e */
        public int f17170e;

        /* renamed from: g */
        public Object f17172g;

        /* renamed from: h */
        public Object f17173h;

        /* renamed from: i */
        public long f17174i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5022b(s1.w.d dVar) {
            super(dVar);
            C5020e.this = r4;
        }

        /* renamed from: s */
        public final Object m33994s(Object obj) {
            this.f17169d = obj;
            this.f17170e |= Integer.MIN_VALUE;
            return C5020e.this.m33997k(0L, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.InfoCardManagerRevampImpl$loadSmartCards$1", f = "InfoCardsManagerRevamp.kt", l = {126, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.e$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e$c.class */
    public static final class C5023c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f17175e;

        /* renamed from: g */
        public final /* synthetic */ C10345c f17177g;

        /* renamed from: h */
        public final /* synthetic */ boolean f17178h;

        /* renamed from: i */
        public final /* synthetic */ a f17179i;

        /* renamed from: e.a.a.c.a.e$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e$c$a.class */
        public static final class C5024a<T> implements Comparator {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C25225a.m4000K(((C10872f) t).f32288g, ((C10872f) t2).f32288g);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5023c(C10345c c10345c, boolean z, a aVar, s1.w.d dVar) {
            super(2, dVar);
            C5020e.this = r5;
            this.f17177g = c10345c;
            this.f17178h = z;
            this.f17179i = aVar;
        }

        /* renamed from: i */
        public final s1.w.d<s> m33993i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C5023c(this.f17177g, this.f17178h, this.f17179i, dVar);
        }

        /* renamed from: k */
        public final Object m33992k(Object obj, Object obj2) {
            return m33993i(obj, (s1.w.d) obj2).m33991s(s.a);
        }

        /* renamed from: s */
        public final Object m33991s(Object obj) {
            a aVar;
            C10872f c10872f;
            b bVar;
            C10872f c10872f2;
            b bVar2;
            a aVar2;
            s1.w.j.a aVar3 = s1.w.j.a.a;
            int i = this.f17175e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9662r c9662r = this.f17177g.f30731d;
                if (c9662r != null) {
                    C5020e.this.f17157f.add(c9662r);
                }
                C5020e c5020e = C5020e.this;
                C10345c c10345c = this.f17177g;
                this.f17175e = 1;
                Object a4 = d.a4(c5020e.f17163l, new C5026f(c5020e, c10345c, null), this);
                obj = a4;
                if (a4 == aVar3) {
                    return aVar3;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                Objects.requireNonNull(C5020e.this);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            List list = (List) obj;
            if (this.f17178h && list.isEmpty()) {
                if (C5020e.this.f17160i.decrementAndGet() == 0 && (aVar2 = this.f17179i) != null) {
                    s sVar = (s) aVar2.invoke();
                }
                C5020e.this.m33995m();
            }
            Map<Long, C10872f> map = C5020e.this.f17154c;
            int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(list, 10));
            int i2 = m3942Y1;
            if (m3942Y1 < 16) {
                i2 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i2);
            for (Object obj2 : list) {
                linkedHashMap.put(new Long(((C10872f) obj2).f32282a), obj2);
            }
            map.putAll(linkedHashMap);
            C5020e.this.f17155d.addAll(s1.u.i.F0(list, new C5024a()));
            if (this.f17177g.f30731d == null && (c10872f = (C10872f) s1.u.i.D(C5020e.this.f17155d)) != null && (bVar = c10872f.f32288g) != null && (c10872f2 = (C10872f) s1.u.i.S(C5020e.this.f17155d)) != null && (bVar2 = c10872f2.f32288g) != null) {
                C5020e.this.f17157f.add(new C9662r(bVar, bVar2));
            }
            if (C5020e.this.f17160i.decrementAndGet() == 0 && (aVar = this.f17179i) != null) {
                s sVar2 = (s) aVar.invoke();
            }
            C5020e c5020e2 = C5020e.this;
            long j = this.f17177g.f30728a;
            this.f17175e = 2;
            if (c5020e2.m33997k(j, this) == aVar3) {
                return aVar3;
            }
            Objects.requireNonNull(C5020e.this);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.InfoCardManagerRevampImpl", f = "InfoCardsManagerRevamp.kt", l = {290}, m = "maybeUpdateStatus")
    /* renamed from: e.a.a.c.a.e$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/e$d.class */
    public static final class C5025d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17180d;

        /* renamed from: e */
        public int f17181e;

        /* renamed from: g */
        public Object f17183g;

        /* renamed from: h */
        public Object f17184h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5025d(s1.w.d dVar) {
            super(dVar);
            C5020e.this = r4;
        }

        /* renamed from: s */
        public final Object m33990s(Object obj) {
            this.f17180d = obj;
            this.f17181e |= Integer.MIN_VALUE;
            return C5020e.this.m33996l(null, this);
        }
    }

    @Inject
    public C5020e(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC10054a abstractC10054a, AbstractC10330c abstractC10330c, AbstractC10485d abstractC10485d, AbstractC10821g abstractC10821g, AbstractC9625e abstractC9625e) {
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "backgroundCoroutineContext");
        l.e(abstractC10054a, "infoCardAnalyticsManagerRevamp");
        l.e(abstractC10330c, "feedbackManager");
        l.e(abstractC10485d, "infoCardRepository");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(abstractC9625e, "actionDataSource");
        this.f17162k = fVar;
        this.f17163l = fVar2;
        this.f17164m = abstractC10054a;
        this.f17165n = abstractC10330c;
        this.f17166o = abstractC10485d;
        this.f17167p = abstractC10821g;
        this.f17168q = abstractC9625e;
        int i = CoroutineExceptionHandler.d0;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: a */
    public void mo33986a(Set<Long> set) {
        l.e(set, "idList");
        this.f17164m.mo26774a(set);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: b */
    public void mo33985b() {
        this.f17164m.mo26769h();
        this.f17164m.mo26773b();
        d.X(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        m33995m();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: c */
    public void mo33984c(String str, String str2, boolean z) {
        l.e(str, "action");
        l.e(str2, "analyticsCategory");
        this.f17164m.mo26772c(str, str2, z);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: d */
    public C10872f mo33983d(Message message) {
        C10872f c10872f;
        l.e(message, "message");
        if (message.f13390k == 2) {
            Participant participant = message.f13382c;
            l.d(participant, "message.participant");
            if (!participant.m35448l()) {
                c10872f = null;
                return c10872f;
            }
        }
        c10872f = this.f17154c.get(Long.valueOf(message.f13380a));
        return c10872f;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: e */
    public C10872f mo33982e(long j, b bVar) {
        boolean z;
        l.e(bVar, "dateTime");
        Map<Long, C10872f> map = this.f17154c;
        if (map == null || map.isEmpty()) {
            return null;
        }
        C10872f c10872f = this.f17154c.get(Long.valueOf(j));
        if (c10872f != null) {
            return c10872f;
        }
        List<C9662r> list = this.f17157f;
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
        C10345c c10345c = this.f17158g;
        if (c10345c == null) {
            return null;
        }
        l.d(z2, "fromDate");
        l.d(H, "toDate");
        mo33978i(C10345c.m26319a(c10345c, 0L, null, null, new C9662r(z2, H), 7), false, this.f17159h);
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: f */
    public boolean mo33981f() {
        return !this.f17154c.isEmpty();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: g */
    public void mo33980g(String str, boolean z) {
        l.e(str, "analyticsCategory");
        this.f17164m.mo26770g(str, z);
    }

    public f getCoroutineContext() {
        return this.f17162k.plus(this.f17152a);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: h */
    public boolean mo33979h() {
        return !this.f17154c.isEmpty();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: i */
    public void mo33978i(C10345c c10345c, boolean z, a<s> aVar) {
        l.e(c10345c, "requestInfocard");
        this.f17158g = c10345c;
        this.f17159h = aVar;
        this.f17160i.incrementAndGet();
        d.w2(this, this.f17153b, (j0) null, new C5023c(c10345c, z, aVar, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5027g
    /* renamed from: j */
    public void mo33977j(long j, C10872f c10872f) {
        l.e(c10872f, "infoCardUiModel");
        this.f17164m.mo26767j(j, c10872f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m33997k(long r6, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5020e.m33997k(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018a A[LOOP:2: B:34:0x0180->B:36:0x018a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01d0  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33996l(java.util.List<p193e.p194a.p437c.p610y.C10872f> r23, s1.w.d<? super java.util.List<p193e.p194a.p437c.p610y.C10872f>> r24) {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p201a.C5020e.m33996l(java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: m */
    public final void m33995m() {
        this.f17154c.clear();
        this.f17155d.clear();
        this.f17157f.clear();
        this.f17158g = null;
        this.f17159h = null;
        this.f17160i.set(0);
        this.f17161j = -1L;
    }
}
