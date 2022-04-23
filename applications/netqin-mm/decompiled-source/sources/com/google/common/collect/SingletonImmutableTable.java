package com.google.common.collect;

import com.google.common.collect.ImmutableTable;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/SingletonImmutableTable.class */
public class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    public final C singleColumnKey;
    public final R singleRowKey;
    public final V singleValue;

    public SingletonImmutableTable(AbstractC4958a1.AbstractC4959a<R, C, V> aVar) {
        this(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
    }

    public SingletonImmutableTable(R r, C c, V v) {
        C4933n.m24795a(r);
        this.singleRowKey = r;
        C4933n.m24795a(c);
        this.singleColumnKey = c;
        C4933n.m24795a(v);
        this.singleValue = v;
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<R, V> column(C c) {
        C4933n.m24795a(c);
        return containsColumn(c) ? ImmutableMap.m8379of(this.singleRowKey, (Object) this.singleValue) : ImmutableMap.m8380of();
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.m8379of(this.singleColumnKey, ImmutableMap.m8379of(this.singleRowKey, (Object) this.singleValue));
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4991i
    public ImmutableSet<AbstractC4958a1.AbstractC4959a<R, C, V>> createCellSet() {
        return ImmutableSet.m8348of(ImmutableTable.cellOf(this.singleRowKey, this.singleColumnKey, this.singleValue));
    }

    @Override // com.google.common.collect.ImmutableTable
    public ImmutableTable.SerializedForm createSerializedForm() {
        return ImmutableTable.SerializedForm.create(this, new int[]{0}, new int[]{0});
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4991i
    public ImmutableCollection<V> createValues() {
        return ImmutableSet.m8348of(this.singleValue);
    }

    @Override // com.google.common.collect.ImmutableTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.m8379of(this.singleRowKey, ImmutableMap.m8379of(this.singleColumnKey, (Object) this.singleValue));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int size() {
        return 1;
    }
}
