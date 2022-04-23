package io.realm;

import com.google.android.gms.common.api.Api;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.core.QueryDescriptor;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl.class */
public abstract class OrderedRealmCollectionImpl<E> extends AbstractList<E> implements OrderedRealmCollection<E> {

    /* renamed from: f */
    final BaseRealm f19837f;
    @Nullable

    /* renamed from: g */
    final Class<E> f19838g;
    @Nullable

    /* renamed from: h */
    final String f19839h;

    /* renamed from: i */
    final OsResults f19840i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl$RealmCollectionIterator.class */
    public class RealmCollectionIterator extends OsResults.Iterator<E> {
        RealmCollectionIterator() {
            super(OrderedRealmCollectionImpl.this.f19840i);
        }

        @Override // io.realm.internal.OsResults.Iterator
        /* renamed from: b */
        protected E mo2706b(UncheckedRow uncheckedRow) {
            OrderedRealmCollectionImpl orderedRealmCollectionImpl = OrderedRealmCollectionImpl.this;
            return (E) orderedRealmCollectionImpl.f19837f.m3165I(orderedRealmCollectionImpl.f19838g, orderedRealmCollectionImpl.f19839h, uncheckedRow);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator.class */
    private class RealmCollectionListIterator extends OsResults.ListIterator<E> {
        RealmCollectionListIterator(int i) {
            super(OrderedRealmCollectionImpl.this.f19840i, i);
        }

        @Override // io.realm.internal.OsResults.Iterator
        /* renamed from: b */
        protected E mo2706b(UncheckedRow uncheckedRow) {
            OrderedRealmCollectionImpl orderedRealmCollectionImpl = OrderedRealmCollectionImpl.this;
            return (E) orderedRealmCollectionImpl.f19837f.m3165I(orderedRealmCollectionImpl.f19838g, orderedRealmCollectionImpl.f19839h, uncheckedRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        this(baseRealm, osResults, cls, null);
    }

    private OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, @Nullable Class<E> cls, @Nullable String str) {
        this.f19837f = baseRealm;
        this.f19840i = osResults;
        this.f19838g = cls;
        this.f19839h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, String str) {
        this(baseRealm, osResults, null, str);
    }

    @Nullable
    /* renamed from: g */
    private E m3096g(boolean z, @Nullable E e) {
        UncheckedRow j = this.f19840i.m2722j();
        if (j != null) {
            return (E) this.f19837f.m3165I(this.f19838g, this.f19839h, j);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("No results were found.");
    }

    /* renamed from: j */
    private SchemaConnector m3094j() {
        return new SchemaConnector(this.f19837f.mo3059L());
    }

    @Nullable
    /* renamed from: p */
    private E m3091p(boolean z, @Nullable E e) {
        UncheckedRow q = this.f19840i.m2715q();
        if (q != null) {
            return (E) this.f19837f.m3165I(this.f19838g, this.f19839h, q);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("No results were found.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public void add(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean add(E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    /* renamed from: c */
    RealmResults<E> m3100c(OsResults osResults) {
        String str = this.f19839h;
        RealmResults<E> realmResults = str != null ? new RealmResults<>(this.f19837f, osResults, str) : new RealmResults<>(this.f19837f, osResults, this.f19838g);
        realmResults.m2871A();
        return realmResults;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@Nullable Object obj) {
        if (!isLoaded()) {
            return false;
        }
        if ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().m3084e() == InvalidRow.INSTANCE) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (it.next().equals(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public boolean m3099d() {
        this.f19837f.m3151h();
        if (size() <= 0) {
            return false;
        }
        this.f19840i.m2727e();
        return true;
    }

    @Nullable
    /* renamed from: e */
    public E m3098e() {
        return m3096g(true, null);
    }

    @Nullable
    /* renamed from: f */
    public E m3097f(@Nullable E e) {
        return m3096g(false, e);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int i) {
        this.f19837f.m3151h();
        return (E) this.f19837f.m3165I(this.f19838g, this.f19839h, this.f19840i.m2718n(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public OsResults m3095h() {
        return this.f19840i;
    }

    @Override // io.realm.RealmCollection
    public boolean isValid() {
        return this.f19840i.m2716p();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new RealmCollectionIterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Table m3093k() {
        return this.f19840i.m2719m();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new RealmCollectionListIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        return new RealmCollectionListIterator(i);
    }

    @Nullable
    /* renamed from: n */
    public E m3092n() {
        return m3091p(true, null);
    }

    /* renamed from: r */
    public RealmResults<E> m3090r(String str) {
        return m3100c(this.f19840i.m2709w(QueryDescriptor.getInstanceForSort(m3094j(), this.f19840i.m2719m(), str, Sort.ASCENDING)));
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E remove(int i) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    /* renamed from: s */
    public RealmResults<E> m3089s(String str, Sort sort) {
        return m3100c(this.f19840i.m2709w(QueryDescriptor.getInstanceForSort(m3094j(), this.f19840i.m2719m(), str, sort)));
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E set(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (!isLoaded()) {
            return 0;
        }
        long v = this.f19840i.m2710v();
        return v > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) v;
    }

    /* renamed from: t */
    public RealmResults<E> m3088t(String[] strArr, Sort[] sortArr) {
        return m3100c(this.f19840i.m2709w(QueryDescriptor.getInstanceForSort(m3094j(), this.f19840i.m2719m(), strArr, sortArr)));
    }
}
