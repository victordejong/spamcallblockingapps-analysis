package com.google.common.collect;

import com.google.common.base.Converter;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4967c0;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4999k;
import p131c.p161d.p266c.p269c.AbstractC5022s;
import p131c.p161d.p266c.p269c.AbstractC5030v;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5008o;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps.class */
public final class Maps {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$BiMapConverter.class */
    public static final class BiMapConverter<A, B> extends Converter<A, B> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4999k<A, B> bimap;

        public BiMapConverter(AbstractC4999k<A, B> kVar) {
            C4933n.m24795a(kVar);
            this.bimap = kVar;
        }

        public static <X, Y> Y convert(AbstractC4999k<X, Y> kVar, X x) {
            Y y = kVar.get(x);
            C4933n.m24782a(y != null, "No non-null mapping present for input: %s", x);
            return y;
        }

        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return (A) convert(this.bimap.inverse(), b);
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return (B) convert(this.bimap, a);
        }

        @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
        public boolean equals(Object obj) {
            if (obj instanceof BiMapConverter) {
                return this.bimap.equals(((BiMapConverter) obj).bimap);
            }
            return false;
        }

        public int hashCode() {
            return this.bimap.hashCode();
        }

        public String toString() {
            return "Maps.asConverter(" + this.bimap + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$EntryFunction.class */
    public enum EntryFunction implements AbstractC4920g<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.common.collect.Maps.EntryFunction.1
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.common.collect.Maps.EntryFunction.2
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        /* synthetic */ EntryFunction(C7564c cVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$UnmodifiableBiMap.class */
    public static class UnmodifiableBiMap<K, V> extends AbstractC5030v<K, V> implements AbstractC4999k<K, V>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4999k<? extends K, ? extends V> delegate;
        public AbstractC4999k<V, K> inverse;
        public final Map<K, V> unmodifiableMap;
        public transient Set<V> values;

        public UnmodifiableBiMap(AbstractC4999k<? extends K, ? extends V> kVar, AbstractC4999k<V, K> kVar2) {
            this.unmodifiableMap = Collections.unmodifiableMap(kVar);
            this.delegate = kVar;
            this.inverse = kVar2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
        public Map<K, V> delegate() {
            return this.unmodifiableMap;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public V forcePut(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public AbstractC4999k<V, K> inverse() {
            AbstractC4999k<V, K> kVar = this.inverse;
            AbstractC4999k<V, K> kVar2 = kVar;
            if (kVar == null) {
                kVar2 = new UnmodifiableBiMap<>(this.delegate.inverse(), this);
                this.inverse = kVar2;
            }
            return kVar2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public Set<V> values() {
            Set<V> set = this.values;
            Set<V> set2 = set;
            if (set == null) {
                set2 = Collections.unmodifiableSet(this.delegate.values());
                this.values = set2;
            }
            return set2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$UnmodifiableNavigableMap.class */
    public static class UnmodifiableNavigableMap<K, V> extends AbstractC4967c0<K, V> implements NavigableMap<K, V>, Serializable {
        public final NavigableMap<K, ? extends V> delegate;
        public transient UnmodifiableNavigableMap<K, V> descendingMap;

        public UnmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap) {
            this.delegate = navigableMap;
        }

        public UnmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap, UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap) {
            this.delegate = navigableMap;
            this.descendingMap = unmodifiableNavigableMap;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return Maps.m8120d(this.delegate.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return this.delegate.ceilingKey(k);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4967c0, p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
        public SortedMap<K, V> delegate() {
            return Collections.unmodifiableSortedMap(this.delegate);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Sets.m8062a((NavigableSet) this.delegate.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap = this.descendingMap;
            UnmodifiableNavigableMap<K, V> unmodifiableNavigableMap2 = unmodifiableNavigableMap;
            if (unmodifiableNavigableMap == null) {
                unmodifiableNavigableMap2 = new UnmodifiableNavigableMap<>(this.delegate.descendingMap(), this);
                this.descendingMap = unmodifiableNavigableMap2;
            }
            return unmodifiableNavigableMap2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Maps.m8120d(this.delegate.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return Maps.m8120d(this.delegate.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return this.delegate.floorKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.m8138a((NavigableMap) this.delegate.headMap(k, z));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4967c0, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return Maps.m8120d(this.delegate.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return this.delegate.higherKey(k);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Maps.m8120d(this.delegate.lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return Maps.m8120d(this.delegate.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return this.delegate.lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Sets.m8062a((NavigableSet) this.delegate.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.m8138a((NavigableMap) this.delegate.subMap(k, z, k2, z2));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4967c0, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.m8138a((NavigableMap) this.delegate.tailMap(k, z));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4967c0, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    /* renamed from: com.google.common.collect.Maps$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$a.class */
    public static final class C7562a extends AbstractC4960b<K, V2> {

        /* renamed from: a */
        public final /* synthetic */ Map.Entry f30685a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC7573k f30686b;

        public C7562a(Map.Entry entry, AbstractC7573k kVar) {
            this.f30685a = entry;
            this.f30686b = kVar;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, K] */
        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30685a.getKey();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, V2] */
        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V2 getValue() {
            return this.f30686b.mo8107a(this.f30685a.getKey(), this.f30685a.getValue());
        }
    }

    /* renamed from: com.google.common.collect.Maps$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$b.class */
    public static final class C7563b implements AbstractC4920g<Map.Entry<K, V1>, Map.Entry<K, V2>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC7573k f30687a;

        public C7563b(AbstractC7573k kVar) {
            this.f30687a = kVar;
        }

        /* renamed from: a */
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return Maps.m8149a(this.f30687a, (Map.Entry) entry);
        }
    }

    /* renamed from: com.google.common.collect.Maps$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$c.class */
    public static final class C7564c extends AbstractC4968c1<Map.Entry<K, V>, K> {
        public C7564c(Iterator it) {
            super(it);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
            return m8113a((Map.Entry<Object, V>) obj);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, K] */
        /* renamed from: a */
        public K m8113a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* renamed from: com.google.common.collect.Maps$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$d.class */
    public static final class C7565d extends AbstractC4968c1<Map.Entry<K, V>, V> {
        public C7565d(Iterator it) {
            super(it);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
            return m8112a((Map.Entry<K, Object>) obj);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
        /* renamed from: a */
        public V m8112a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$e.class */
    public static final class C7566e extends AbstractC4968c1<K, Map.Entry<K, V>> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC4920g f30688b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7566e(Iterator it, AbstractC4920g gVar) {
            super(it);
            this.f30688b = gVar;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public Map.Entry<K, V> mo8028a(K k) {
            return Maps.m8148a(k, this.f30688b.apply(k));
        }
    }

    /* renamed from: com.google.common.collect.Maps$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$f.class */
    public static final class C7567f extends AbstractC4960b<K, V> {

        /* renamed from: a */
        public final /* synthetic */ Map.Entry f30689a;

        public C7567f(Map.Entry entry) {
            this.f30689a = entry;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, K] */
        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30689a.getKey();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getValue() {
            return this.f30689a.getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$g.class */
    public static final class C7568g extends AbstractC4978e1<Map.Entry<K, V>> {

        /* renamed from: a */
        public final /* synthetic */ Iterator f30690a;

        public C7568g(Iterator it) {
            this.f30690a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30690a.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return Maps.m8123c((Map.Entry) this.f30690a.next());
        }
    }

    /* renamed from: com.google.common.collect.Maps$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$h.class */
    public static final class C7569h implements AbstractC7573k<K, V1, V2> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC4920g f30691a;

        public C7569h(AbstractC4920g gVar) {
            this.f30691a = gVar;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, V2] */
        @Override // com.google.common.collect.Maps.AbstractC7573k
        /* renamed from: a */
        public V2 mo8107a(K k, V1 v1) {
            return this.f30691a.apply(v1);
        }
    }

    /* renamed from: com.google.common.collect.Maps$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$i.class */
    public static abstract class AbstractC7570i<K, V> extends AbstractC5030v<K, V> implements NavigableMap<K, V> {

        /* renamed from: a */
        public transient Comparator<? super K> f30692a;

        /* renamed from: b */
        public transient Set<Map.Entry<K, V>> f30693b;

        /* renamed from: c */
        public transient NavigableSet<K> f30694c;

        /* renamed from: com.google.common.collect.Maps$i$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$i$a.class */
        public class C7571a extends AbstractC7572j<K, V> {
            public C7571a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j
            /* renamed from: a */
            public Map<K, V> mo8095a() {
                return AbstractC7570i.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return AbstractC7570i.this.mo8109b();
            }
        }

        /* renamed from: a */
        public static <T> Ordering<T> m8110a(Comparator<T> comparator) {
            return Ordering.from(comparator).reverse();
        }

        /* renamed from: a */
        public Set<Map.Entry<K, V>> m8111a() {
            return new C7571a();
        }

        /* renamed from: b */
        public abstract Iterator<Map.Entry<K, V>> mo8109b();

        /* renamed from: c */
        public abstract NavigableMap<K, V> mo8108c();

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return mo8108c().floorEntry(k);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return mo8108c().floorKey(k);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f30692a;
            Comparator<? super K> comparator2 = comparator;
            if (comparator == null) {
                Comparator<? super K> comparator3 = mo8108c().comparator();
                Comparator<? super K> comparator4 = comparator3;
                if (comparator3 == null) {
                    comparator4 = Ordering.natural();
                }
                comparator2 = m8110a(comparator4);
                this.f30692a = comparator2;
            }
            return comparator2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
        public final Map<K, V> delegate() {
            return mo8108c();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return mo8108c().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return mo8108c();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f30693b;
            Set<Map.Entry<K, V>> set2 = set;
            if (set == null) {
                set2 = m8111a();
                this.f30693b = set2;
            }
            return set2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return mo8108c().lastEntry();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo8108c().lastKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return mo8108c().ceilingEntry(k);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return mo8108c().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return mo8108c().tailMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return mo8108c().lowerEntry(k);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return mo8108c().lowerKey(k);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return mo8108c().firstEntry();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo8108c().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return mo8108c().higherEntry(k);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return mo8108c().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f30694c;
            NavigableSet<K> navigableSet2 = navigableSet;
            if (navigableSet == null) {
                navigableSet2 = new C7577n<>(this);
                this.f30694c = navigableSet2;
            }
            return navigableSet2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return mo8108c().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return mo8108c().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return mo8108c().subMap(k2, z2, k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return mo8108c().headMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5040z
        public String toString() {
            return standardToString();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public Collection<V> values() {
            return new C7583t(this);
        }
    }

    /* renamed from: com.google.common.collect.Maps$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$j.class */
    public static abstract class AbstractC7572j<K, V> extends Sets.AbstractC7614a<Map.Entry<K, V>> {
        /* renamed from: a */
        public abstract Map<K, V> mo8095a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo8095a().clear();
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x004a, code lost:
            if (mo8095a().containsKey(r0) != false) goto L_0x004d;
         */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean contains(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0050
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                r8 = r0
                r0 = r3
                java.util.Map r0 = r0.mo8095a()
                r1 = r8
                java.lang.Object r0 = com.google.common.collect.Maps.m8116e(r0, r1)
                r9 = r0
                r0 = r6
                r7 = r0
                r0 = r9
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = p131c.p161d.p266c.p267a.C4928k.m24808a(r0, r1)
                if (r0 == 0) goto L_0x0050
                r0 = r9
                if (r0 != 0) goto L_0x004d
                r0 = r6
                r7 = r0
                r0 = r3
                java.util.Map r0 = r0.mo8095a()
                r1 = r8
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x0050
            L_0x004d:
                r0 = 1
                r7 = r0
            L_0x0050:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Maps.AbstractC7572j.contains(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo8095a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return mo8095a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                C4933n.m24795a(collection);
                return super.removeAll(collection);
            } catch (UnsupportedOperationException e) {
                return Sets.m8058a((Set<?>) this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                C4933n.m24795a(collection);
                return super.retainAll(collection);
            } catch (UnsupportedOperationException e) {
                HashSet a = Sets.m8063a(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        a.add(((Map.Entry) obj).getKey());
                    }
                }
                return mo8095a().keySet().retainAll(a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo8095a().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$k.class */
    public interface AbstractC7573k<K, V1, V2> {
        /* renamed from: a */
        V2 mo8107a(K k, V1 v1);
    }

    /* renamed from: com.google.common.collect.Maps$l */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$l.class */
    public static abstract class AbstractC7574l<K, V> extends AbstractMap<K, V> {

        /* renamed from: com.google.common.collect.Maps$l$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$l$a.class */
        public class C7575a extends AbstractC7572j<K, V> {
            public C7575a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j
            /* renamed from: a */
            public Map<K, V> mo8095a() {
                return AbstractC7574l.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return AbstractC7574l.this.mo7961a();
            }
        }

        /* renamed from: a */
        public abstract Iterator<Map.Entry<K, V>> mo7961a();

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.m8258b(mo7961a());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new C7575a();
        }
    }

    /* renamed from: com.google.common.collect.Maps$m */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$m.class */
    public static class C7576m<K, V> extends Sets.AbstractC7614a<K> {

        /* renamed from: a */
        public final Map<K, V> f30697a;

        public C7576m(Map<K, V> map) {
            C4933n.m24795a(map);
            this.f30697a = map;
        }

        /* renamed from: a */
        public Map<K, V> mo8106a() {
            return this.f30697a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo8106a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return mo8106a().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo8106a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Maps.m8145a(mo8106a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            mo8106a().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo8106a().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$n */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$n.class */
    public static class C7577n<K, V> extends C7578o<K, V> implements NavigableSet<K> {
        public C7577n(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.Maps.C7578o, com.google.common.collect.Maps.C7576m
        /* renamed from: a */
        public NavigableMap<K, V> mo8106a() {
            return (NavigableMap) this.f30697a;
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return mo8106a().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return mo8106a().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return mo8106a().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return mo8106a().headMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.C7578o, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return mo8106a().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return mo8106a().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Maps.m8128b(mo8106a().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Maps.m8128b(mo8106a().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return mo8106a().subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.C7578o, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return mo8106a().tailMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.C7578o, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    /* renamed from: com.google.common.collect.Maps$o */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$o.class */
    public static class C7578o<K, V> extends C7576m<K, V> implements SortedSet<K> {
        public C7578o(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override // com.google.common.collect.Maps.C7576m
        /* renamed from: a */
        public SortedMap<K, V> mo8106a() {
            return (SortedMap) super.mo8106a();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return mo8106a().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return mo8106a().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new C7578o(mo8106a().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return mo8106a().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new C7578o(mo8106a().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new C7578o(mo8106a().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.Maps$p */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$p.class */
    public static class C7579p<K, V1, V2> extends AbstractC7574l<K, V2> {

        /* renamed from: a */
        public final Map<K, V1> f30698a;

        /* renamed from: b */
        public final AbstractC7573k<? super K, ? super V1, V2> f30699b;

        public C7579p(Map<K, V1> map, AbstractC7573k<? super K, ? super V1, V2> kVar) {
            C4933n.m24795a(map);
            this.f30698a = map;
            C4933n.m24795a(kVar);
            this.f30699b = kVar;
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<K, V2>> mo7961a() {
            return Iterators.m8264a((Iterator) this.f30698a.entrySet().iterator(), Maps.m8150a(this.f30699b));
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f30698a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f30698a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            V1 v1 = this.f30698a.get(obj);
            return (v1 != null || this.f30698a.containsKey(obj)) ? this.f30699b.mo8107a(obj, v1) : null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f30698a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            return this.f30698a.containsKey(obj) ? this.f30699b.mo8107a(obj, (V1) this.f30698a.remove(obj)) : null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30698a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new C7583t(this);
        }
    }

    /* renamed from: com.google.common.collect.Maps$q */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$q.class */
    public static class C7580q<K, V1, V2> extends C7579p<K, V1, V2> implements SortedMap<K, V2> {
        public C7580q(SortedMap<K, V1> sortedMap, AbstractC7573k<? super K, ? super V1, V2> kVar) {
            super(sortedMap, kVar);
        }

        /* renamed from: b */
        public SortedMap<K, V1> m8105b() {
            return (SortedMap) this.f30698a;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return m8105b().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return m8105b().firstKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V2> headMap(K k) {
            return Maps.m8134a((SortedMap) m8105b().headMap(k), (AbstractC7573k) this.f30699b);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return m8105b().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V2> subMap(K k, K k2) {
            return Maps.m8134a((SortedMap) m8105b().subMap(k, k2), (AbstractC7573k) this.f30699b);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V2> tailMap(K k) {
            return Maps.m8134a((SortedMap) m8105b().tailMap(k), (AbstractC7573k) this.f30699b);
        }
    }

    /* renamed from: com.google.common.collect.Maps$r */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$r.class */
    public static class C7581r<K, V> extends AbstractC5022s<Map.Entry<K, V>> {

        /* renamed from: a */
        public final Collection<Map.Entry<K, V>> f30700a;

        public C7581r(Collection<Map.Entry<K, V>> collection) {
            this.f30700a = collection;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Collection<Map.Entry<K, V>> delegate() {
            return this.f30700a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<Map.Entry<K, V>> iterator() {
            return Maps.m8129b(this.f30700a.iterator());
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

    /* renamed from: com.google.common.collect.Maps$s */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$s.class */
    public static class C7582s<K, V> extends C7581r<K, V> implements Set<Map.Entry<K, V>> {
        public C7582s(Set<Map.Entry<K, V>> set) {
            super(set);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.m8060a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m8061a(this);
        }
    }

    /* renamed from: com.google.common.collect.Maps$t */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$t.class */
    public static class C7583t<K, V> extends AbstractCollection<V> {

        /* renamed from: a */
        public final Map<K, V> f30701a;

        public C7583t(Map<K, V> map) {
            C4933n.m24795a(map);
            this.f30701a = map;
        }

        /* renamed from: a */
        public final Map<K, V> m8104a() {
            return this.f30701a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            m8104a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return m8104a().containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return m8104a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.m8124c(m8104a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Map.Entry<K, V> entry : m8104a().entrySet()) {
                    if (C4928k.m24808a(obj, entry.getValue())) {
                        m8104a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                C4933n.m24795a(collection);
                return super.removeAll(collection);
            } catch (UnsupportedOperationException e) {
                HashSet a = Sets.m8064a();
                for (Map.Entry<K, V> entry : m8104a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        a.add(entry.getKey());
                    }
                }
                return m8104a().keySet().removeAll(a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                C4933n.m24795a(collection);
                return super.retainAll(collection);
            } catch (UnsupportedOperationException e) {
                HashSet a = Sets.m8064a();
                for (Map.Entry<K, V> entry : m8104a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        a.add(entry.getKey());
                    }
                }
                return m8104a().keySet().retainAll(a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return m8104a().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$u */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Maps$u.class */
    public static abstract class AbstractC7584u<K, V> extends AbstractMap<K, V> {

        /* renamed from: a */
        public transient Set<Map.Entry<K, V>> f30702a;

        /* renamed from: b */
        public transient Set<K> f30703b;

        /* renamed from: c */
        public transient Collection<V> f30704c;

        /* renamed from: a */
        public abstract Set<Map.Entry<K, V>> mo8048a();

        /* renamed from: b */
        public Set<K> mo8051b() {
            return new C7576m(this);
        }

        /* renamed from: c */
        public Collection<V> mo8050c() {
            return new C7583t(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f30702a;
            Set<Map.Entry<K, V>> set2 = set;
            if (set == null) {
                set2 = mo8048a();
                this.f30702a = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f30703b;
            Set<K> set2 = set;
            if (set == null) {
                set2 = mo8051b();
                this.f30703b = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f30704c;
            Collection<V> collection2 = collection;
            if (collection == null) {
                collection2 = mo8050c();
                this.f30704c = collection2;
            }
            return collection2;
        }
    }

    /* renamed from: a */
    public static int m8153a(int i) {
        if (i >= 3) {
            return i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }
        C5006n.m24663a(i, "expectedSize");
        return i + 1;
    }

    /* renamed from: a */
    public static <K> AbstractC4920g<Map.Entry<K, ?>, K> m8154a() {
        return EntryFunction.KEY;
    }

    /* renamed from: a */
    public static <K, V1, V2> AbstractC4920g<Map.Entry<K, V1>, Map.Entry<K, V2>> m8150a(AbstractC7573k<? super K, ? super V1, V2> kVar) {
        C4933n.m24795a(kVar);
        return new C7563b(kVar);
    }

    /* renamed from: a */
    public static <K> AbstractC4934o<Map.Entry<K, ?>> m8151a(AbstractC4934o<? super K> oVar) {
        return Predicates.m8570a(oVar, m8154a());
    }

    /* renamed from: a */
    public static <E> ImmutableMap<E, Integer> m8147a(Collection<E> collection) {
        ImmutableMap.C7476b bVar = new ImmutableMap.C7476b(collection.size());
        int i = 0;
        for (E e : collection) {
            bVar.mo8319a(e, Integer.valueOf(i));
            i++;
        }
        return bVar.mo8322a();
    }

    /* renamed from: a */
    public static <K, V1, V2> AbstractC7573k<K, V1, V2> m8152a(AbstractC4920g<? super V1, V2> gVar) {
        C4933n.m24795a(gVar);
        return new C7569h(gVar);
    }

    /* renamed from: a */
    public static String m8143a(Map<?, ?> map) {
        StringBuilder a = C5008o.m24658a(map.size());
        a.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                a.append(", ");
            }
            z = false;
            a.append(entry.getKey());
            a.append('=');
            a.append(entry.getValue());
        }
        a.append('}');
        return a.toString();
    }

    /* renamed from: a */
    public static <K, V> Iterator<K> m8145a(Iterator<Map.Entry<K, V>> it) {
        return new C7564c(it);
    }

    /* renamed from: a */
    public static <K, V> Iterator<Map.Entry<K, V>> m8136a(Set<K> set, AbstractC4920g<? super K, V> gVar) {
        return new C7566e(set.iterator(), gVar);
    }

    /* renamed from: a */
    public static <V2, K, V1> Map.Entry<K, V2> m8149a(AbstractC7573k<? super K, ? super V1, V2> kVar, Map.Entry<K, V1> entry) {
        C4933n.m24795a(kVar);
        C4933n.m24795a(entry);
        return new C7562a(entry, kVar);
    }

    /* renamed from: a */
    public static <K, V> Map.Entry<K, V> m8148a(K k, V v) {
        return new ImmutableEntry(k, v);
    }

    /* renamed from: a */
    public static <K, V1, V2> Map<K, V2> m8142a(Map<K, V1> map, AbstractC4920g<? super V1, V2> gVar) {
        return m8141a((Map) map, m8152a(gVar));
    }

    /* renamed from: a */
    public static <K, V1, V2> Map<K, V2> m8141a(Map<K, V1> map, AbstractC7573k<? super K, ? super V1, V2> kVar) {
        return new C7579p(map, kVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> NavigableMap<K, V> m8138a(NavigableMap<K, ? extends V> navigableMap) {
        C4933n.m24795a(navigableMap);
        return navigableMap instanceof UnmodifiableNavigableMap ? navigableMap : new UnmodifiableNavigableMap(navigableMap);
    }

    /* renamed from: a */
    public static <K, V> Set<Map.Entry<K, V>> m8137a(Set<Map.Entry<K, V>> set) {
        return new C7582s(Collections.unmodifiableSet(set));
    }

    /* renamed from: a */
    public static <K, V1, V2> SortedMap<K, V2> m8135a(SortedMap<K, V1> sortedMap, AbstractC4920g<? super V1, V2> gVar) {
        return m8134a((SortedMap) sortedMap, m8152a(gVar));
    }

    /* renamed from: a */
    public static <K, V1, V2> SortedMap<K, V2> m8134a(SortedMap<K, V1> sortedMap, AbstractC7573k<? super K, ? super V1, V2> kVar) {
        return new C7580q(sortedMap, kVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> void m8139a(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m8146a(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        return collection.contains(m8123c((Map.Entry) obj));
    }

    /* renamed from: a */
    public static boolean m8140a(Map<?, ?> map, Object obj) {
        return Iterators.m8262a(m8145a(map.entrySet().iterator()), obj);
    }

    /* renamed from: b */
    public static <V> AbstractC4934o<Map.Entry<?, V>> m8131b(AbstractC4934o<? super V> oVar) {
        return Predicates.m8570a(oVar, m8118e());
    }

    /* renamed from: b */
    public static <K, V> AbstractC4978e1<Map.Entry<K, V>> m8129b(Iterator<Map.Entry<K, V>> it) {
        return new C7568g(it);
    }

    /* renamed from: b */
    public static <K> K m8128b(Map.Entry<K, ?> entry) {
        return entry == null ? null : entry.getKey();
    }

    /* renamed from: b */
    public static <K, V> HashMap<K, V> m8133b() {
        return new HashMap<>();
    }

    /* renamed from: b */
    public static <K, V> HashMap<K, V> m8132b(int i) {
        return new HashMap<>(m8153a(i));
    }

    /* renamed from: b */
    public static <K, V> boolean m8130b(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        return collection.remove(m8123c((Map.Entry) obj));
    }

    /* renamed from: b */
    public static boolean m8127b(Map<?, ?> map, Object obj) {
        return Iterators.m8262a(m8124c(map.entrySet().iterator()), obj);
    }

    /* renamed from: c */
    public static <K, V> IdentityHashMap<K, V> m8126c() {
        return new IdentityHashMap<>();
    }

    /* renamed from: c */
    public static <K, V> Iterator<V> m8124c(Iterator<Map.Entry<K, V>> it) {
        return new C7565d(it);
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m8125c(int i) {
        return new LinkedHashMap<>(m8153a(i));
    }

    /* renamed from: c */
    public static <K, V> Map.Entry<K, V> m8123c(Map.Entry<? extends K, ? extends V> entry) {
        C4933n.m24795a(entry);
        return new C7567f(entry);
    }

    /* renamed from: c */
    public static boolean m8122c(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    /* renamed from: d */
    public static <K, V> LinkedHashMap<K, V> m8121d() {
        return new LinkedHashMap<>();
    }

    /* renamed from: d */
    public static <K, V> Map.Entry<K, V> m8120d(Map.Entry<K, ? extends V> entry) {
        return entry == null ? null : m8123c(entry);
    }

    /* renamed from: d */
    public static boolean m8119d(Map<?, ?> map, Object obj) {
        C4933n.m24795a(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: e */
    public static <V> AbstractC4920g<Map.Entry<?, V>, V> m8118e() {
        return EntryFunction.VALUE;
    }

    /* renamed from: e */
    public static <V> V m8117e(Map.Entry<?, V> entry) {
        return entry == null ? null : entry.getValue();
    }

    /* renamed from: e */
    public static <V> V m8116e(Map<?, V> map, Object obj) {
        C4933n.m24795a(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }

    /* renamed from: f */
    public static <V> V m8115f(Map<?, V> map, Object obj) {
        C4933n.m24795a(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }
}
