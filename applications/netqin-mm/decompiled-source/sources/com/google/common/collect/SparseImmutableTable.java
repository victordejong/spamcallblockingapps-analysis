package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/SparseImmutableTable.class */
public final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    public static final ImmutableTable<Object, Object, Object> EMPTY = new SparseImmutableTable(ImmutableList.m8400of(), ImmutableSet.m8349of(), ImmutableSet.m8349of());
    public final int[] cellColumnInRowIndices;
    public final int[] cellRowIndices;
    public final ImmutableMap<C, ImmutableMap<R, V>> columnMap;
    public final ImmutableMap<R, ImmutableMap<C, V>> rowMap;

    /* JADX WARN: Multi-variable type inference failed */
    public SparseImmutableTable(ImmutableList<AbstractC4958a1.AbstractC4959a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap a = Maps.m8147a((Collection) immutableSet);
        LinkedHashMap d = Maps.m8121d();
        AbstractC4978e1<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            d.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap d2 = Maps.m8121d();
        AbstractC4978e1<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            d2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            AbstractC4958a1.AbstractC4959a<R, C, V> aVar = immutableList.get(i);
            R rowKey = aVar.getRowKey();
            C columnKey = aVar.getColumnKey();
            V value = aVar.getValue();
            iArr[i] = ((Integer) a.get(rowKey)).intValue();
            Map map = (Map) d.get(rowKey);
            iArr2[i] = map.size();
            checkNoDuplicate(rowKey, columnKey, map.put(columnKey, value), value);
            ((Map) d2.get(columnKey)).put(rowKey, value);
        }
        this.cellRowIndices = iArr;
        this.cellColumnInRowIndices = iArr2;
        ImmutableMap.C7476b bVar = new ImmutableMap.C7476b(d.size());
        for (Map.Entry entry : d.entrySet()) {
            bVar.mo8319a(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.rowMap = bVar.mo8322a();
        ImmutableMap.C7476b bVar2 = new ImmutableMap.C7476b(d2.size());
        for (Map.Entry entry2 : d2.entrySet()) {
            bVar2.mo8319a(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.columnMap = bVar2.mo8322a();
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf(this.columnMap);
    }

    @Override // com.google.common.collect.ImmutableTable
    public ImmutableTable.SerializedForm createSerializedForm() {
        ImmutableMap a = Maps.m8147a((Collection) columnKeySet());
        int[] iArr = new int[cellSet().size()];
        AbstractC4978e1<AbstractC4958a1.AbstractC4959a<R, C, V>> it = cellSet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) a.get(it.next().getColumnKey())).intValue();
            i++;
        }
        return ImmutableTable.SerializedForm.create(this, this.cellRowIndices, iArr);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public AbstractC4958a1.AbstractC4959a<R, C, V> getCell(int i) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.rowMap.entrySet().asList().get(this.cellRowIndices[i]);
        ImmutableMap<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().asList().get(this.cellColumnInRowIndices[i]);
        return ImmutableTable.cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public V getValue(int i) {
        ImmutableMap<C, V> immutableMap = this.rowMap.values().asList().get(this.cellRowIndices[i]);
        return immutableMap.values().asList().get(this.cellColumnInRowIndices[i]);
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
