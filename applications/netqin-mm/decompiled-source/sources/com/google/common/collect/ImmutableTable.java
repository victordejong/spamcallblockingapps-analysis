package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Tables;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4991i;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableTable.class */
public abstract class ImmutableTable<R, C, V> extends AbstractC4991i<R, C, V> implements Serializable {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableTable$SerializedForm.class */
    public static final class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final int[] cellColumnIndices;
        public final int[] cellRowIndices;
        public final Object[] cellValues;
        public final Object[] columnKeys;
        public final Object[] rowKeys;

        public SerializedForm(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        public static SerializedForm create(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new SerializedForm(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        public Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return ImmutableTable.m8275of();
            }
            int i = 0;
            if (objArr.length == 1) {
                return ImmutableTable.m8274of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            ImmutableList.C7470a aVar = new ImmutableList.C7470a(objArr.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i >= objArr2.length) {
                    return RegularImmutableTable.forOrderedComponents(aVar.m8387a(), ImmutableSet.copyOf(this.rowKeys), ImmutableSet.copyOf(this.columnKeys));
                }
                aVar.mo8284a((ImmutableList.C7470a) ImmutableTable.cellOf(this.rowKeys[this.cellRowIndices[i]], this.columnKeys[this.cellColumnIndices[i]], objArr2[i]));
                i++;
            }
        }
    }

    /* renamed from: com.google.common.collect.ImmutableTable$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableTable$a.class */
    public static final class C7500a<R, C, V> {

        /* renamed from: a */
        public final List<AbstractC4958a1.AbstractC4959a<R, C, V>> f30580a = Lists.m8232a();

        /* renamed from: b */
        public Comparator<? super R> f30581b;

        /* renamed from: c */
        public Comparator<? super C> f30582c;

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C7500a<R, C, V> m8272a(AbstractC4958a1.AbstractC4959a<? extends R, ? extends C, ? extends V> aVar) {
            if (aVar instanceof Tables.ImmutableCell) {
                C4933n.m24794a(aVar.getRowKey(), "row");
                C4933n.m24794a(aVar.getColumnKey(), "column");
                C4933n.m24794a(aVar.getValue(), "value");
                this.f30580a.add(aVar);
            } else {
                m8271a(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
            }
            return this;
        }

        /* renamed from: a */
        public C7500a<R, C, V> m8271a(R r, C c, V v) {
            this.f30580a.add(ImmutableTable.cellOf(r, c, v));
            return this;
        }

        /* renamed from: a */
        public ImmutableTable<R, C, V> m8273a() {
            int size = this.f30580a.size();
            return size != 0 ? size != 1 ? RegularImmutableTable.forCells(this.f30580a, this.f30581b, this.f30582c) : new SingletonImmutableTable((AbstractC4958a1.AbstractC4959a) C4983g0.m24715c(this.f30580a)) : ImmutableTable.m8275of();
        }
    }

    public static <R, C, V> C7500a<R, C, V> builder() {
        return new C7500a<>();
    }

    public static <R, C, V> AbstractC4958a1.AbstractC4959a<R, C, V> cellOf(R r, C c, V v) {
        C4933n.m24794a(r, "rowKey");
        C4933n.m24794a(c, "columnKey");
        C4933n.m24794a(v, "value");
        return Tables.m8022a(r, c, v);
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
        return a1Var instanceof ImmutableTable ? (ImmutableTable) a1Var : copyOf(a1Var.cellSet());
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends AbstractC4958a1.AbstractC4959a<? extends R, ? extends C, ? extends V>> iterable) {
        C7500a builder = builder();
        for (AbstractC4958a1.AbstractC4959a<? extends R, ? extends C, ? extends V> aVar : iterable) {
            builder.m8272a(aVar);
        }
        return builder.m8273a();
    }

    /* renamed from: of */
    public static <R, C, V> ImmutableTable<R, C, V> m8275of() {
        return (ImmutableTable<R, C, V>) SparseImmutableTable.EMPTY;
    }

    /* renamed from: of */
    public static <R, C, V> ImmutableTable<R, C, V> m8274of(R r, C c, V v) {
        return new SingletonImmutableTable(r, c, v);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public final AbstractC4978e1<AbstractC4958a1.AbstractC4959a<R, C, V>> cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableSet<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<R, V> column(C c) {
        C4933n.m24794a(c, "columnKey");
        return (ImmutableMap) C4924j.m24819a((ImmutableMap) columnMap().get(c), ImmutableMap.m8380of());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public abstract ImmutableSet<AbstractC4958a1.AbstractC4959a<R, C, V>> createCellSet();

    public abstract SerializedForm createSerializedForm();

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public abstract ImmutableCollection<V> createValues();

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public final void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableMap<C, V> row(R r) {
        C4933n.m24794a(r, "rowKey");
        return (ImmutableMap) C4924j.m24819a((ImmutableMap) rowMap().get(r), ImmutableMap.m8380of());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    public final Object writeReplace() {
        return createSerializedForm();
    }
}
