package com.google.common.collect;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4961b0;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC5004m;
import p131c.p161d.p266c.p269c.AbstractC5030v;
import p131c.p161d.p266c.p269c.AbstractC5032w;
import p131c.p161d.p266c.p273g.C5068a;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MutableClassToInstanceMap.class */
public final class MutableClassToInstanceMap<B> extends AbstractC5030v<Class<? extends B>, B> implements AbstractC5004m<B>, Serializable {
    public final Map<Class<? extends B>, B> delegate;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MutableClassToInstanceMap$SerializedForm.class */
    public static final class SerializedForm<B> implements Serializable {
        public static final long serialVersionUID = 0;
        public final Map<Class<? extends B>, B> backingMap;

        public SerializedForm(Map<Class<? extends B>, B> map) {
            this.backingMap = map;
        }

        public Object readResolve() {
            return MutableClassToInstanceMap.create(this.backingMap);
        }
    }

    /* renamed from: com.google.common.collect.MutableClassToInstanceMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MutableClassToInstanceMap$a.class */
    public static final class C7600a extends AbstractC5032w<Class<? extends B>, B> {

        /* renamed from: a */
        public final /* synthetic */ Map.Entry f30720a;

        public C7600a(Map.Entry entry) {
            this.f30720a = entry;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5032w, p131c.p161d.p266c.p269c.AbstractC5040z
        public Map.Entry<Class<? extends B>, B> delegate() {
            return this.f30720a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5032w, java.util.Map.Entry
        public B setValue(B b) {
            return (B) super.setValue(MutableClassToInstanceMap.cast(getKey(), b));
        }
    }

    /* renamed from: com.google.common.collect.MutableClassToInstanceMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MutableClassToInstanceMap$b.class */
    public class C7601b extends AbstractC4961b0<Map.Entry<Class<? extends B>, B>> {

        /* renamed from: com.google.common.collect.MutableClassToInstanceMap$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MutableClassToInstanceMap$b$a.class */
        public class C7602a extends AbstractC4968c1<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            public C7602a(C7601b bVar, Iterator it) {
                super(it);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
                return m8073a((Map.Entry) ((Map.Entry) obj));
            }

            /* renamed from: a */
            public Map.Entry<Class<? extends B>, B> m8073a(Map.Entry<Class<? extends B>, B> entry) {
                return MutableClassToInstanceMap.checkedEntry(entry);
            }
        }

        public C7601b() {
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<Map.Entry<Class<? extends B>, B>> delegate() {
            return MutableClassToInstanceMap.this.delegate().entrySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new C7602a(this, delegate().iterator());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    public MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        C4933n.m24795a(map);
        this.delegate = map;
    }

    public static <B, T extends B> T cast(Class<T> cls, B b) {
        return (T) C5068a.m24561b(cls).cast(b);
    }

    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(Map.Entry<Class<? extends B>, B> entry) {
        return new C7600a(entry);
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    private Object writeReplace() {
        return new SerializedForm(delegate());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new C7601b();
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return (T) cast(cls, get(cls));
    }

    public B put(Class<? extends B> cls, B b) {
        return (B) super.put((MutableClassToInstanceMap<B>) cls, (Class<? extends B>) cast(cls, b));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Class<? extends Class<? extends B>>) obj, (Class<? extends B>) obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            cast((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends B> T putInstance(Class<T> cls, T t) {
        return (T) cast(cls, put((Class<? extends Class<T>>) cls, (Class<T>) t));
    }
}
