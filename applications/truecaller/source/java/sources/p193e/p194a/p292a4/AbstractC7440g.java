package p193e.p194a.p292a4;

import android.app.Application;
import com.razorpay.AnalyticsConstants;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p1272u3.AbstractC20583b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.a4.g */
/* loaded from: classes10-dex2jar.jar:e/a/a4/g.class */
public abstract class AbstractC7440g<T extends Application> implements AbstractC7436e<T> {

    /* renamed from: a */
    public List<AbstractC7432c> f23620a = new ArrayList();

    /* renamed from: b */
    public final l<String, s> f23621b = C7442b.f23632b;

    /* renamed from: c */
    public final Provider<f> f23622c;

    /* renamed from: d */
    public final a<AbstractC8432l> f23623d;

    /* renamed from: e */
    public final a<CallingSettings> f23624e;

    /* renamed from: f */
    public final a<C20592g> f23625f;

    /* renamed from: g */
    public final AbstractC19247m0 f23626g;

    @e(c = "com.truecaller.init.BaseApplicationInitManager$initWithContext$1", f = "BaseApplicationInitManager.kt", l = {107, 108}, m = "invokeSuspend")
    /* renamed from: e.a.a4.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$a.class */
    public static final class C7441a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23627e;

        /* renamed from: g */
        public final /* synthetic */ long f23629g;

        /* renamed from: h */
        public final /* synthetic */ l f23630h;

        /* renamed from: i */
        public final /* synthetic */ String f23631i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7441a(long j, l lVar, String str, d dVar) {
            super(2, dVar);
            AbstractC7440g.this = r5;
            this.f23629g = j;
            this.f23630h = lVar;
            this.f23631i = str;
        }

