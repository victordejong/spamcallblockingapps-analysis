package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/f0.class */
public final class C2600f0 implements AbstractC2575b1 {

    /* renamed from: b */
    private static final AbstractC2637l0 f11093b = new C2601a();

    /* renamed from: a */
    private final AbstractC2637l0 f11094a;

    /* renamed from: com.google.protobuf.f0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/f0$a.class */
    static final class C2601a implements AbstractC2637l0 {
        C2601a() {
        }

        @Override // com.google.protobuf.AbstractC2637l0
        /* renamed from: a */
        public AbstractC2629k0 mo2269a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // com.google.protobuf.AbstractC2637l0
        /* renamed from: b */
        public boolean mo2268b(Class<?> cls) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.f0$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/f0$b.class */
    public static class C2602b implements AbstractC2637l0 {

        /* renamed from: a */
        private AbstractC2637l0[] f11095a;

        C2602b(AbstractC2637l0... l0VarArr) {
            this.f11095a = l0VarArr;
        }

        @Override // com.google.protobuf.AbstractC2637l0
        /* renamed from: a */
        public AbstractC2629k0 mo2269a(Class<?> cls) {
            AbstractC2637l0[] l0VarArr;
            for (AbstractC2637l0 l0Var : this.f11095a) {
                if (l0Var.mo2268b(cls)) {
                    return l0Var.mo2269a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // com.google.protobuf.AbstractC2637l0
        /* renamed from: b */
        public boolean mo2268b(Class<?> cls) {
            for (AbstractC2637l0 l0Var : this.f11095a) {
                if (l0Var.mo2268b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public C2600f0() {
        this(m2745b());
    }

    private C2600f0(AbstractC2637l0 l0Var) {
        C2665x.m2250b(l0Var, "messageInfoFactory");
        this.f11094a = l0Var;
    }

    /* renamed from: b */
    private static AbstractC2637l0 m2745b() {
        return new C2602b(C2661v.m2267c(), m2744c());
    }

    /* renamed from: c */
    private static AbstractC2637l0 m2744c() {
        try {
            return (AbstractC2637l0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f11093b;
        }
    }

    /* renamed from: d */
    private static boolean m2743d(AbstractC2629k0 k0Var) {
        return k0Var.mo2227b() == ProtoSyntax.PROTO2;
    }

    /* renamed from: e */
    private static <T> AbstractC2572a1<T> m2742e(Class<T> cls, AbstractC2629k0 k0Var) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return m2743d(k0Var) ? C2647p0.m2392N(cls, k0Var, C2658t0.m2285b(), AbstractC2580d0.m2832b(), C2578c1.m2881M(), C2651r.m2322b(), C2623j0.m2568b()) : C2647p0.m2392N(cls, k0Var, C2658t0.m2285b(), AbstractC2580d0.m2832b(), C2578c1.m2881M(), null, C2623j0.m2568b());
        }
        return m2743d(k0Var) ? C2647p0.m2392N(cls, k0Var, C2658t0.m2286a(), AbstractC2580d0.m2833a(), C2578c1.m2886H(), C2651r.m2323a(), C2623j0.m2569a()) : C2647p0.m2392N(cls, k0Var, C2658t0.m2286a(), AbstractC2580d0.m2833a(), C2578c1.m2885I(), null, C2623j0.m2569a());
    }

    @Override // com.google.protobuf.AbstractC2575b1
    /* renamed from: a */
    public <T> AbstractC2572a1<T> mo2746a(Class<T> cls) {
        AbstractC2609g1<?, ?> H;
        AbstractC2646p<?> a;
        C2578c1.m2884J(cls);
        AbstractC2629k0 a2 = this.f11094a.mo2269a(cls);
        if (!a2.mo2228a()) {
            return m2742e(cls, a2);
        }
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            H = C2578c1.m2881M();
            a = C2651r.m2322b();
        } else {
            H = C2578c1.m2886H();
            a = C2651r.m2323a();
        }
        return C2650q0.m2326l(H, a, a2.mo2226c());
    }
}
