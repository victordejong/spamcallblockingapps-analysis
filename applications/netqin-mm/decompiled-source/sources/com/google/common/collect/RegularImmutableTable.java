package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableTable.class */
public abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableTable$CellSet.class */
    public final class CellSet extends IndexedImmutableSet<AbstractC4958a1.AbstractC4959a<R, C, V>> {
        public CellSet() {
        }

        public /* synthetic */ CellSet(RegularImmutableTable regularImmutableTable, C7613a aVar) {
            this();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4958a1.AbstractC4959a) {
                AbstractC4958a1.AbstractC4959a aVar = (AbstractC4958a1.AbstractC4959a) obj;
                Object obj2 = RegularImmutableTable.this.get(aVar.getRowKey(), aVar.getColumnKey());
                z = false;
                if (obj2 != null) {
                    z = false;
                    if (obj2.equals(aVar.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public AbstractC4958a1.AbstractC4959a<R, C, V> get(int i) {
            return RegularImmutableTable.this.getCell(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableTable.this.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableTable$Values.class */
    public final class Values extends ImmutableList<V> {
        public Values() {
        }

        public /* synthetic */ Values(RegularImmutableTable regularImmutableTable, C7613a aVar) {
            this();
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) RegularImmutableTable.this.getValue(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return RegularImmutableTable.this.size();
        }
    }

    /* renamed from: com.google.common.collect.RegularImmutableTable$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableTable$a.class */
    public static final class C7613a implements Comparator<AbstractC4958a1.AbstractC4959a<R, C, V>> {

        /* renamed from: a */
        public final /* synthetic */ Comparator f30732a;

        /* renamed from: b */
        public final /* synthetic */ Comparator f30733b;

        public C7613a(Comparator comparator, Comparator comparator2) {
            this.f30732a = comparator;
            this.f30733b = comparator2;
        }

        /* renamed from: a */
        public int compare(AbstractC4958a1.AbstractC4959a<R, C, V> aVar, AbstractC4958a1.AbstractC4959a<R, C, V> aVar2) {
            Comparator comparator = this.f30732a;
            int i = 0;
            int compare = comparator == null ? 0 : comparator.compare(aVar.getRowKey(), aVar2.getRowKey());
            if (compare != 0) {
                return compare;
            }
            Comparator comparator2 = this.f30733b;
            if (comparator2 != null) {
                i = comparator2.compare(aVar.getColumnKey(), aVar2.getColumnKey());
            }
            return i;
        }
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<AbstractC4958a1.AbstractC4959a<R, C, V>> iterable) {
        return forCellsInternal(iterable, null, null);
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forCells(List<AbstractC4958a1.AbstractC4959a<R, C, V>> list, Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        C4933n.m24795a(list);
        if (!(comparator == null && comparator2 == null)) {
            Collections.sort(list, new C7613a(comparator, comparator2));
        }
        return forCellsInternal(list, comparator, comparator2);
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forCellsInternal(Iterable<AbstractC4958a1.AbstractC4959a<R, C, V>> iterable, Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList copyOf = ImmutableList.copyOf(iterable);
        for (AbstractC4958a1.AbstractC4959a<R, C, V> aVar : iterable) {
            linkedHashSet.add(aVar.getRowKey());
            linkedHashSet2.add(aVar.getColumnKey());
        }
        return forOrderedComponents(copyOf, comparator == null ? ImmutableSet.copyOf((Collection) linkedHashSet) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? ImmutableSet.copyOf((Collection) linkedHashSet2) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forOrderedComponents(ImmutableList<AbstractC4958a1.AbstractC4959a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new DenseImmutableTable<>(immutableList, immutableSet, immutableSet2) : new SparseImmutableTable<>(immutableList, immutableSet, immutableSet2);
    }

    public final void checkNoDuplicate(R r, C c, V v, V v2) {
        C4933n.m24780a(v == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r, c, v2, v);
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4991i
    public final ImmutableSet<AbstractC4958a1.AbstractC4959a<R, C, V>> createCellSet() {
        return isEmpty() ? ImmutableSet.m8349of() : new CellSet(this, null);
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4991i
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.m8400of() : new Values(this, null);
    }

    public abstract AbstractC4958a1.AbstractC4959a<R, C, V> getCell(int i);

    public abstract V getValue(int i);
}
