package p193e.p194a.p195a.p200c.p201a;

import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.C9662r;
import p193e.p194a.p437c.p525b0.AbstractC9713d;
import p193e.p194a.p437c.p525b0.C9711b;
import p193e.p194a.p437c.p552i.p559g.C10346d;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.a.p */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p.class */
public final class C5042p implements AbstractC5041o {

    /* renamed from: b */
    public Map<Long, C9711b> f17278b;

    /* renamed from: c */
    public C10346d f17279c;

    /* renamed from: d */
    public a<s> f17280d;

    /* renamed from: g */
    public final f f17283g;

    /* renamed from: h */
    public final f f17284h;

    /* renamed from: i */
    public final AbstractC9713d f17285i;

    /* renamed from: a */
    public final CoroutineExceptionHandler f17277a = new C5043a(CoroutineExceptionHandler.a.a);

    /* renamed from: e */
    public final AtomicInteger f17281e = new AtomicInteger();

    /* renamed from: f */
    public final List<C9662r> f17282f = new ArrayList();

    /* renamed from: e.a.a.c.a.p$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$a.class */
    public static final class C5043a extends s1.w.a implements CoroutineExceptionHandler {
        public C5043a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10480a.m26061I1(th);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$loadUpdateTags$2", f = "UpdateCategoriesManager.kt", l = {76, 85}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.p$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$b.class */
    public static final class C5044b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17286e;

        /* renamed from: g */
        public final /* synthetic */ C10346d f17288g;

        /* renamed from: h */
        public final /* synthetic */ a f17289h;

        @e(c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$loadUpdateTags$2$2", f = "UpdateCategoriesManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.a.p$b$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$b$a.class */
        public static final class C5045a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5045a(d dVar) {
                super(2, dVar);
                C5044b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33921i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5045a(dVar);
            }

            /* renamed from: k */
            public final Object m33920k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5044b c5044b = C5044b.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                a aVar = c5044b.f17289h;
                return aVar != null ? (s) aVar.invoke() : null;
            }

            /* renamed from: s */
            public final Object m33919s(Object obj) {
                C25225a.m3932a3(obj);
                a aVar = C5044b.this.f17289h;
                return aVar != null ? (s) aVar.invoke() : null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5044b(C10346d c10346d, a aVar, d dVar) {
            super(2, dVar);
            C5042p.this = r5;
            this.f17288g = c10346d;
            this.f17289h = aVar;
        }

        /* renamed from: i */
        public final d<s> m33924i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5044b(this.f17288g, this.f17289h, dVar);
        }

        /* renamed from: k */
        public final Object m33923k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5044b(this.f17288g, this.f17289h, dVar).m33922s(s.a);
        }

