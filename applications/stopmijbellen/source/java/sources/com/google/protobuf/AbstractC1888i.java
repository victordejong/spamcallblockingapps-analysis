package com.google.protobuf;

import com.google.protobuf.AbstractC1859a;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.AbstractC1888i.AbstractC1889a;
import com.google.protobuf.AbstractC1916u;
import com.google.protobuf.C1886h;
import com.google.protobuf.C1895k;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4925w;
import p287x6.C4884b0;
import p287x6.C4923u;
import p287x6.EnumC4898c0;
import p287x6.EnumC4904d0;
/* renamed from: com.google.protobuf.i */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/i.class */
public abstract class AbstractC1888i<MessageType extends AbstractC1888i<MessageType, BuilderType>, BuilderType extends AbstractC1889a<MessageType, BuilderType>> extends AbstractC1859a<MessageType, BuilderType> {
    private static Map<Object, AbstractC1888i<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public C1877e0 unknownFields = C1877e0.f7066f;
    public int memoizedSerializedSize = -1;

    /* renamed from: com.google.protobuf.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/i$a.class */
    public static abstract class AbstractC1889a<MessageType extends AbstractC1888i<MessageType, BuilderType>, BuilderType extends AbstractC1889a<MessageType, BuilderType>> extends AbstractC1859a.AbstractC1860a<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f7077a;

        /* renamed from: b */
        public MessageType f7078b;

        /* renamed from: c */
        public boolean f7079c = false;

        public AbstractC1889a(MessageType messagetype) {
            this.f7077a = messagetype;
            this.f7078b = (MessageType) messagetype.mo1597r(EnumC1893e.NEW_MUTABLE_INSTANCE, null, null);
        }

        @Override // p287x6.AbstractC4918p
        /* renamed from: c */
        public AbstractC1916u mo263c() {
            return this.f7077a;
        }

        public Object clone() throws CloneNotSupportedException {
            AbstractC1889a m4286w = this.f7077a.m4286w();
            m4286w.m4281o(m4283m());
            return m4286w;
        }

        /* renamed from: l */
        public final MessageType m4284l() {
            MessageType m4283m = m4283m();
            if (m4283m.isInitialized()) {
                return m4283m;
            }
            throw new UninitializedMessageException();
        }

        /* renamed from: m */
        public MessageType m4283m() {
            if (this.f7079c) {
                return this.f7078b;
            }
            MessageType messagetype = this.f7078b;
            Objects.requireNonNull(messagetype);
            C4923u.f15032c.m261b(messagetype).mo258c(messagetype);
            this.f7079c = true;
            return this.f7078b;
        }

        /* renamed from: n */
        public final void m4282n() {
            if (this.f7079c) {
                MessageType messagetype = (MessageType) this.f7078b.mo1597r(EnumC1893e.NEW_MUTABLE_INSTANCE, null, null);
                C4923u.f15032c.m261b(messagetype).mo260a(messagetype, this.f7078b);
                this.f7078b = messagetype;
                this.f7079c = false;
            }
        }

        /* renamed from: o */
        public BuilderType m4281o(MessageType messagetype) {
            m4282n();
            m4280p(this.f7078b, messagetype);
            return this;
        }

