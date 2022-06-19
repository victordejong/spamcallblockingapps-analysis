package com.google.protobuf;

import com.google.protobuf.AbstractC2569a;
import com.google.protobuf.AbstractC2639m0;
import com.google.protobuf.C2655t;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.AbstractC2550a;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite.class */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC2550a<MessageType, BuilderType>> extends AbstractC2569a<MessageType, BuilderType> {
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    protected C2612h1 unknownFields = C2612h1.m2718c();
    protected int memoizedSerializedSize = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$MethodToInvoke.class */
    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$a.class */
    public static abstract class AbstractC2550a<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC2550a<MessageType, BuilderType>> extends AbstractC2569a.AbstractC2570a<MessageType, BuilderType> {

        /* renamed from: b */
        private final MessageType f10959b;

        /* renamed from: c */
        protected MessageType f10960c;

        /* renamed from: d */
        protected boolean f10961d = false;

        public AbstractC2550a(MessageType messagetype) {
            this.f10959b = messagetype;
            this.f10960c = (MessageType) messagetype.m3044A(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        }

        /* renamed from: H */
        private void m3021H(MessageType messagetype, MessageType messagetype2) {
            C2664w0.m2256a().m2252e(messagetype).mo2337a(messagetype, messagetype2);
        }

        /* renamed from: A */
        protected void m3025A() {
            MessageType messagetype = (MessageType) this.f10960c.m3044A(MethodToInvoke.NEW_MUTABLE_INSTANCE);
            m3021H(messagetype, this.f10960c);
            this.f10960c = messagetype;
        }

        /* renamed from: D */
        public MessageType mo2414d() {
            return this.f10959b;
        }

        /* renamed from: E */
        protected BuilderType m3023E(MessageType messagetype) {
            m3022G(messagetype);
            return this;
        }

        /* renamed from: G */
        public BuilderType m3022G(MessageType messagetype) {
            m3017z();
            m3021H(this.f10960c, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractC2569a.AbstractC2570a
        /* renamed from: s */
        protected /* bridge */ /* synthetic */ AbstractC2569a.AbstractC2570a mo2912s(AbstractC2569a abstractC2569a) {
            m3023E((GeneratedMessageLite) abstractC2569a);
            return this;
        }

        /* renamed from: v */
        public final MessageType mo2420a() {
            MessageType mo2418x = mo2418x();
            if (mo2418x.mo2413o()) {
                return mo2418x;
            }
            throw AbstractC2569a.AbstractC2570a.m2910u(mo2418x);
        }

        /* renamed from: w */
        public MessageType mo2418x() {
            if (this.f10961d) {
                return this.f10960c;
            }
            this.f10960c.m3035J();
            this.f10961d = true;
            return this.f10960c;
        }

        /* renamed from: y */
        public BuilderType clone() {
            BuilderType buildertype = (BuilderType) mo2414d().mo2423i();
            buildertype.m3022G(mo2418x());
            return buildertype;
        }

        /* renamed from: z */
        public final void m3017z() {
            if (this.f10961d) {
                m3025A();
                this.f10961d = false;
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$b.class */
    protected static class C2551b<T extends GeneratedMessageLite<T, ?>> extends AbstractC2573b<T> {

        /* renamed from: a */
        private final T f10962a;

        public C2551b(T t) {
            this.f10962a = t;
        }

        /* renamed from: g */
        public T mo2270b(AbstractC2613i abstractC2613i, C2643o c2643o) {
            return (T) GeneratedMessageLite.m3030O(this.f10962a, abstractC2613i, c2643o);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$c.class */
    public static abstract class AbstractC2552c<MessageType extends AbstractC2552c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements Object<MessageType, BuilderType> {
        protected C2655t<C2553d> extensions = C2655t.m2309h();

        /* renamed from: R */
        public C2655t<C2553d> m3015R() {
            if (this.extensions.m2302o()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.AbstractC2642n0
        /* renamed from: d */
        public /* bridge */ /* synthetic */ AbstractC2639m0 mo2414d() {
            return GeneratedMessageLite.super.mo2414d();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.AbstractC2639m0
        /* renamed from: e */
        public /* bridge */ /* synthetic */ AbstractC2639m0.AbstractC2640a mo2425e() {
            return GeneratedMessageLite.super.mo2425e();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.AbstractC2639m0
        /* renamed from: i */
        public /* bridge */ /* synthetic */ AbstractC2639m0.AbstractC2640a mo2423i() {
            return GeneratedMessageLite.super.mo2423i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.GeneratedMessageLite$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$d.class */
    public static final class C2553d implements C2655t.AbstractC2657b<C2553d> {

        /* renamed from: b */
        final C2665x.AbstractC2669d<?> f10963b;

        /* renamed from: c */
        final int f10964c;

        /* renamed from: d */
        final WireFormat.FieldType f10965d;

        /* renamed from: e */
        final boolean f10966e;

        /* renamed from: f */
        final boolean f10967f;

        /* renamed from: a */
        public int compareTo(C2553d c2553d) {
            return this.f10964c - c2553d.f10964c;
        }

        @Override // com.google.protobuf.C2655t.AbstractC2657b
        /* renamed from: d */
        public boolean mo2290d() {
            return this.f10966e;
        }

        /* renamed from: e */
        public C2665x.AbstractC2669d<?> m3013e() {
            return this.f10963b;
        }

        @Override // com.google.protobuf.C2655t.AbstractC2657b
        /* renamed from: f */
        public WireFormat.FieldType mo2289f() {
            return this.f10965d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.C2655t.AbstractC2657b
        /* renamed from: g */
        public AbstractC2639m0.AbstractC2640a mo2288g(AbstractC2639m0.AbstractC2640a abstractC2640a, AbstractC2639m0 abstractC2639m0) {
            AbstractC2550a abstractC2550a = (AbstractC2550a) abstractC2640a;
            abstractC2550a.m3022G((GeneratedMessageLite) abstractC2639m0);
            return abstractC2550a;
        }

        @Override // com.google.protobuf.C2655t.AbstractC2657b
        public int getNumber() {
            return this.f10964c;
        }

        @Override // com.google.protobuf.C2655t.AbstractC2657b
        /* renamed from: i */
        public WireFormat.JavaType mo2287i() {
            return this.f10965d.getJavaType();
        }

        @Override // com.google.protobuf.C2655t.AbstractC2657b
        public boolean isPacked() {
            return this.f10967f;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$e.class */
    public static class C2554e<ContainingType extends AbstractC2639m0, Type> extends AbstractC2638m<ContainingType, Type> {

        /* renamed from: a */
        final AbstractC2639m0 f10968a;

        /* renamed from: b */
        final C2553d f10969b;

        /* renamed from: a */
        public WireFormat.FieldType m3012a() {
            return this.f10969b.mo2289f();
        }

        /* renamed from: b */
        public AbstractC2639m0 m3011b() {
            return this.f10968a;
        }

        /* renamed from: c */
        public int m3010c() {
            return this.f10969b.getNumber();
        }

        /* renamed from: d */
        public boolean m3009d() {
            return this.f10969b.f10966e;
        }
    }

    /* renamed from: D */
    public static C2665x.AbstractC2672g m3041D() {
        return C2663w.m2259r();
    }

    /* renamed from: E */
    public static <E> C2665x.AbstractC2674i<E> m3040E() {
        return C2675x0.m2233k();
    }

    /* renamed from: F */
    public static <T extends GeneratedMessageLite<?, ?>> T m3039F(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        GeneratedMessageLite<?, ?> generatedMessageLite2 = generatedMessageLite;
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite2 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        GeneratedMessageLite<?, ?> generatedMessageLite3 = generatedMessageLite2;
        if (generatedMessageLite2 == null) {
            generatedMessageLite3 = ((GeneratedMessageLite) C2630k1.m2476j(cls)).mo2414d();
            if (generatedMessageLite3 == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, generatedMessageLite3);
        }
        return (T) generatedMessageLite3;
    }

    /* renamed from: H */
    public static Object m3037H(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((Error) cause);
        }
    }

    /* renamed from: I */
    protected static final <T extends GeneratedMessageLite<T, ?>> boolean m3036I(T t, boolean z) {
        byte byteValue = ((Byte) t.m3044A(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo2334d = C2664w0.m2256a().m2252e(t).mo2334d(t);
        if (z) {
            t.m3043B(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, mo2334d ? t : null);
        }
        return mo2334d;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.protobuf.x$g] */
    /* renamed from: K */
    public static C2665x.AbstractC2672g m3034K(C2665x.AbstractC2672g abstractC2672g) {
        int size = abstractC2672g.size();
        return abstractC2672g.mo2235d(size == 0 ? 10 : size * 2);
    }

    /* renamed from: L */
    public static <E> C2665x.AbstractC2674i<E> m3033L(C2665x.AbstractC2674i<E> abstractC2674i) {
        int size = abstractC2674i.size();
        return abstractC2674i.mo2235d(size == 0 ? 10 : size * 2);
    }

    /* renamed from: N */
    public static Object m3031N(AbstractC2639m0 abstractC2639m0, String str, Object[] objArr) {
        return new C2677y0(abstractC2639m0, str, objArr);
    }

    /* renamed from: O */
    static <T extends GeneratedMessageLite<T, ?>> T m3030O(T t, AbstractC2613i abstractC2613i, C2643o c2643o) {
        T t2 = (T) t.m3044A(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            AbstractC2572a1 m2252e = C2664w0.m2256a().m2252e(t2);
            m2252e.mo2333e(t2, C2621j.m2578Q(abstractC2613i), c2643o);
            m2252e.mo2335c(t2);
            return t2;
        } catch (IOException e) {
            if (!(e.getCause() instanceof InvalidProtocolBufferException)) {
                throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(t2);
            }
            throw ((InvalidProtocolBufferException) e.getCause());
        } catch (RuntimeException e2) {
            if (!(e2.getCause() instanceof InvalidProtocolBufferException)) {
                throw e2;
            }
            throw ((InvalidProtocolBufferException) e2.getCause());
        }
    }

    /* renamed from: P */
    public static <T extends GeneratedMessageLite<?, ?>> void m3029P(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    /* renamed from: A */
    public Object m3044A(MethodToInvoke methodToInvoke) {
        return mo3042C(methodToInvoke, null, null);
    }

    /* renamed from: B */
    protected Object m3043B(MethodToInvoke methodToInvoke, Object obj) {
        return mo3042C(methodToInvoke, obj, null);
    }

    /* renamed from: C */
    protected abstract Object mo3042C(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    /* renamed from: G */
    public final MessageType mo2414d() {
        return (MessageType) m3044A(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    /* renamed from: J */
    protected void m3035J() {
        C2664w0.m2256a().m2252e(this).mo2335c(this);
    }

    /* renamed from: M */
    public final BuilderType mo2423i() {
        return (BuilderType) m3044A(MethodToInvoke.NEW_BUILDER);
    }

    /* renamed from: Q */
    public final BuilderType mo2425e() {
        BuilderType buildertype = (BuilderType) m3044A(MethodToInvoke.NEW_BUILDER);
        buildertype.m3022G(this);
        return buildertype;
    }

    @Override // com.google.protobuf.AbstractC2639m0
    /* renamed from: c */
    public int mo2426c() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C2664w0.m2256a().m2252e(this).mo2331g(this);
        }
        return this.memoizedSerializedSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C2664w0.m2256a().m2252e(this).mo2332f(this, (GeneratedMessageLite) obj);
    }

    @Override // com.google.protobuf.AbstractC2639m0
    /* renamed from: g */
    public void mo2424g(CodedOutputStream codedOutputStream) {
        C2664w0.m2256a().m2252e(this).mo2336b(this, C2627k.m2540P(codedOutputStream));
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int mo2329i = C2664w0.m2256a().m2252e(this).mo2329i(this);
        this.memoizedHashCode = mo2329i;
        return mo2329i;
    }

    @Override // com.google.protobuf.AbstractC2639m0
    /* renamed from: l */
    public final AbstractC2660u0<MessageType> mo2421l() {
        return (AbstractC2660u0) m3044A(MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.protobuf.AbstractC2642n0
    /* renamed from: o */
    public final boolean mo2413o() {
        return m3036I(this, true);
    }

    @Override // com.google.protobuf.AbstractC2569a
    /* renamed from: r */
    int mo2920r() {
        return this.memoizedSerializedSize;
    }

    public String toString() {
        return C2645o0.m2406e(this, super.toString());
    }

    @Override // com.google.protobuf.AbstractC2569a
    /* renamed from: v */
    void mo2916v(int i) {
        this.memoizedSerializedSize = i;
    }

    /* renamed from: y */
    public Object m3027y() {
        return m3044A(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    /* renamed from: z */
    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends AbstractC2550a<MessageType, BuilderType>> BuilderType m3026z() {
        return (BuilderType) m3044A(MethodToInvoke.NEW_BUILDER);
    }
}
