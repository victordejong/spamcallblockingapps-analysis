package p131c.p161d.p266c.p269c;

import com.google.common.collect.Maps;
import com.google.common.collect.Tables;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
/* renamed from: c.d.c.c.i */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/i.class */
public abstract class AbstractC4991i<R, C, V> implements AbstractC4958a1<R, C, V> {
    public transient Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet;
    public transient Collection<V> values;

    /* renamed from: c.d.c.c.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/i$a.class */
    public class C4992a extends AbstractC4968c1<AbstractC4958a1.AbstractC4959a<R, C, V>, V> {
        public C4992a(AbstractC4991i iVar, Iterator it) {
            super(it);
        }

        /* renamed from: a */
        public V m24711a(AbstractC4958a1.AbstractC4959a<R, C, V> aVar) {
            return aVar.getValue();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
            return m24711a((AbstractC4958a1.AbstractC4959a<R, C, Object>) obj);
        }
    }

    /* renamed from: c.d.c.c.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/i$b.class */
    public class C4993b extends AbstractSet<AbstractC4958a1.AbstractC4959a<R, C, V>> {
        public C4993b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractC4991i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4958a1.AbstractC4959a) {
                AbstractC4958a1.AbstractC4959a aVar = (AbstractC4958a1.AbstractC4959a) obj;
                Map map = (Map) Maps.m8116e(AbstractC4991i.this.rowMap(), aVar.getRowKey());
                z = false;
                if (map != null) {
                    z = false;
                    if (C5008o.m24655a(map.entrySet(), Maps.m8148a(aVar.getColumnKey(), aVar.getValue()))) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<AbstractC4958a1.AbstractC4959a<R, C, V>> iterator() {
            return AbstractC4991i.this.cellIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4958a1.AbstractC4959a) {
                AbstractC4958a1.AbstractC4959a aVar = (AbstractC4958a1.AbstractC4959a) obj;
                Map map = (Map) Maps.m8116e(AbstractC4991i.this.rowMap(), aVar.getRowKey());
                z = false;
                if (map != null) {
                    z = false;
                    if (C5008o.m24653b(map.entrySet(), Maps.m8148a(aVar.getColumnKey(), aVar.getValue()))) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractC4991i.this.size();
        }
    }

    /* renamed from: c.d.c.c.i$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/i$c.class */
    public class C4994c extends AbstractCollection<V> {
        public C4994c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractC4991i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC4991i.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractC4991i.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractC4991i.this.size();
        }
    }

    public abstract Iterator<AbstractC4958a1.AbstractC4959a<R, C, V>> cellIterator();

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
        Set<AbstractC4958a1.AbstractC4959a<R, C, V>> set = this.cellSet;
        Set<AbstractC4958a1.AbstractC4959a<R, C, V>> set2 = set;
        if (set == null) {
            set2 = createCellSet();
            this.cellSet = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract void clear();

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract Set<C> columnKeySet();

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        Map map = (Map) Maps.m8116e(rowMap(), obj);
        return map != null && Maps.m8119d(map, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsColumn(Object obj) {
        return Maps.m8119d(columnMap(), obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsRow(Object obj) {
        return Maps.m8119d(rowMap(), obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        for (Map<C, V> map : rowMap().values()) {
            if (map.containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> createCellSet() {
        return new C4993b();
    }

    public Collection<V> createValues() {
        return new C4994c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean equals(Object obj) {
        return Tables.m8023a(this, obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        Map map = (Map) Maps.m8116e(rowMap(), obj);
        return map == null ? null : (V) Maps.m8116e(map, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int hashCode() {
        return cellSet().hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract V put(R r, C c, V v);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
        for (AbstractC4958a1.AbstractC4959a<? extends R, ? extends C, ? extends V> aVar : a1Var.cellSet()) {
            put(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract V remove(Object obj, Object obj2);

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract Set<R> rowKeySet();

    public String toString() {
        return rowMap().toString();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Collection<V> values() {
        Collection<V> collection = this.values;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = createValues();
            this.values = collection2;
        }
        return collection2;
    }

    public Iterator<V> valuesIterator() {
        return new C4992a(this, cellSet().iterator());
    }
}
