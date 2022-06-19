package p193e.p194a.p1080o.p1097b;

import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1103p.p1104a.AbstractC18809c;
import p193e.p194a.p1080o.p1103p.p1104a.C18810d;
import p193e.p194a.p1080o.p1103p.p1104a.C18811e;
import p193e.p194a.p1080o.p1103p.p1104a.C18812f;
import p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.b.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/g.class */
public final class C18712g implements AbstractC18710f, i0 {

    /* renamed from: a */
    public final int f52579a = 1;

    /* renamed from: b */
    public final g f52580b = C25225a.m3978P1(new C18714b());

    /* renamed from: c */
    public final Provider<Boolean> f52581c;

    /* renamed from: d */
    public final Provider<Boolean> f52582d;

    /* renamed from: e */
    public final Provider<Boolean> f52583e;

    /* renamed from: f */
    public final AbstractC18746o f52584f;

    /* renamed from: g */
    public final AbstractC18809c f52585g;

    /* renamed from: h */
    public final AbstractC18868e f52586h;

    /* renamed from: i */
    public final AbstractC8621z f52587i;

    /* renamed from: j */
    public final AbstractC18823d f52588j;

    /* renamed from: k */
    public final AbstractC8432l f52589k;

    /* renamed from: l */
    public final AbstractC12597c f52590l;

    /* renamed from: m */
    public final AbstractC18738k f52591m;

    /* renamed from: n */
    public final f f52592n;

    /* renamed from: o */
    public final f f52593o;

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl$isContextCallAvailableInPresence$2", f = "ContextCallAvailabilityManager.kt", l = {180}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$a.class */
    public static final class C18713a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f52594e;

        /* renamed from: g */
        public final /* synthetic */ String f52596g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18713a(String str, d dVar) {
            super(2, dVar);
            C18712g.this = r5;
            this.f52596g = str;
        }

