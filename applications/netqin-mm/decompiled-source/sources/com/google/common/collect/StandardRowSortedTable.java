package com.google.common.collect;

import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC5021r0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardRowSortedTable.class */
public class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V> implements AbstractC5021r0<R, C, V> {
    public static final long serialVersionUID = 0;

    /* renamed from: com.google.common.collect.StandardRowSortedTable$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardRowSortedTable$b.class */
    public class C7625b extends StandardTable<R, C, V>.C7643h implements SortedMap<R, Map<C, V>> {
        public C7625b() {
            super();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: b */
        public SortedSet<R> mo8051b() {
            return new Maps.C7578o(this);
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return StandardRowSortedTable.this.sortedBackingMap().comparator();
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) StandardRowSortedTable.this.sortedBackingMap().firstKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r) {
            C4933n.m24795a(r);
            return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().headMap(r), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) StandardRowSortedTable.this.sortedBackingMap().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r, R r2) {
            C4933n.m24795a(r);
            C4933n.m24795a(r2);
            return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().subMap(r, r2), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r) {
            C4933n.m24795a(r);
            return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().tailMap(r), StandardRowSortedTable.this.factory).rowMap();
        }
    }

    public StandardRowSortedTable(SortedMap<R, Map<C, V>> sortedMap, AbstractC4941s<? extends Map<C, V>> sVar) {
        super(sortedMap, sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap<R, Map<C, V>> sortedBackingMap() {
        return (SortedMap) this.backingMap;
    }

    @Override // com.google.common.collect.StandardTable
    public SortedMap<R, Map<C, V>> createRowMap() {
        return new C7625b();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
