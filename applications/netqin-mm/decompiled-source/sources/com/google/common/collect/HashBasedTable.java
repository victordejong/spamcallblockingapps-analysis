package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBasedTable.class */
public class HashBasedTable<R, C, V> extends StandardTable<R, C, V> {
    public static final long serialVersionUID = 0;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBasedTable$Factory.class */
    public static class Factory<C, V> implements AbstractC4941s<Map<C, V>>, Serializable {
        public static final long serialVersionUID = 0;
        public final int expectedSize;

        public Factory(int i) {
            this.expectedSize = i;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public Map<C, V> get() {
            return Maps.m8125c(this.expectedSize);
        }
    }

    public HashBasedTable(Map<R, Map<C, V>> map, Factory<C, V> factory) {
        super(map, factory);
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new Factory(0));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int i, int i2) {
        C5006n.m24663a(i2, "expectedCellsPerRow");
        return new HashBasedTable<>(Maps.m8125c(i), new Factory(i2));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
        HashBasedTable<R, C, V> create = create();
        create.putAll(a1Var);
        return create;
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        return (V) super.get(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ void putAll(AbstractC4958a1 a1Var) {
        super.putAll(a1Var);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V remove(Object obj, Object obj2) {
        return (V) super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return super.row(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map rowMap() {
        return super.rowMap();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}