        /* renamed from: s */
        public final Object m33922s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17286e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9713d abstractC9713d = C5042p.this.f17285i;
                C10346d c10346d = this.f17288g;
                this.f17286e = 1;
                Object mo27185e = abstractC9713d.mo27185e(c10346d, this);
                obj = mo27185e;
                if (mo27185e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            Map<? extends Long, ? extends C9711b> map = (Map) obj;
            C5042p c5042p = C5042p.this;
            if (c5042p.f17278b == null) {
                z = false;
            }
            if (!z) {
                c5042p.f17278b = new LinkedHashMap();
            }
            Map<Long, C9711b> map2 = C5042p.this.f17278b;
            if (map2 == null) {
                l.l("updateCategoryCache");
                throw null;
            }
            map2.putAll(map);
            if (C5042p.this.f17281e.decrementAndGet() == 0) {
                f fVar = C5042p.this.f17283g;
                C5045a c5045a = new C5045a(null);
                this.f17286e = 2;
                if (s1.a.a.a.v0.f.d.a4(fVar, c5045a, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$loadUpdateTags$3", f = "UpdateCategoriesManager.kt", l = {95, 103}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.p$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$c.class */
    public static final class C5046c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17291e;

        /* renamed from: g */
        public final /* synthetic */ long f17293g;

        @e(c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$loadUpdateTags$3$3", f = "UpdateCategoriesManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.a.p$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$c$a.class */
        public static final class C5047a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5047a(d dVar) {
                super(2, dVar);
                C5046c.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33915i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5047a(dVar);
            }

            /* renamed from: k */
            public final Object m33914k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5046c c5046c = C5046c.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                a<s> aVar = C5042p.this.f17280d;
                return aVar != null ? (s) aVar.invoke() : null;
            }

            /* renamed from: s */
            public final Object m33913s(Object obj) {
                C25225a.m3932a3(obj);
                a<s> aVar = C5042p.this.f17280d;
                return aVar != null ? (s) aVar.invoke() : null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5046c(long j, d dVar) {
            super(2, dVar);
            C5042p.this = r5;
            this.f17293g = j;
        }

        /* renamed from: i */
        public final d<s> m33918i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5046c(this.f17293g, dVar);
        }

        /* renamed from: k */
        public final Object m33917k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5046c(this.f17293g, dVar).m33916s(s.a);
        }

        /* renamed from: s */
        public final Object m33916s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17291e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9713d abstractC9713d = C5042p.this.f17285i;
                long j = this.f17293g;
                this.f17291e = 1;
                Object mo27184f = abstractC9713d.mo27184f(j, this);
                obj = mo27184f;
                if (mo27184f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C9711b c9711b = (C9711b) obj;
            C5042p c5042p = C5042p.this;
            if (c5042p.f17278b == null) {
                z = false;
            }
            if (!z) {
                c5042p.f17278b = new LinkedHashMap();
            }
            if (c9711b != null) {
                Map<Long, C9711b> map = C5042p.this.f17278b;
                if (map == null) {
                    l.l("updateCategoryCache");
                    throw null;
                }
                map.put(new Long(this.f17293g), c9711b);
            }
            if (C5042p.this.f17281e.decrementAndGet() == 0) {
                f fVar = C5042p.this.f17283g;
                C5047a c5047a = new C5047a(null);
                this.f17291e = 2;
                if (s1.a.a.a.v0.f.d.a4(fVar, c5047a, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$updateCategoryFeedback$1", f = "UpdateCategoriesManager.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.a.p$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/p$d.class */
    public static final class C5048d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17295e;

        /* renamed from: g */
        public final /* synthetic */ String f17297g;

        /* renamed from: h */
        public final /* synthetic */ long f17298h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5048d(String str, long j, d dVar) {
            super(2, dVar);
            C5042p.this = r5;
            this.f17297g = str;
            this.f17298h = j;
        }

        /* renamed from: i */
        public final d<s> m33912i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5048d(this.f17297g, this.f17298h, dVar);
        }

        /* renamed from: k */
        public final Object m33911k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5048d(this.f17297g, this.f17298h, dVar).m33910s(s.a);
        }

        /* renamed from: s */
        public final Object m33910s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17295e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9713d abstractC9713d = C5042p.this.f17285i;
                String str = this.f17297g;
                long j = this.f17298h;
                this.f17295e = 1;
                if (abstractC9713d.mo27187c(str, j, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5042p.this.mo33930c(this.f17298h);
            return s.a;
        }
    }

    @Inject
    public C5042p(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC9713d abstractC9713d) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC9713d, "updatesRepository");
        this.f17283g = fVar;
        this.f17284h = fVar2;
        this.f17285i = abstractC9713d;
        int i = CoroutineExceptionHandler.d0;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: a */
    public boolean mo33932a() {
        Map<Long, C9711b> map = this.f17278b;
        boolean z = false;
        if (map != null) {
            if (map == null) {
                l.l("updateCategoryCache");
                throw null;
            }
            z = false;
            if (!map.isEmpty()) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: b */
    public void mo33931b() {
        Map<Long, C9711b> map = this.f17278b;
        if (map != null) {
            if (map == null) {
                l.l("updateCategoryCache");
                throw null;
            }
            map.clear();
        }
        this.f17279c = null;
        this.f17280d = null;
        this.f17282f.clear();
        this.f17279c = null;
        this.f17281e.set(0);
        s1.a.a.a.v0.f.d.X(m33925h().a, (CancellationException) null, 1, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: c */
    public void mo33930c(long j) {
        this.f17281e.incrementAndGet();
        s1.a.a.a.v0.f.d.w2(m33925h(), this.f17277a, (j0) null, new C5046c(j, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: d */
    public C9711b mo33929d(long j, b bVar) {
        boolean z;
        l.e(bVar, "dateTime");
        Map<Long, C9711b> map = this.f17278b;
        if (!(map != null)) {
            return null;
        }
        if (map == null) {
            l.l("updateCategoryCache");
            throw null;
        }
        C9711b c9711b = map.get(Long.valueOf(j));
        if (c9711b != null) {
            return c9711b;
        }
        List<C9662r> list = this.f17282f;
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
        C10346d c10346d = this.f17279c;
        if (c10346d == null) {
            return null;
        }
        l.d(z2, "fromDate");
        l.d(H, "toDate");
        C9662r c9662r2 = new C9662r(z2, H);
        long j2 = c10346d.f30732a;
        String str = c10346d.f30733b;
        String str2 = c10346d.f30734c;
        l.e(str, "senderId");
        l.e(str2, "analyticsContext");
        mo33927f(new C10346d(j2, str, str2, c9662r2), false, this.f17280d);
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: e */
    public void mo33928e(String str, long j) {
        l.e(str, "category");
        s1.a.a.a.v0.f.d.w2(m33925h(), (f) null, (j0) null, new C5048d(str, j, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: f */
    public void mo33927f(C10346d c10346d, boolean z, a<s> aVar) {
        l.e(c10346d, "requestUpdatesTag");
        this.f17279c = c10346d;
        this.f17280d = aVar;
        C9662r c9662r = c10346d.f30735d;
        if (c9662r != null) {
            this.f17282f.add(c9662r);
        }
        this.f17281e.incrementAndGet();
        if (z) {
            mo33931b();
            if (this.f17281e.decrementAndGet() == 0 && aVar != null) {
                s sVar = (s) aVar.invoke();
            }
        }
        s1.a.a.a.v0.f.d.w2(m33925h(), this.f17277a, (j0) null, new C5044b(c10346d, aVar, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.AbstractC5041o
    /* renamed from: g */
    public boolean mo33926g(long j) {
        boolean z;
        Map<Long, C9711b> map = this.f17278b;
        if (map == null) {
            z = false;
        } else if (map == null) {
            l.l("updateCategoryCache");
            throw null;
        } else {
            z = map.containsKey(Long.valueOf(j));
        }
        return z;
    }

    /* renamed from: h */
    public final i0 m33925h() {
        return s1.a.a.a.v0.f.d.h(this.f17284h.plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
    }
}