        /* renamed from: p */
        public final void m4280p(MessageType messagetype, MessageType messagetype2) {
            C4923u.f15032c.m261b(messagetype).mo260a(messagetype, messagetype2);
        }
    }

    /* renamed from: com.google.protobuf.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/i$b.class */
    public static class C1890b<T extends AbstractC1888i<T, ?>> extends AbstractC1862b<T> {

        /* renamed from: a */
        public final T f7080a;

        public C1890b(T t) {
            this.f7080a = t;
        }
    }

    /* renamed from: com.google.protobuf.i$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/i$c.class */
    public static abstract class AbstractC1891c<MessageType extends AbstractC1891c<MessageType, BuilderType>, BuilderType> extends AbstractC1888i<MessageType, BuilderType> implements AbstractC4918p {
        public C1886h<C1892d> extensions = C1886h.f7073d;

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.protobuf.i, com.google.protobuf.u] */
        @Override // com.google.protobuf.AbstractC1888i, p287x6.AbstractC4918p
        /* renamed from: c */
        public /* bridge */ /* synthetic */ AbstractC1916u mo263c() {
            return mo263c();
        }

        @Override // com.google.protobuf.AbstractC1888i, com.google.protobuf.AbstractC1916u
        /* renamed from: d */
        public AbstractC1916u.AbstractC1917a mo4240d() {
            AbstractC1889a abstractC1889a = (AbstractC1889a) mo1597r(EnumC1893e.NEW_BUILDER, null, null);
            abstractC1889a.m4282n();
            abstractC1889a.m4280p(abstractC1889a.f7078b, this);
            return abstractC1889a;
        }
    }

    /* renamed from: com.google.protobuf.i$d */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/i$d.class */
    public static final class C1892d implements C1886h.AbstractC1887a<C1892d> {
        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: A */
        public EnumC4898c0 mo4279A() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: C */
        public AbstractC1916u.AbstractC1917a mo4278C(AbstractC1916u.AbstractC1917a abstractC1917a, AbstractC1916u abstractC1916u) {
            AbstractC1889a abstractC1889a = (AbstractC1889a) abstractC1917a;
            abstractC1889a.m4281o((AbstractC1888i) abstractC1916u);
            return abstractC1889a;
        }

        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: E */
        public EnumC4904d0 mo4277E() {
            throw null;
        }

        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: F */
        public boolean mo4276F() {
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            Objects.requireNonNull((C1892d) obj);
            return 0;
        }

        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: y */
        public int mo4275y() {
            return 0;
        }

        @Override // com.google.protobuf.C1886h.AbstractC1887a
        /* renamed from: z */
        public boolean mo4274z() {
            return false;
        }
    }

    /* renamed from: com.google.protobuf.i$e */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/i$e.class */
    public enum EnumC1893e {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* renamed from: s */
    public static <T extends AbstractC1888i<?, ?>> T m4290s(Class<T> cls) {
        AbstractC1888i<?, ?> abstractC1888i = defaultInstanceMap.get(cls);
        AbstractC1888i<?, ?> abstractC1888i2 = abstractC1888i;
        if (abstractC1888i == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC1888i2 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        AbstractC1888i<?, ?> abstractC1888i3 = abstractC1888i2;
        if (abstractC1888i2 == null) {
            abstractC1888i3 = ((AbstractC1888i) C4884b0.m316a(cls)).mo263c();
            if (abstractC1888i3 == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, abstractC1888i3);
        }
        return (T) abstractC1888i3;
    }

    /* renamed from: u */
    public static Object m4288u(Method method, Object obj, Object... objArr) {
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

    /* renamed from: v */
    public static <E> C1895k.AbstractC1899d<E> m4287v(C1895k.AbstractC1899d<E> abstractC1899d) {
        int size = abstractC1899d.size();
        return abstractC1899d.mo4205r(size == 0 ? 10 : size * 2);
    }

    /* renamed from: x */
    public static <T extends AbstractC1888i<?, ?>> void m4285x(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    @Override // com.google.protobuf.AbstractC1916u
    /* renamed from: b */
    public int mo4241b() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C4923u.f15032c.m261b(this).mo255f(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // com.google.protobuf.AbstractC1916u
    /* renamed from: d */
    public AbstractC1916u.AbstractC1917a mo4240d() {
        AbstractC1889a abstractC1889a = (AbstractC1889a) mo1597r(EnumC1893e.NEW_BUILDER, null, null);
        abstractC1889a.m4282n();
        abstractC1889a.m4280p(abstractC1889a.f7078b, this);
        return abstractC1889a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C4923u.f15032c.m261b(this).mo256e(this, (AbstractC1888i) obj);
    }

    @Override // com.google.protobuf.AbstractC1916u
    /* renamed from: f */
    public void mo4239f(CodedOutputStream codedOutputStream) throws IOException {
        AbstractC4925w m261b = C4923u.f15032c.m261b(this);
        C1876e c1876e = codedOutputStream.f7031a;
        m261b.mo259b(this, c1876e != null ? c1876e : new C1876e(codedOutputStream));
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int mo254g = C4923u.f15032c.m261b(this).mo254g(this);
        this.memoizedHashCode = mo254g;
        return mo254g;
    }

    @Override // p287x6.AbstractC4918p
    public final boolean isInitialized() {
        byte byteValue = ((Byte) mo1597r(EnumC1893e.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        boolean z = true;
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = C4923u.f15032c.m261b(this).mo257d(this);
                mo1597r(EnumC1893e.SET_MEMOIZED_IS_INITIALIZED, z ? this : null, null);
            }
        }
        return z;
    }

    @Override // com.google.protobuf.AbstractC1859a
    /* renamed from: m */
    public int mo4293m() {
        return this.memoizedSerializedSize;
    }

    @Override // com.google.protobuf.AbstractC1859a
    /* renamed from: p */
    public void mo4292p(int i) {
        this.memoizedSerializedSize = i;
    }

    /* renamed from: q */
    public final <MessageType extends AbstractC1888i<MessageType, BuilderType>, BuilderType extends AbstractC1889a<MessageType, BuilderType>> BuilderType m4291q() {
        return (BuilderType) mo1597r(EnumC1893e.NEW_BUILDER, null, null);
    }

    /* renamed from: r */
    public abstract Object mo1597r(EnumC1893e enumC1893e, Object obj, Object obj2);

    /* renamed from: t */
    public final MessageType mo263c() {
        return (MessageType) mo1597r(EnumC1893e.GET_DEFAULT_INSTANCE, null, null);
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        C1918v.m4235c(this, sb, 0);
        return sb.toString();
    }

    /* renamed from: w */
    public final BuilderType m4286w() {
        return (BuilderType) mo1597r(EnumC1893e.NEW_BUILDER, null, null);
    }
}
