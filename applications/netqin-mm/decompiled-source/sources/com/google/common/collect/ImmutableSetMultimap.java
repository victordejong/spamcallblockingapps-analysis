package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC5027t0;
import p131c.p161d.p266c.p269c.C5009o0;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSetMultimap.class */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements AbstractC5027t0<K, V> {
    public static final long serialVersionUID = 0;
    public final transient ImmutableSet<V> emptySet;
    public transient ImmutableSet<Map.Entry<K, V>> entries;
    public transient ImmutableSetMultimap<V, K> inverse;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSetMultimap$EntrySet.class */
    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableSetMultimap<K, V> multimap;

        public EntrySet(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.multimap = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public AbstractC4978e1<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.multimap.size();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSetMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSetMultimap$a.class */
    public static final class C7493a<K, V> extends ImmutableMultimap.C7481c<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7493a<K, V> mo8334a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo8334a((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7493a<K, V> mo8333a(K k, V v) {
            super.mo8333a((C7493a<K, V>) k, (K) v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public C7493a<K, V> mo8332a(Map.Entry<? extends K, ? extends V> entry) {
            super.mo8332a((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: a */
        public ImmutableSetMultimap<K, V> mo8335a() {
            Set<Map.Entry<K, Collection<V>>> entrySet = this.f30548a.entrySet();
            Comparator<? super K> comparator = this.f30549b;
            Collection collection = entrySet;
            if (comparator != null) {
                collection = Ordering.from(comparator).onKeys().immutableSortedCopy(entrySet);
            }
            return ImmutableSetMultimap.fromMapEntries(collection, this.f30550c);
        }

        @Override // com.google.common.collect.ImmutableMultimap.C7481c
        /* renamed from: b */
        public Collection<V> mo8331b() {
            return C5009o0.m24652a();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSetMultimap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSetMultimap$b.class */
    public static final class C7494b {

        /* renamed from: a */
        public static final C5023s0.C5025b<ImmutableSetMultimap> f30569a = C5023s0.m24620a(ImmutableSetMultimap.class, "emptySet");
    }

    public ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i, Comparator<? super V> comparator) {
        super(immutableMap, i);
        this.emptySet = emptySet(comparator);
    }

    public static <K, V> C7493a<K, V> builder() {
        return new C7493a<>();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        return copyOf(i0Var, null);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(AbstractC4995i0<? extends K, ? extends V> i0Var, Comparator<? super V> comparator) {
        C4933n.m24795a(i0Var);
        if (i0Var.isEmpty() && comparator == null) {
            return m8341of();
        }
        if (i0Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) i0Var;
            if (!immutableSetMultimap.isPartialView()) {
                return immutableSetMultimap;
            }
        }
        return fromMapEntries(i0Var.asMap().entrySet(), comparator);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        C7493a aVar = new C7493a();
        aVar.mo8334a((Iterable) iterable);
        return aVar.mo8335a();
    }

    public static <V> ImmutableSet<V> emptySet(Comparator<? super V> comparator) {
        return comparator == null ? ImmutableSet.m8349of() : ImmutableSortedSet.emptySet(comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> ImmutableSetMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return m8341of();
        }
        ImmutableMap.C7476b bVar = new ImmutableMap.C7476b(collection.size());
        int i = 0;
        Iterator<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            ImmutableSet valueSet = valueSet(comparator, (Collection) entry.getValue());
            if (!valueSet.isEmpty()) {
                bVar.mo8319a(key, valueSet);
                i += valueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.mo8322a(), i, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> invert() {
        C7493a builder = builder();
        AbstractC4978e1 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.mo8333a((C7493a) entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> a = builder.mo8335a();
        a.inverse = this;
        return a;
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8341of() {
        return EmptyImmutableSetMultimap.INSTANCE;
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8340of(K k, V v) {
        C7493a builder = builder();
        builder.mo8333a((C7493a) k, (K) v);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8339of(K k, V v, K k2, V v2) {
        C7493a builder = builder();
        builder.mo8333a((C7493a) k, (K) v);
        builder.mo8333a((C7493a) k2, (K) v2);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8338of(K k, V v, K k2, V v2, K k3, V v3) {
        C7493a builder = builder();
        builder.mo8333a((C7493a) k, (K) v);
        builder.mo8333a((C7493a) k2, (K) v2);
        builder.mo8333a((C7493a) k3, (K) v3);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8337of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        C7493a builder = builder();
        builder.mo8333a((C7493a) k, (K) v);
        builder.mo8333a((C7493a) k2, (K) v2);
        builder.mo8333a((C7493a) k3, (K) v3);
        builder.mo8333a((C7493a) k4, (K) v4);
        return builder.mo8335a();
    }

    /* renamed from: of */
    public static <K, V> ImmutableSetMultimap<K, V> m8336of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        C7493a builder = builder();
        builder.mo8333a((C7493a) k, (K) v);
        builder.mo8333a((C7493a) k2, (K) v2);
        builder.mo8333a((C7493a) k3, (K) v3);
        builder.mo8333a((C7493a) k4, (K) v4);
        builder.mo8333a((C7493a) k5, (K) v5);
        return builder.mo8335a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.C7476b builder = ImmutableMap.builder();
            int i = 0;
            for (int i2 = 0; i2 < readInt; i2++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableSet.C7492a valuesBuilder = valuesBuilder(comparator);
                    for (int i3 = 0; i3 < readInt2; i3++) {
                        valuesBuilder.mo8284a((ImmutableSet.C7492a) objectInputStream.readObject());
                    }
                    ImmutableSet a = valuesBuilder.mo8285a();
                    if (a.size() == readInt2) {
                        builder.mo8319a(readObject, a);
                        i += readInt2;
                    } else {
                        throw new InvalidObjectException("Duplicate key-value pairs exist for key " + readObject);
                    }
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                ImmutableMultimap.C7482d.f30551a.m24615a((C5023s0.C5025b<ImmutableMultimap>) this, (Object) builder.mo8322a());
                ImmutableMultimap.C7482d.f30552b.m24616a((C5023s0.C5025b<ImmutableMultimap>) this, i);
                C7494b.f30569a.m24615a((C5023s0.C5025b<ImmutableSetMultimap>) this, (Object) emptySet(comparator));
            } catch (IllegalArgumentException e) {
                throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
            }
        } else {
            throw new InvalidObjectException("Invalid key count " + readInt);
        }
    }

    public static <V> ImmutableSet<V> valueSet(Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? ImmutableSet.copyOf((Collection) collection) : ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    public static <V> ImmutableSet.C7492a<V> valuesBuilder(Comparator<? super V> comparator) {
        return comparator == null ? new ImmutableSet.C7492a<>() : new ImmutableSortedSet.C7499a<>(comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        C5023s0.m24625a(this, objectOutputStream);
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entries;
        ImmutableSet<Map.Entry<K, V>> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = new EntrySet<>(this);
            this.entries = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableSet<V> get(K k) {
        return (ImmutableSet) C4924j.m24819a((ImmutableSet) this.map.get(k), this.emptySet);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.inverse;
        ImmutableSetMultimap<V, K> immutableSetMultimap2 = immutableSetMultimap;
        if (immutableSetMultimap == null) {
            immutableSetMultimap2 = invert();
            this.inverse = immutableSetMultimap2;
        }
        return immutableSetMultimap2;
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public Comparator<? super V> valueComparator() {
        ImmutableSet<V> immutableSet = this.emptySet;
        return immutableSet instanceof ImmutableSortedSet ? ((ImmutableSortedSet) immutableSet).comparator() : null;
    }
}
