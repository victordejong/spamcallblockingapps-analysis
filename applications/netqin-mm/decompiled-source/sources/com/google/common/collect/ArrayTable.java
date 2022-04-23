package com.google.common.collect;

import com.google.common.collect.Maps;
import com.google.common.collect.Tables;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4956a;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4991i;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable.class */
public final class ArrayTable<R, C, V> extends AbstractC4991i<R, C, V> implements Serializable {
    public static final long serialVersionUID = 0;
    public final V[][] array;
    public final ImmutableMap<C, Integer> columnKeyToIndex;
    public final ImmutableList<C> columnList;
    public transient ArrayTable<R, C, V>.C7429f columnMap;
    public final ImmutableMap<R, Integer> rowKeyToIndex;
    public final ImmutableList<R> rowList;
    public transient ArrayTable<R, C, V>.C7431h rowMap;

    /* renamed from: com.google.common.collect.ArrayTable$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$a.class */
    public class C7422a extends AbstractC4956a<AbstractC4958a1.AbstractC4959a<R, C, V>> {
        public C7422a(int i) {
            super(i);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4956a
        /* renamed from: a */
        public AbstractC4958a1.AbstractC4959a<R, C, V> mo8246a(int i) {
            return ArrayTable.this.getCell(i);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$b.class */
    public class C7423b extends Tables.AbstractC7654b<R, C, V> {

        /* renamed from: a */
        public final int f30461a;

        /* renamed from: b */
        public final int f30462b;

        /* renamed from: c */
        public final /* synthetic */ int f30463c;

        public C7423b(int i) {
            this.f30463c = i;
            this.f30461a = this.f30463c / ArrayTable.this.columnList.size();
            this.f30462b = this.f30463c % ArrayTable.this.columnList.size();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public C getColumnKey() {
            return (C) ArrayTable.this.columnList.get(this.f30462b);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public R getRowKey() {
            return (R) ArrayTable.this.rowList.get(this.f30461a);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public V getValue() {
            return (V) ArrayTable.this.m8433at(this.f30461a, this.f30462b);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$c.class */
    public class C7424c extends AbstractC4956a<V> {
        public C7424c(int i) {
            super(i);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4956a
        /* renamed from: a */
        public V mo8246a(int i) {
            return (V) ArrayTable.this.getValue(i);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$d.class */
    public static abstract class AbstractC7425d<K, V> extends Maps.AbstractC7574l<K, V> {

        /* renamed from: a */
        public final ImmutableMap<K, Integer> f30466a;

        /* renamed from: com.google.common.collect.ArrayTable$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$d$a.class */
        public class C7426a extends AbstractC4960b<K, V> {

            /* renamed from: a */
            public final /* synthetic */ int f30467a;

            public C7426a(int i) {
                this.f30467a = i;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
            public K getKey() {
                return (K) AbstractC7425d.this.m8431b(this.f30467a);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
            public V getValue() {
                return (V) AbstractC7425d.this.mo8424c(this.f30467a);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
            public V setValue(V v) {
                return (V) AbstractC7425d.this.mo8428a(this.f30467a, v);
            }
        }

        /* renamed from: com.google.common.collect.ArrayTable$d$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$d$b.class */
        public class C7427b extends AbstractC4956a<Map.Entry<K, V>> {
            public C7427b(int i) {
                super(i);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4956a
            /* renamed from: a */
            public Map.Entry<K, V> mo8246a(int i) {
                return AbstractC7425d.this.m8432a(i);
            }
        }

        public AbstractC7425d(ImmutableMap<K, Integer> immutableMap) {
            this.f30466a = immutableMap;
        }

        public /* synthetic */ AbstractC7425d(ImmutableMap immutableMap, C7422a aVar) {
            this(immutableMap);
        }

        /* renamed from: a */
        public abstract V mo8428a(int i, V v);

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<K, V>> mo7961a() {
            return new C7427b(size());
        }

        /* renamed from: a */
        public Map.Entry<K, V> m8432a(int i) {
            C4933n.m24798a(i, size());
            return new C7426a(i);
        }

        /* renamed from: b */
        public K m8431b(int i) {
            return this.f30466a.keySet().asList().get(i);
        }

        /* renamed from: b */
        public abstract String mo8425b();

        /* renamed from: c */
        public abstract V mo8424c(int i);

        @Override // com.google.common.collect.Maps.AbstractC7574l, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f30466a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Integer num = this.f30466a.get(obj);
            if (num == null) {
                return null;
            }
            return mo8424c(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f30466a.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f30466a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Integer num = this.f30466a.get(k);
            if (num != null) {
                return mo8428a(num.intValue(), v);
            }
            throw new IllegalArgumentException(mo8425b() + " " + k + " not in " + this.f30466a.keySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30466a.size();
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$e.class */
    public class C7428e extends AbstractC7425d<R, V> {

        /* renamed from: b */
        public final int f30470b;

        public C7428e(int i) {
            super(ArrayTable.this.rowKeyToIndex, null);
            this.f30470b = i;
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: a */
        public V mo8428a(int i, V v) {
            return (V) ArrayTable.this.set(i, this.f30470b, v);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: b */
        public String mo8425b() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: c */
        public V mo8424c(int i) {
            return (V) ArrayTable.this.m8433at(i, this.f30470b);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$f.class */
    public class C7429f extends AbstractC7425d<C, Map<R, V>> {
        public C7429f() {
            super(ArrayTable.this.columnKeyToIndex, null);
        }

        public /* synthetic */ C7429f(ArrayTable arrayTable, C7422a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8428a(int i, Object obj) {
            m8430a(i, (Map) ((Map) obj));
            throw null;
        }

        /* renamed from: a */
        public Map<R, V> m8430a(int i, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: a */
        public Map<R, V> m8429a(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: b */
        public String mo8425b() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: c */
        public Map<R, V> mo8424c(int i) {
            return new C7428e(i);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            m8429a((C7429f) obj, (Map) ((Map) obj2));
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$g.class */
    public class C7430g extends AbstractC7425d<C, V> {

        /* renamed from: b */
        public final int f30473b;

        public C7430g(int i) {
            super(ArrayTable.this.columnKeyToIndex, null);
            this.f30473b = i;
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: a */
        public V mo8428a(int i, V v) {
            return (V) ArrayTable.this.set(this.f30473b, i, v);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: b */
        public String mo8425b() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: c */
        public V mo8424c(int i) {
            return (V) ArrayTable.this.m8433at(this.f30473b, i);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ArrayTable$h.class */
    public class C7431h extends AbstractC7425d<R, Map<C, V>> {
        public C7431h() {
            super(ArrayTable.this.rowKeyToIndex, null);
        }

        public /* synthetic */ C7431h(ArrayTable arrayTable, C7422a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8428a(int i, Object obj) {
            m8427a(i, (Map) ((Map) obj));
            throw null;
        }

        /* renamed from: a */
        public Map<C, V> m8427a(int i, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: a */
        public Map<C, V> m8426a(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: b */
        public String mo8425b() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d
        /* renamed from: c */
        public Map<C, V> mo8424c(int i) {
            return new C7430g(i);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC7425d, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            m8426a((C7431h) obj, (Map) ((Map) obj2));
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayTable(AbstractC4958a1<R, C, V> a1Var) {
        this(a1Var.rowKeySet(), a1Var.columnKeySet());
        putAll(a1Var);
    }

    public ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.rowList;
        this.rowList = immutableList;
        this.columnList = arrayTable.columnList;
        this.rowKeyToIndex = arrayTable.rowKeyToIndex;
        this.columnKeyToIndex = arrayTable.columnKeyToIndex;
        V[][] vArr = (V[][]) new Object[immutableList.size()][this.columnList.size()];
        this.array = vArr;
        for (int i = 0; i < this.rowList.size(); i++) {
            V[][] vArr2 = arrayTable.array;
            System.arraycopy(vArr2[i], 0, vArr[i], 0, vArr2[i].length);
        }
    }

    public ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        this.rowList = ImmutableList.copyOf(iterable);
        this.columnList = ImmutableList.copyOf(iterable2);
        C4933n.m24791a(this.rowList.isEmpty() == this.columnList.isEmpty());
        this.rowKeyToIndex = Maps.m8147a(this.rowList);
        this.columnKeyToIndex = Maps.m8147a(this.columnList);
        this.array = (V[][]) new Object[this.rowList.size()][this.columnList.size()];
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(AbstractC4958a1<R, C, V> a1Var) {
        return a1Var instanceof ArrayTable ? new ArrayTable<>((ArrayTable) a1Var) : new ArrayTable<>(a1Var);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC4958a1.AbstractC4959a<R, C, V> getCell(int i) {
        return new C7423b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V getValue(int i) {
        return m8433at(i / this.columnList.size(), i % this.columnList.size());
    }

    /* renamed from: at */
    public V m8433at(int i, int i2) {
        C4933n.m24798a(i, this.rowList.size());
        C4933n.m24798a(i2, this.columnList.size());
        return this.array[i][i2];
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public Iterator<AbstractC4958a1.AbstractC4959a<R, C, V>> cellIterator() {
        return new C7422a(size());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, V> column(C c) {
        C4933n.m24795a(c);
        Integer num = this.columnKeyToIndex.get(c);
        return num == null ? ImmutableMap.m8380of() : new C7428e(num.intValue());
    }

    public ImmutableList<C> columnKeyList() {
        return this.columnList;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.C7429f fVar = this.columnMap;
        ArrayTable<R, C, V>.C7429f fVar2 = fVar;
        if (fVar == null) {
            fVar2 = new C7429f(this, null);
            this.columnMap = fVar2;
        }
        return fVar2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsColumn(Object obj) {
        return this.columnKeyToIndex.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsRow(Object obj) {
        return this.rowKeyToIndex.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        V[][] vArr;
        for (V[] vArr2 : this.array) {
            for (V v : vArr2) {
                if (C4928k.m24808a(obj, v)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public V erase(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.array) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        return (num == null || num2 == null) ? null : m8433at(num.intValue(), num2.intValue());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean isEmpty() {
        return this.rowList.isEmpty() || this.columnList.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V put(R r, C c, V v) {
        C4933n.m24795a(r);
        C4933n.m24795a(c);
        Integer num = this.rowKeyToIndex.get(r);
        boolean z = true;
        C4933n.m24781a(num != null, "Row %s not in %s", r, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c);
        if (num2 == null) {
            z = false;
        }
        C4933n.m24781a(z, "Column %s not in %s", c, this.columnList);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
        super.putAll(a1Var);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, V> row(R r) {
        C4933n.m24795a(r);
        Integer num = this.rowKeyToIndex.get(r);
        return num == null ? ImmutableMap.m8380of() : new C7430g(num.intValue());
    }

    public ImmutableList<R> rowKeyList() {
        return this.rowList;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.C7431h hVar = this.rowMap;
        ArrayTable<R, C, V>.C7431h hVar2 = hVar;
        if (hVar == null) {
            hVar2 = new C7431h(this, null);
            this.rowMap = hVar2;
        }
        return hVar2;
    }

    public V set(int i, int i2, V v) {
        C4933n.m24798a(i, this.rowList.size());
        C4933n.m24798a(i2, this.columnList.size());
        V[][] vArr = this.array;
        V v2 = vArr[i][i2];
        vArr[i][i2] = v;
        return v2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i = 0; i < this.rowList.size(); i++) {
            V[][] vArr2 = this.array;
            System.arraycopy(vArr2[i], 0, vArr[i], 0, vArr2[i].length);
        }
        return vArr;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Collection<V> values() {
        return super.values();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public Iterator<V> valuesIterator() {
        return new C7424c(size());
    }
}
