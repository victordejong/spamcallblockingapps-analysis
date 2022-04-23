package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.SortedLists;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC5013p0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeMap.class */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements AbstractC5013p0<K, V>, Serializable {
    public static final ImmutableRangeMap<Comparable<?>, Object> EMPTY = new ImmutableRangeMap<>(ImmutableList.m8400of(), ImmutableList.m8400of());
    public static final long serialVersionUID = 0;
    public final transient ImmutableList<Range<K>> ranges;
    public final transient ImmutableList<V> values;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeMap$SerializedForm.class */
    public static class SerializedForm<K extends Comparable<?>, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final ImmutableMap<Range<K>, V> mapOfRanges;

        public SerializedForm(ImmutableMap<Range<K>, V> immutableMap) {
            this.mapOfRanges = immutableMap;
        }

        public Object createRangeMap() {
            C7487a aVar = new C7487a();
            AbstractC4978e1<Map.Entry<Range<K>, V>> it = this.mapOfRanges.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Range<K>, V> next = it.next();
                aVar.m8355a(next.getKey(), next.getValue());
            }
            return aVar.m8356a();
        }

        public Object readResolve() {
            return this.mapOfRanges.isEmpty() ? ImmutableRangeMap.m8358of() : createRangeMap();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableRangeMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeMap$a.class */
    public static final class C7487a<K extends Comparable<?>, V> {

        /* renamed from: a */
        public final List<Map.Entry<Range<K>, V>> f30559a = Lists.m8232a();

        /* renamed from: a */
        public C7487a<K, V> m8355a(Range<K> range, V v) {
            C4933n.m24795a(range);
            C4933n.m24795a(v);
            C4933n.m24782a(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.f30559a.add(Maps.m8148a(range, v));
            return this;
        }

        /* renamed from: a */
        public ImmutableRangeMap<K, V> m8356a() {
            Collections.sort(this.f30559a, Range.rangeLexOrdering().onKeys());
            ImmutableList.C7470a aVar = new ImmutableList.C7470a(this.f30559a.size());
            ImmutableList.C7470a aVar2 = new ImmutableList.C7470a(this.f30559a.size());
            for (int i = 0; i < this.f30559a.size(); i++) {
                Range<K> key = this.f30559a.get(i).getKey();
                if (i > 0) {
                    Range<K> key2 = this.f30559a.get(i - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + key2 + " overlaps with entry " + key);
                    }
                }
                aVar.mo8284a((ImmutableList.C7470a) key);
                aVar2.mo8284a((ImmutableList.C7470a) this.f30559a.get(i).getValue());
            }
            return new ImmutableRangeMap<>(aVar.m8387a(), aVar2.m8387a());
        }
    }

    public ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.ranges = immutableList;
        this.values = immutableList2;
    }

    public static <K extends Comparable<?>, V> C7487a<K, V> builder() {
        return new C7487a<>();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(AbstractC5013p0<K, ? extends V> p0Var) {
        if (p0Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) p0Var;
        }
        Map<Range<K>, ? extends V> asMapOfRanges = p0Var.asMapOfRanges();
        ImmutableList.C7470a aVar = new ImmutableList.C7470a(asMapOfRanges.size());
        ImmutableList.C7470a aVar2 = new ImmutableList.C7470a(asMapOfRanges.size());
        for (Map.Entry<Range<K>, ? extends V> entry : asMapOfRanges.entrySet()) {
            aVar.mo8284a((ImmutableList.C7470a) entry.getKey());
            aVar2.mo8284a((ImmutableList.C7470a) entry.getValue());
        }
        return new ImmutableRangeMap<>(aVar.m8387a(), aVar2.m8387a());
    }

    /* renamed from: of */
    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> m8358of() {
        return (ImmutableRangeMap<K, V>) EMPTY;
    }

    /* renamed from: of */
    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> m8357of(Range<K> range, V v) {
        return new ImmutableRangeMap<>(ImmutableList.m8399of(range), ImmutableList.m8399of(v));
    }

    public ImmutableMap<Range<K>, V> asDescendingMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.m8380of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse()), this.values.reverse());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5013p0
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.m8380of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering()), this.values);
    }

    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC5013p0) {
            return asMapOfRanges().equals(((AbstractC5013p0) obj).asMapOfRanges());
        }
        return false;
    }

    public V get(K k) {
        int a = SortedLists.m8055a(this.ranges, Range.lowerBoundFn(), Cut.belowValue(k), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        V v = null;
        if (a == -1) {
            return null;
        }
        if (this.ranges.get(a).contains(k)) {
            v = this.values.get(a);
        }
        return v;
    }

    public Map.Entry<Range<K>, V> getEntry(K k) {
        int a = SortedLists.m8055a(this.ranges, Range.lowerBoundFn(), Cut.belowValue(k), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        Map.Entry<Range<K>, V> entry = null;
        if (a == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(a);
        if (range.contains(k)) {
            entry = Maps.m8148a(range, this.values.get(a));
        }
        return entry;
    }

    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Deprecated
    public void put(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void putAll(AbstractC5013p0<K, V> p0Var) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void putCoalescing(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    public Range<K> span() {
        if (!this.ranges.isEmpty()) {
            Range<K> range = this.ranges.get(0);
            ImmutableList<Range<K>> immutableList = this.ranges;
            return Range.create(range.lowerBound, immutableList.get(immutableList.size() - 1).upperBound);
        }
        throw new NoSuchElementException();
    }

    public ImmutableRangeMap<K, V> subRangeMap(final Range<K> range) {
        C4933n.m24795a(range);
        if (range.isEmpty()) {
            return m8358of();
        }
        if (this.ranges.isEmpty() || range.encloses(span())) {
            return this;
        }
        final int a = SortedLists.m8055a(this.ranges, Range.upperBoundFn(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        int a2 = SortedLists.m8055a(this.ranges, Range.lowerBoundFn(), range.upperBound, SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        if (a >= a2) {
            return m8358of();
        }
        final int i = a2 - a;
        return (ImmutableRangeMap<K, V>) new ImmutableRangeMap<K, V>(new ImmutableList<Range<K>>() { // from class: com.google.common.collect.ImmutableRangeMap.1
            @Override // java.util.List
            public Range<K> get(int i2) {
                C4933n.m24798a(i2, i);
                return (i2 == 0 || i2 == i - 1) ? ((Range) ImmutableRangeMap.this.ranges.get(i2 + a)).intersection(range) : (Range) ImmutableRangeMap.this.ranges.get(i2 + a);
            }

            @Override // com.google.common.collect.ImmutableCollection
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return i;
            }
        }, this.values.subList(a, a2)) { // from class: com.google.common.collect.ImmutableRangeMap.2
            @Override // com.google.common.collect.ImmutableRangeMap
            public /* bridge */ /* synthetic */ Map asDescendingMapOfRanges() {
                return ImmutableRangeMap.super.asDescendingMapOfRanges();
            }

            @Override // com.google.common.collect.ImmutableRangeMap, p131c.p161d.p266c.p269c.AbstractC5013p0
            public /* bridge */ /* synthetic */ Map asMapOfRanges() {
                return ImmutableRangeMap.super.asMapOfRanges();
            }

            @Override // com.google.common.collect.ImmutableRangeMap
            public ImmutableRangeMap<K, V> subRangeMap(Range<K> range2) {
                return range.isConnected(range2) ? this.subRangeMap((Range) range2.intersection(range)) : ImmutableRangeMap.m8358of();
            }
        };
    }

    public String toString() {
        return asMapOfRanges().toString();
    }

    public Object writeReplace() {
        return new SerializedForm(asMapOfRanges());
    }
}
