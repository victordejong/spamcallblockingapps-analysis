package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import java.util.Collection;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable.class */
public final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    public final int[] cellColumnIndices;
    public final int[] cellRowIndices;
    public final int[] columnCounts;
    public final ImmutableMap<C, Integer> columnKeyToIndex;
    public final ImmutableMap<C, ImmutableMap<R, V>> columnMap;
    public final int[] rowCounts;
    public final ImmutableMap<R, Integer> rowKeyToIndex;
    public final ImmutableMap<R, ImmutableMap<C, V>> rowMap;
    public final V[][] values;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$Column.class */
    public final class Column extends ImmutableArrayMap<R, V> {
        public final int columnIndex;

        public Column(int i) {
            super(DenseImmutableTable.this.columnCounts[i]);
            this.columnIndex = i;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public V getValue(int i) {
            return (V) DenseImmutableTable.this.values[i][this.columnIndex];
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$ColumnMap.class */
    public final class ColumnMap extends ImmutableArrayMap<C, ImmutableMap<R, V>> {
        public ColumnMap() {
            super(DenseImmutableTable.this.columnCounts.length);
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<R, V> getValue(int i) {
            return new Column(i);
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$ImmutableArrayMap.class */
    public static abstract class ImmutableArrayMap<K, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {
        public final int size;

        /* renamed from: com.google.common.collect.DenseImmutableTable$ImmutableArrayMap$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$ImmutableArrayMap$a.class */
        public class C7447a extends AbstractIterator<Map.Entry<K, V>> {

            /* renamed from: c */
            public int f30502c = -1;

            /* renamed from: d */
            public final int f30503d;

            public C7447a() {
                this.f30503d = ImmutableArrayMap.this.keyToIndex().size();
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<K, V> mo7953a() {
                int i = this.f30502c;
                while (true) {
                    this.f30502c = i + 1;
                    int i2 = this.f30502c;
                    if (i2 >= this.f30503d) {
                        return m8454b();
                    }
                    Object value = ImmutableArrayMap.this.getValue(i2);
                    if (value != null) {
                        return Maps.m8148a(ImmutableArrayMap.this.getKey(this.f30502c), value);
                    }
                    i = this.f30502c;
                }
            }
        }

        public ImmutableArrayMap(int i) {
            this.size = i;
        }

        private boolean isFull() {
            return this.size == keyToIndex().size();
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return isFull() ? keyToIndex().keySet() : super.createKeySet();
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
        public AbstractC4978e1<Map.Entry<K, V>> entryIterator() {
            return new C7447a();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(Object obj) {
            Integer num = keyToIndex().get(obj);
            return num == null ? null : getValue(num.intValue());
        }

        public K getKey(int i) {
            return keyToIndex().keySet().asList().get(i);
        }

        public abstract V getValue(int i);

        public abstract ImmutableMap<K, Integer> keyToIndex();

        @Override // java.util.Map
        public int size() {
            return this.size;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$Row.class */
    public final class Row extends ImmutableArrayMap<C, V> {
        public final int rowIndex;

        public Row(int i) {
            super(DenseImmutableTable.this.rowCounts[i]);
            this.rowIndex = i;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public V getValue(int i) {
            return (V) DenseImmutableTable.this.values[this.rowIndex][i];
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DenseImmutableTable$RowMap.class */
    public final class RowMap extends ImmutableArrayMap<R, ImmutableMap<C, V>> {
        public RowMap() {
            super(DenseImmutableTable.this.rowCounts.length);
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<C, V> getValue(int i) {
            return new Row(i);
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }
    }

    public DenseImmutableTable(ImmutableList<AbstractC4958a1.AbstractC4959a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.values = (V[][]) new Object[immutableSet.size()][immutableSet2.size()];
        this.rowKeyToIndex = Maps.m8147a((Collection) immutableSet);
        this.columnKeyToIndex = Maps.m8147a((Collection) immutableSet2);
        this.rowCounts = new int[this.rowKeyToIndex.size()];
        this.columnCounts = new int[this.columnKeyToIndex.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            AbstractC4958a1.AbstractC4959a<R, C, V> aVar = immutableList.get(i);
            R rowKey = aVar.getRowKey();
            C columnKey = aVar.getColumnKey();
            int intValue = this.rowKeyToIndex.get(rowKey).intValue();
            int intValue2 = this.columnKeyToIndex.get(columnKey).intValue();
            checkNoDuplicate(rowKey, columnKey, this.values[intValue][intValue2], aVar.getValue());
            this.values[intValue][intValue2] = aVar.getValue();
            int[] iArr3 = this.rowCounts;
            iArr3[intValue] = iArr3[intValue] + 1;
            int[] iArr4 = this.columnCounts;
            iArr4[intValue2] = iArr4[intValue2] + 1;
            iArr[i] = intValue;
            iArr2[i] = intValue2;
        }
        this.cellRowIndices = iArr;
        this.cellColumnIndices = iArr2;
        this.rowMap = new RowMap();
        this.columnMap = new ColumnMap();
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf(this.columnMap);
    }

    @Override // com.google.common.collect.ImmutableTable
    public ImmutableTable.SerializedForm createSerializedForm() {
        return ImmutableTable.SerializedForm.create(this, this.cellRowIndices, this.cellColumnIndices);
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        return (num == null || num2 == null) ? null : this.values[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public AbstractC4958a1.AbstractC4959a<R, C, V> getCell(int i) {
        int i2 = this.cellRowIndices[i];
        int i3 = this.cellColumnIndices[i];
        return ImmutableTable.cellOf(rowKeySet().asList().get(i2), columnKeySet().asList().get(i3), this.values[i2][i3]);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public V getValue(int i) {
        return this.values[this.cellRowIndices[i]][this.cellColumnIndices[i]];
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf(this.rowMap);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int size() {
        return this.cellRowIndices.length;
    }
}