        /* renamed from: i */
        public final d<s> m29611i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C7441a(this.f23629g, this.f23630h, this.f23631i, dVar);
        }

        /* renamed from: k */
        public final Object m29610k(Object obj, Object obj2) {
            return m29611i(obj, (d) obj2).m29609s(s.a);
        }

        /* renamed from: s */
        public final Object m29609s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23627e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                long j = this.f23629g;
                this.f23627e = 1;
                if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
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
            l lVar = this.f23630h;
            String str = this.f23631i;
            AbstractC19247m0 abstractC19247m0 = AbstractC7440g.this.f23626g;
            this.f23627e = 2;
            if (C17891a1.C17902k.m15578r0(lVar, str, abstractC19247m0, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a4.g$b */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$b.class */
    public static final class C7442b extends m implements l<String, s> {

        /* renamed from: b */
        public static final C7442b f23632b = new C7442b();

        public C7442b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29608d(Object obj) {
            s1.z.c.l.e((String) obj, "message");
            return s.a;
        }
    }

    @e(c = "com.truecaller.init.BaseApplicationInitManager$retryInit$4$1", f = "BaseApplicationInitManager.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: e.a.a4.g$c */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$c.class */
    public static final class C7443c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23633e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC7432c f23634f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC7440g f23635g;

        /* renamed from: h */
        public final /* synthetic */ d f23636h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7443c(AbstractC7432c abstractC7432c, d dVar, AbstractC7440g abstractC7440g, d dVar2) {
            super(2, dVar);
            this.f23634f = abstractC7432c;
            this.f23635g = abstractC7440g;
            this.f23636h = dVar2;
        }

        /* renamed from: i */
        public final d<s> m29607i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C7443c(this.f23634f, dVar, this.f23635g, this.f23636h);
        }

        /* renamed from: k */
        public final Object m29606k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C7443c(this.f23634f, dVar, this.f23635g, this.f23636h).m29605s(s.a);
        }

        /* renamed from: s */
        public final Object m29605s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = s1.w.j.a.a;
            int i = this.f23633e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7465r c7465r = (C7465r) this.f23634f;
                AbstractC19247m0 abstractC19247m0 = this.f23635g.f23626g;
                this.f23633e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c7465r.f23719c, new C7464q(c7465r, abstractC19247m0, null), this);
                if (a4 != obj3) {
                    a4 = obj2;
                }
                if (a4 == obj3) {
                    return obj3;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    @e(c = "com.truecaller.init.BaseApplicationInitManager", f = "BaseApplicationInitManager.kt", l = {43}, m = "retryInit$suspendImpl")
    /* renamed from: e.a.a4.g$d */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$d.class */
    public static final class C7444d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23637d;

        /* renamed from: e */
        public int f23638e;

        /* renamed from: g */
        public Object f23640g;

        /* renamed from: h */
        public Object f23641h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7444d(d dVar) {
            super(dVar);
            AbstractC7440g.this = r4;
        }

        /* renamed from: s */
        public final Object m29604s(Object obj) {
            this.f23637d = obj;
            this.f23638e |= Integer.MIN_VALUE;
            return AbstractC7440g.m29613l(AbstractC7440g.this, this);
        }
    }

    /* renamed from: e.a.a4.g$e */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$e.class */
    public static final class C7445e extends m implements l<AbstractC7432c, CharSequence> {

        /* renamed from: b */
        public static final C7445e f23642b = new C7445e();

        public C7445e() {
            super(1);
        }

        /* renamed from: d */
        public Object m29603d(Object obj) {
            AbstractC7432c abstractC7432c = (AbstractC7432c) obj;
            s1.z.c.l.e(abstractC7432c, "it");
            return abstractC7432c.mo29581b();
        }
    }

    @e(c = "com.truecaller.init.BaseApplicationInitManager$retryInitAsync$1", f = "BaseApplicationInitManager.kt", l = {52}, m = "invokeSuspend")
    /* renamed from: e.a.a4.g$f */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$f.class */
    public static final class C7446f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23643e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7446f(d dVar) {
            super(2, dVar);
            AbstractC7440g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29602i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C7446f(dVar);
        }

        /* renamed from: k */
        public final Object m29601k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C7446f(dVar).m29600s(s.a);
        }

        /* renamed from: s */
        public final Object m29600s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23643e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7440g abstractC7440g = AbstractC7440g.this;
                this.f23643e = 1;
                Objects.requireNonNull(abstractC7440g);
                if (AbstractC7440g.m29613l(abstractC7440g, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a4.g$g */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/g$g.class */
    public static final class C7447g implements AbstractC7460m {

        /* renamed from: a */
        public final String f23645a;

        /* renamed from: b */
        public final /* synthetic */ s1.z.b.a f23646b;

        public C7447g(s1.z.b.a aVar, String str) {
            this.f23646b = aVar;
            this.f23645a = str;
        }

        @Override // p193e.p194a.p292a4.AbstractC7460m
        /* renamed from: a */
        public boolean mo29587a() {
            return false;
        }

        @Override // p193e.p194a.p292a4.AbstractC7460m
        /* renamed from: b */
        public boolean mo29586b() {
            return ((Boolean) this.f23646b.invoke()).booleanValue();
        }

        @Override // p193e.p194a.p292a4.AbstractC7460m
        public String getName() {
            return this.f23645a;
        }
    }

    public AbstractC7440g(@Named("UI") Provider<f> provider, a<AbstractC8432l> aVar, a<CallingSettings> aVar2, a<C20592g> aVar3, AbstractC19247m0 abstractC19247m0) {
        s1.z.c.l.e(provider, "uiContext");
        s1.z.c.l.e(aVar, "accountManager");
        s1.z.c.l.e(aVar2, "callingSettings");
        s1.z.c.l.e(aVar3, "featuresRegistry");
        s1.z.c.l.e(abstractC19247m0, "traceUtil");
        this.f23622c = provider;
        this.f23623d = aVar;
        this.f23624e = aVar2;
        this.f23625f = aVar3;
        this.f23626g = abstractC19247m0;
    }

    /* renamed from: f */
    public static /* synthetic */ AbstractC7460m m29619f(AbstractC7440g abstractC7440g, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return abstractC7440g.m29620e(z);
    }

    /* renamed from: g */
    public static C7459l m29618g(AbstractC7440g abstractC7440g, AbstractC20583b abstractC20583b, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        s1.z.c.l.e(abstractC20583b, "feature");
        return new C7459l(abstractC20583b, z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [e.a.a4.g] */
    /* renamed from: k */
    public static /* synthetic */ Object m29614k(AbstractC7440g abstractC7440g, String str, f fVar, AbstractC7460m abstractC7460m, long j, l lVar, int i, Object obj) {
        if ((i & 4) != 0) {
            abstractC7460m = null;
        }
        ?? r12 = j;
        if ((i & 8) != 0) {
            r12 = 0;
        }
        return abstractC7440g.m29615j(str, fVar, abstractC7460m, r12, lVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0137  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m29613l(p193e.p194a.p292a4.AbstractC7440g r10, s1.w.d r11) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p292a4.AbstractC7440g.m29613l(e.a.a4.g, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p292a4.AbstractC7436e
    /* renamed from: a */
    public final void mo29623a() {
        h1 h1Var = h1.a;
        Object obj = this.f23622c.get();
        s1.z.c.l.d(obj, "uiContext.get()");
        s1.a.a.a.v0.f.d.w2(h1Var, (f) obj, (j0) null, new C7446f(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p292a4.AbstractC7436e
    /* renamed from: b */
    public Object mo29622b(d<? super s> dVar) {
        return m29613l(this, dVar);
    }

    /* renamed from: d */
    public final AbstractC7460m m29621d(boolean z) {
        return new C7430b(this.f23623d, z);
    }

    /* renamed from: e */
    public final AbstractC7460m m29620e(boolean z) {
        return new C7438f(this.f23623d, z);
    }

    /* renamed from: h */
    public final Object m29617h(String str, AbstractC7460m abstractC7460m, s1.z.b.a<s> aVar) {
        Boolean bool;
        s1.z.c.l.e(str, "actionName");
        s1.z.c.l.e(aVar, "action");
        if (abstractC7460m == null || abstractC7460m.mo29586b()) {
            C17891a1.C17902k.m15575s0(aVar, str, this.f23626g);
            bool = s.a;
        } else if (abstractC7460m.mo29587a()) {
            l<String, s> lVar = this.f23621b;
            StringBuilder m8692L = C22128a.m8692L("  ", str, " invocation is postponed due to missed conditions [");
            m8692L.append(abstractC7460m.getName());
            m8692L.append(']');
            lVar.d(m8692L.toString());
            bool = Boolean.valueOf(this.f23620a.add(new C7463p(str, abstractC7460m, aVar)));
        } else {
            l<String, s> lVar2 = this.f23621b;
            StringBuilder m8692L2 = C22128a.m8692L("  ", str, " invocation is skipped due to missed conditions [");
            m8692L2.append(abstractC7460m.getName());
            m8692L2.append(']');
            bool = lVar2.d(m8692L2.toString());
        }
        return bool;
    }

    /* renamed from: j */
    public final Object m29615j(String str, f fVar, AbstractC7460m abstractC7460m, long j, l<? super d<? super s>, ? extends Object> lVar) {
        Boolean bool;
        s1.z.c.l.e(str, "actionName");
        s1.z.c.l.e(fVar, "coroutineContext");
        s1.z.c.l.e(lVar, "action");
        if (abstractC7460m == null || abstractC7460m.mo29586b()) {
            bool = s1.a.a.a.v0.f.d.w2(h1.a, fVar, (j0) null, new C7441a(j, lVar, str, null), 2, (Object) null);
        } else if (abstractC7460m.mo29587a()) {
            l<String, s> lVar2 = this.f23621b;
            StringBuilder m8692L = C22128a.m8692L("  ", str, " invocation is postponed due to missed conditions [");
            m8692L.append(abstractC7460m.getName());
            m8692L.append(']');
            lVar2.d(m8692L.toString());
            bool = Boolean.valueOf(this.f23620a.add(new C7465r(str, abstractC7460m, fVar, lVar)));
        } else {
            l<String, s> lVar3 = this.f23621b;
            StringBuilder m8692L2 = C22128a.m8692L("  ", str, " invocation is skipped due to missed conditions [");
            m8692L2.append(abstractC7460m.getName());
            m8692L2.append(']');
            bool = lVar3.d(m8692L2.toString());
        }
        return bool;
    }

    /* renamed from: m */
    public final AbstractC7460m m29612m(String str, s1.z.b.a<Boolean> aVar) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        s1.z.c.l.e(aVar, "condition");
        return new C7447g(aVar, str);
    }
}
