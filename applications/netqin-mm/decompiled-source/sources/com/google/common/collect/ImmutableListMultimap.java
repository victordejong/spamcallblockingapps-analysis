package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4990h0;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableListMultimap.class */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements AbstractC4990h0<K, V> {
    public static final long serialVersionUID = 0;
    public transient ImmutableListMultimap<V, K> inverse;

    /* renamed from: com.google.common.collect.ImmutableListMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableListMultimap$a.class */
    public static final class C7472a<K, V> extends ImmutableMultimap.C7481c<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7472a<K, V> mo8334a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo8334a((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7472a<K, V> mo8333a(K k, V v) {
            super.mo8333a((C7472a<K, V>) k, (K) v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7472a<K, V> mo8332a(Map.Entry<? extends K, ? extends V> entry) {
            super.mo8332a((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public ImmutableListMultimap<K, V> mo8335a() {
            return (ImmutableListMultimap) super.mo8335a();
        }
    }

    public ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i) {
        super(immutableMap, i);
    }

    public static <K, V> C7472a<K, V> builder() {
        return new C7472a<>();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        if (i0Var.isEmpty()) {
            return m8386of();
        }
        if (i0Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) i0Var;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        return fromMapEntries(i0Var.asMap().entrySet(), null);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        C7472a aVar = new C7472a();
        aVar.mo8334a((Iterable) iterable);
        return aVar.mo8335a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> ImmutableListMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return m8386of();
        }
        ImmutableMap.C7476b bVar = new ImmutableMap.C7476b(collection.size());
        int i = 0;
        Iterator<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Collection collection2 = (Collection) entry.getValue();
            ImmutableList copyOf = comparator == null ? ImmutableList.copyOf(collection2) : ImmutableList.sortedCopyOf(comparator, collection2);
            if (!copyOf.isEmpty()) {
                bVar.mo8319a(key, copyOf);
                i += copyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.mo8322a(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> invert() {
        C7472a builder = builder();
        AbstractC4978e1 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.mo8333a((C7472a) entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> a = builder.mo8335a();
        a.inverse = this;
        return a;
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8386of() {
        return EmptyImmutableListMultimap.INSTANCE;
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8385of(K k, V v) {
        C7472a builder = builder();
        builder.mo8333a((C7472a) k, (K) v);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8384of(K k, V v, K k2, V v2) {
        C7472a builder = builder();
        builder.mo8333a((C7472a) k, (K) v);
        builder.mo8333a((C7472a) k2, (K) v2);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8383of(K k, V v, K k2, V v2, K k3, V v3) {
        C7472a builder = builder();
        builder.mo8333a((C7472a) k, (K) v);
        builder.mo8333a((C7472a) k2, (K) v2);
        builder.mo8333a((C7472a) k3, (K) v3);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8382of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        C7472a builder = builder();
        builder.mo8333a((C7472a) k, (K) v);
        builder.mo8333a((C7472a) k2, (K) v2);
        builder.mo8333a((C7472a) k3, (K) v3);
        builder.mo8333a((C7472a) k4, (K) v4);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableListMultimap<K, V> m8381of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        C7472a builder = builder();
        builder.mo8333a((C7472a) k, (K) v);
        builder.mo8333a((C7472a) k2, (K) v2);
        builder.mo8333a((C7472a) k3, (K) v3);
        builder.mo8333a((C7472a) k4, (K) v4);
        builder.mo8333a((C7472a) k5, (K) v5);
        return builder.mo8335a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.C7476b builder = ImmutableMap.builder();
            int i = 0;
            for (int i2 = 0; i2 < readInt; i2++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableList.C7470a builder2 = ImmutableList.builder();
                    for (int i3 = 0; i3 < readInt2; i3++) {
                        builder2.mo8284a((ImmutableList.C7470a) objectInputStream.readObject());
                    }
                    builder.mo8319a(readObject, builder2.m8387a());
                    i += readInt2;
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                ImmutableMultimap.C7482d.f30551a.m24615a((C5023s0.C5025b<ImmutableMultimap>) this, (Object) builder.mo8322a());
                ImmutableMultimap.C7482d.f30552b.m24616a((C5023s0.C5025b<ImmutableMultimap>) this, i);
            } catch (IllegalArgumentException e) {
                throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
            }
        } else {
            throw new InvalidObjectException("Invalid key count " + readInt);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        C5023s0.m24625a(this, objectOutputStream);
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableList<V> get(K k) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k);
        ImmutableList<V> immutableList2 = immutableList;
        if (immutableList == null) {
            immutableList2 = ImmutableList.m8400of();
        }
        return immutableList2;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.inverse;
        ImmutableListMultimap<V, K> immutableListMultimap2 = immutableListMultimap;
        if (immutableListMultimap == null) {
            immutableListMultimap2 = invert();
            this.inverse = immutableListMultimap2;
        }
        return immutableListMultimap2;
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableList<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }
}