        /* renamed from: i */
        public final d<s> m14597i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18713a(this.f52596g, dVar);
        }

        /* renamed from: k */
        public final Object m14596k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18713a(this.f52596g, dVar).m14595s(s.a);
        }

        /* renamed from: s */
        public final Object m14595s(Object obj) {
            Boolean bool = Boolean.FALSE;
            a aVar = a.a;
            int i = this.f52594e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18712g.this.f52587i.mo28181j(this.f52596g);
                if (mo28181j != null) {
                    AbstractC18809c abstractC18809c = C18712g.this.f52585g;
                    this.f52594e = 1;
                    C18812f c18812f = (C18812f) abstractC18809c;
                    Object m15625b1 = C17891a1.C17902k.m15625b1(c18812f.f52844b, new C18810d(c18812f, mo28181j, null), this);
                    obj = m15625b1;
                    if (m15625b1 == aVar) {
                        return aVar;
                    }
                }
                return bool;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            ContextCallAvailability contextCallAvailability = (ContextCallAvailability) obj;
            if (contextCallAvailability != null) {
                if (contextCallAvailability.getEnabled() != 1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
            return bool;
        }
    }

    /* renamed from: e.a.o.b.g$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$b.class */
    public static final class C18714b extends m implements s1.z.b.a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18714b() {
            super(0);
            C18712g.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C18712g.this.f52590l.mo22840d(AbstractC12603e.C12604a.f36737c));
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {131, 132}, m = "isMidCallOnDemandReasonsSupported")
    /* renamed from: e.a.o.b.g$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$c.class */
    public static final class C18715c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52598d;

        /* renamed from: e */
        public int f52599e;

        /* renamed from: g */
        public Object f52601g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18715c(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14594s(Object obj) {
            this.f52598d = obj;
            this.f52599e |= Integer.MIN_VALUE;
            return C18712g.this.mo14609b(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {104}, m = "isOnBoarded")
    /* renamed from: e.a.o.b.g$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$d.class */
    public static final class C18716d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52602d;

        /* renamed from: e */
        public int f52603e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18716d(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14593s(Object obj) {
            this.f52602d = obj;
            this.f52603e |= Integer.MIN_VALUE;
            return C18712g.this.mo14605f(this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {140, 144, 148}, m = "isOnBoardedAvailable")
    /* renamed from: e.a.o.b.g$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$e.class */
    public static final class C18717e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52605d;

        /* renamed from: e */
        public int f52606e;

        /* renamed from: g */
        public Object f52608g;

        /* renamed from: h */
        public Object f52609h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18717e(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14592s(Object obj) {
            this.f52605d = obj;
            this.f52606e |= Integer.MIN_VALUE;
            return C18712g.this.mo14599p(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {186}, m = "isOnBoardedInternal")
    /* renamed from: e.a.o.b.g$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$f.class */
    public static final class C18718f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52610d;

        /* renamed from: e */
        public int f52611e;

        /* renamed from: g */
        public Object f52613g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18718f(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14591s(Object obj) {
            this.f52610d = obj;
            this.f52611e |= Integer.MIN_VALUE;
            return C18712g.this.m14603h(this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {115, 116}, m = "isOnDemandAvailable")
    /* renamed from: e.a.o.b.g$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$g.class */
    public static final class C18719g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52614d;

        /* renamed from: e */
        public int f52615e;

        /* renamed from: g */
        public Object f52617g;

        /* renamed from: h */
        public Object f52618h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18719g(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14590s(Object obj) {
            this.f52614d = obj;
            this.f52615e |= Integer.MIN_VALUE;
            return C18712g.this.mo14600n(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl", f = "ContextCallAvailabilityManager.kt", l = {123, 124}, m = "isSecondCallsOnDemandReasonsSupported")
    /* renamed from: e.a.o.b.g$h */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$h.class */
    public static final class C18720h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52619d;

        /* renamed from: e */
        public int f52620e;

        /* renamed from: g */
        public Object f52622g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18720h(d dVar) {
            super(dVar);
            C18712g.this = r4;
        }

        /* renamed from: s */
        public final Object m14589s(Object obj) {
            this.f52619d = obj;
            this.f52620e |= Integer.MIN_VALUE;
            return C18712g.this.mo14608c(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl$updatePresenceAvailability$1", f = "ContextCallAvailabilityManager.kt", l = {162}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.g$i */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g$i.class */
    public static final class C18721i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52623e;

        /* renamed from: g */
        public final /* synthetic */ ContextCallAvailability f52625g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18721i(ContextCallAvailability contextCallAvailability, d dVar) {
            super(2, dVar);
            C18712g.this = r5;
            this.f52625g = contextCallAvailability;
        }

        /* renamed from: i */
        public final d<s> m14588i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18721i(this.f52625g, dVar);
        }

        /* renamed from: k */
        public final Object m14587k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18721i(this.f52625g, dVar).m14586s(s.a);
        }

        /* renamed from: s */
        public final Object m14586s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f52623e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18809c abstractC18809c = C18712g.this.f52585g;
                ContextCallAvailability contextCallAvailability = this.f52625g;
                this.f52623e = 1;
                C18812f c18812f = (C18812f) abstractC18809c;
                Object m15625b1 = C17891a1.C17902k.m15625b1(c18812f.f52844b, new C18811e(c18812f, contextCallAvailability, null), this);
                if (m15625b1 != obj3) {
                    m15625b1 = obj2;
                }
                if (m15625b1 == obj3) {
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

    @Inject
    public C18712g(Provider<Boolean> provider, Provider<Boolean> provider2, Provider<Boolean> provider3, AbstractC18746o abstractC18746o, AbstractC18809c abstractC18809c, AbstractC18868e abstractC18868e, AbstractC8621z abstractC8621z, AbstractC18823d abstractC18823d, AbstractC8432l abstractC8432l, AbstractC12597c abstractC12597c, AbstractC18738k abstractC18738k, @Named("IO") f fVar, @Named("UI") f fVar2) {
        l.e(provider, "callReasonFeatureFlag");
        l.e(provider2, "secondCallOnDemandReasonPickerFeatureFlag");
        l.e(provider3, "midCallOnDemandReasonPickerFF");
        l.e(abstractC18746o, "contextCallSettings");
        l.e(abstractC18809c, "availabilityDbHelper");
        l.e(abstractC18868e, "reasonRepository");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC18823d, "hiddenNumberRepository");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC18738k, "promoManager");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f52581c = provider;
        this.f52582d = provider2;
        this.f52583e = provider3;
        this.f52584f = abstractC18746o;
        this.f52585g = abstractC18809c;
        this.f52586h = abstractC18868e;
        this.f52587i = abstractC8621z;
        this.f52588j = abstractC18823d;
        this.f52589k = abstractC8432l;
        this.f52590l = abstractC12597c;
        this.f52591m = abstractC18738k;
        this.f52592n = fVar;
        this.f52593o = fVar2;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: a */
    public void mo14610a(ContextCallAvailability contextCallAvailability) {
        l.e(contextCallAvailability, "contextCallAvailability");
        s1.a.a.a.v0.f.d.w2(this, this.f52592n, (j0) null, new C18721i(contextCallAvailability, null), 2, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
        if ((r10 instanceof p193e.p194a.p1080o.p1097b.AbstractC18733j.C18734a) == false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14609b(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.mo14609b(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
        if ((r10 instanceof p193e.p194a.p1080o.p1097b.AbstractC18733j.C18734a) == false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14608c(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.mo14608c(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: d */
    public void mo14607d(boolean z) {
        this.f52584f.putBoolean("onBoardingChurn", m14602i() && !z);
        this.f52584f.putBoolean("pref_contextCallIsEnabled", z);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: e */
    public boolean mo14606e() {
        return C17891a1.C17902k.m15681F(this.f52584f, "onBoardingIsShown", false, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14605f(s1.w.d<? super p193e.p194a.p1080o.p1097b.AbstractC18733j> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1097b.C18712g.C18716d
            if (r0 == 0) goto L25
            r0 = r6
            e.a.o.b.g$d r0 = (p193e.p194a.p1080o.p1097b.C18712g.C18716d) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f52603e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52603e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.o.b.g$d r0 = new e.a.o.b.g$d
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f52602d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f52603e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L7b
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            boolean r0 = r0.isSupported()
            if (r0 == 0) goto L83
            r0 = r6
            r1 = 1
            r0.f52603e = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m14603h(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7b
            r0 = r9
            return r0
        L7b:
            r0 = r6
            e.a.o.b.j r0 = (p193e.p194a.p1080o.p1097b.AbstractC18733j) r0
            r6 = r0
            goto L8d
        L83:
            e.a.o.b.j$a r0 = new e.a.o.b.j$a
            r1 = r0
            r2 = 0
            r3 = 1
            r1.<init>(r2, r3)
            r6 = r0
        L8d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.mo14605f(s1.w.d):java.lang.Object");
    }

    /* renamed from: g */
    public final /* synthetic */ Object m14604g(String str, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f52592n, new C18713a(str, null), dVar);
    }

    public f getCoroutineContext() {
        return this.f52593o;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    public int getVersion() {
        return this.f52579a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m14603h(s1.w.d<? super p193e.p194a.p1080o.p1097b.AbstractC18733j> r6) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.m14603h(s1.w.d):java.lang.Object");
    }

    /* renamed from: i */
    public boolean m14602i() {
        return C17891a1.C17902k.m15681F(this.f52584f, "pref_contextCallIsEnabled", false, 2, null);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    public boolean isSupported() {
        Object obj = this.f52581c.get();
        l.d(obj, "callReasonFeatureFlag.get()");
        return ((Boolean) obj).booleanValue() && this.f52589k.mo28580d() && ((Boolean) this.f52580b.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: l */
    public boolean mo14601l() {
        return this.f52584f.getBoolean("onBoardingChurn", false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
        if (((java.lang.Boolean) r8).booleanValue() == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14600n(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.mo14600n(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0155  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14599p(java.lang.String r6, s1.w.d<? super p193e.p194a.p1080o.p1097b.AbstractC18729i> r7) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18712g.mo14599p(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18710f
    /* renamed from: q */
    public boolean mo14598q() {
        return m14602i();
    }
}
