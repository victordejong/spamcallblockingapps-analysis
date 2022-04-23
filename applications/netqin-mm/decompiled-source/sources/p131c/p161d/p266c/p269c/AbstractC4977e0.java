package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
/* renamed from: c.d.c.c.e0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/e0.class */
public abstract class AbstractC4977e0<R, C, V> extends AbstractC5040z implements AbstractC4958a1<R, C, V> {
    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
        return delegate().cellSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract void clear();

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, V> column(C c) {
        return delegate().column(c);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<C> columnKeySet() {
        return delegate().columnKeySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, Map<R, V>> columnMap() {
        return delegate().columnMap();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        return delegate().contains(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsColumn(Object obj) {
        return delegate().containsColumn(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsRow(Object obj) {
        return delegate().containsRow(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract AbstractC4958a1<R, C, V> delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        return delegate().get(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract V put(R r, C c, V v);

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var);

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public abstract V remove(Object obj, Object obj2);

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, V> row(R r) {
        return delegate().row(r);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<R> rowKeySet() {
        return delegate().rowKeySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, Map<C, V>> rowMap() {
        return delegate().rowMap();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int size() {
        return delegate().size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Collection<V> values() {
        return delegate().values();
    }
}
