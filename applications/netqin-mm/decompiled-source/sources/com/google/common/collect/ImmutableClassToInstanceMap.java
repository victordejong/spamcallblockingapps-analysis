package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC5004m;
import p131c.p161d.p266c.p269c.AbstractC5030v;
import p131c.p161d.p266c.p273g.C5068a;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableClassToInstanceMap.class */
public final class ImmutableClassToInstanceMap<B> extends AbstractC5030v<Class<? extends B>, B> implements AbstractC5004m<B>, Serializable {
    public static final ImmutableClassToInstanceMap<Object> EMPTY = new ImmutableClassToInstanceMap<>(ImmutableMap.m8380of());
    public final ImmutableMap<Class<? extends B>, B> delegate;

    /* renamed from: com.google.common.collect.ImmutableClassToInstanceMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableClassToInstanceMap$b.class */
    public static final class C7465b<B> {

        /* renamed from: a */
        public final ImmutableMap.C7476b<Class<? extends B>, B> f30527a = ImmutableMap.builder();

        /* renamed from: a */
        public static <B, T extends B> T m8404a(Class<T> cls, B b) {
            return (T) C5068a.m24561b(cls).cast(b);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public <T extends B> C7465b<B> m8403a(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class cls = (Class) entry.getKey();
                this.f30527a.mo8319a(cls, m8404a(cls, entry.getValue()));
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableClassToInstanceMap<B> m8405a() {
            ImmutableMap<Class<? extends B>, B> a = this.f30527a.mo8322a();
            return a.isEmpty() ? ImmutableClassToInstanceMap.m8407of() : new ImmutableClassToInstanceMap<>(a);
        }
    }

    public ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    public static <B> C7465b<B> builder() {
        return new C7465b<>();
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        if (map instanceof ImmutableClassToInstanceMap) {
            return (ImmutableClassToInstanceMap) map;
        }
        C7465b bVar = new C7465b();
        bVar.m8403a(map);
        return bVar.m8405a();
    }

    /* renamed from: of */
    public static <B> ImmutableClassToInstanceMap<B> m8407of() {
        return (ImmutableClassToInstanceMap<B>) EMPTY;
    }

    /* renamed from: of */
    public static <B, T extends B> ImmutableClassToInstanceMap<B> m8406of(Class<T> cls, T t) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.m8379of(cls, t));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T extends B, java.lang.Object] */
    public <T extends B> T getInstance(Class<T> cls) {
        ImmutableMap<Class<? extends B>, B> immutableMap = this.delegate;
        C4933n.m24795a(cls);
        return immutableMap.get(cls);
    }

    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }

    public Object readResolve() {
        return isEmpty() ? m8407of() : this;
    }
}
