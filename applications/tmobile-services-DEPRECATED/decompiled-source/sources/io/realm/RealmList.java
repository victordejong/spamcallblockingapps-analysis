package io.realm;

import io.realm.internal.InvalidRow;
import io.realm.internal.OsList;
import io.realm.internal.RealmObjectProxy;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmList.class */
public class RealmList<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    @Nullable

    /* renamed from: f */
    protected Class<E> f19933f;
    @Nullable

    /* renamed from: g */
    protected String f19934g;

    /* renamed from: h */
    private final ManagedListOperator<E> f19935h;

    /* renamed from: i */
    protected final BaseRealm f19936i;

    /* renamed from: j */
    private List<E> f19937j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmList$RealmItr.class */
    public class RealmItr implements Iterator<E> {

        /* renamed from: f */
        int f19938f;

        /* renamed from: g */
        int f19939g;

        /* renamed from: h */
        int f19940h;

        private RealmItr() {
            this.f19938f = 0;
            this.f19939g = -1;
            this.f19940h = ((AbstractList) RealmList.this).modCount;
        }

        /* renamed from: a */
        final void m2944a() {
            if (((AbstractList) RealmList.this).modCount != this.f19940h) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            RealmList.this.m2954p();
            m2944a();
            return this.f19938f != RealmList.this.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public E next() {
            RealmList.this.m2954p();
            m2944a();
            int i = this.f19938f;
            try {
                E e = (E) RealmList.this.get(i);
                this.f19939g = i;
                this.f19938f = i + 1;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                m2944a();
                throw new NoSuchElementException("Cannot access index " + i + " when size is " + RealmList.this.size() + ". Remember to check hasNext() before using next().");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            RealmList.this.m2954p();
            if (this.f19939g >= 0) {
                m2944a();
                try {
                    RealmList.this.remove(this.f19939g);
                    if (this.f19939g < this.f19938f) {
                        this.f19938f--;
                    }
                    this.f19939g = -1;
                    this.f19940h = ((AbstractList) RealmList.this).modCount;
                } catch (IndexOutOfBoundsException e) {
                    throw new ConcurrentModificationException();
                }
            } else {
                throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmList$RealmListItr.class */
    public class RealmListItr extends RealmList<E>.RealmItr implements ListIterator<E> {
        RealmListItr(int i) {
            super();
            if (i < 0 || i > RealmList.this.size()) {
                throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (RealmList.this.size() - 1) + "]. Index was " + i);
            }
            this.f19938f = i;
        }

        @Override // java.util.ListIterator
        public void add(@Nullable E e) {
            RealmList.this.f19936i.m3151h();
            m2944a();
            try {
                int i = this.f19938f;
                RealmList.this.add(i, e);
                this.f19939g = -1;
                this.f19938f = i + 1;
                this.f19940h = ((AbstractList) RealmList.this).modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f19938f != 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f19938f;
        }

        @Override // java.util.ListIterator
        @Nullable
        public E previous() {
            m2944a();
            int i = this.f19938f - 1;
            try {
                E e = (E) RealmList.this.get(i);
                this.f19938f = i;
                this.f19939g = i;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                m2944a();
                throw new NoSuchElementException("Cannot access index less than zero. This was " + i + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f19938f - 1;
        }

        @Override // java.util.ListIterator
        public void set(@Nullable E e) {
            RealmList.this.f19936i.m3151h();
            if (this.f19939g >= 0) {
                m2944a();
                try {
                    RealmList.this.set(this.f19939g, e);
                    this.f19940h = ((AbstractList) RealmList.this).modCount;
                } catch (IndexOutOfBoundsException e2) {
                    throw new ConcurrentModificationException();
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    public RealmList() {
        this.f19936i = null;
        this.f19935h = null;
        this.f19937j = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmList(Class<E> cls, OsList osList, BaseRealm baseRealm) {
        this.f19933f = cls;
        this.f19935h = m2950u(baseRealm, osList, cls, null);
        this.f19936i = baseRealm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmList(String str, OsList osList, BaseRealm baseRealm) {
        this.f19936i = baseRealm;
        this.f19934g = str;
        this.f19935h = m2950u(baseRealm, osList, null, str);
    }

    /* renamed from: n */
    private void m2955n(@Nullable Object obj, boolean z) {
        if (!z || obj != null) {
            this.f19936i.m3151h();
            this.f19936i.f19809j.capabilities.mo2593b("Listeners cannot be used on current thread.");
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m2954p() {
        this.f19936i.m3151h();
    }

    @Nullable
    /* renamed from: s */
    private E m2952s(boolean z, @Nullable E e) {
        if (m2946y()) {
            m2954p();
            if (!this.f19935h.m3118k()) {
                return get(0);
            }
        } else {
            List<E> list = this.f19937j;
            if (list != null && !list.isEmpty()) {
                return this.f19937j.get(0);
            }
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("The list is empty.");
    }

    /* renamed from: u */
    private ManagedListOperator<E> m2950u(BaseRealm baseRealm, OsList osList, @Nullable Class<E> cls, @Nullable String str) {
        if (cls == null || m2947x(cls)) {
            return new RealmModelListOperator(baseRealm, osList, cls, str);
        }
        if (cls == String.class) {
            return new StringListOperator(baseRealm, osList, cls);
        }
        if (cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class) {
            return new LongListOperator(baseRealm, osList, cls);
        }
        if (cls == Boolean.class) {
            return new BooleanListOperator(baseRealm, osList, cls);
        }
        if (cls == byte[].class) {
            return new BinaryListOperator(baseRealm, osList, cls);
        }
        if (cls == Double.class) {
            return new DoubleListOperator(baseRealm, osList, cls);
        }
        if (cls == Float.class) {
            return new FloatListOperator(baseRealm, osList, cls);
        }
        if (cls == Date.class) {
            return new DateListOperator(baseRealm, osList, cls);
        }
        throw new IllegalArgumentException("Unexpected value class: " + cls.getName());
    }

    /* renamed from: w */
    private boolean m2948w() {
        ManagedListOperator<E> managedListOperator = this.f19935h;
        return managedListOperator != null && managedListOperator.m3117l();
    }

    /* renamed from: x */
    private static boolean m2947x(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    /* renamed from: A */
    public void m2965A(RealmChangeListener<RealmList<E>> realmChangeListener) {
        m2955n(realmChangeListener, true);
        this.f19935h.m3120g().m2791E(this, realmChangeListener);
    }

    /* renamed from: B */
    public RealmQuery<E> m2964B() {
        if (m2946y()) {
            m2954p();
            if (this.f19935h.mo2843e()) {
                return RealmQuery.m2893i(this);
            }
            throw new UnsupportedOperationException("This feature is available only when the element type is implementing RealmModel.");
        }
        throw new UnsupportedOperationException("This method is only available in managed mode.");
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, @Nullable E e) {
        if (m2946y()) {
            m2954p();
            this.f19935h.m3119h(i, e);
        } else {
            this.f19937j.add(i, e);
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(@Nullable E e) {
        if (m2946y()) {
            m2954p();
            this.f19935h.m3122a(e);
        } else {
            this.f19937j.add(e);
        }
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (m2946y()) {
            m2954p();
            this.f19935h.m3115n();
        } else {
            this.f19937j.clear();
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@Nullable Object obj) {
        if (!m2946y()) {
            return this.f19937j.contains(obj);
        }
        this.f19936i.m3151h();
        if (!(obj instanceof RealmObjectProxy) || ((RealmObjectProxy) obj).realmGet$proxyState().m3084e() != InvalidRow.INSTANCE) {
            return super.contains(obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int i) {
        if (!m2946y()) {
            return this.f19937j.get(i);
        }
        m2954p();
        return this.f19935h.mo2842f(i);
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.RealmCollection
    public boolean isValid() {
        BaseRealm baseRealm = this.f19936i;
        if (baseRealm == null) {
            return true;
        }
        if (baseRealm.isClosed()) {
            return false;
        }
        return m2948w();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @Nonnull
    public Iterator<E> iterator() {
        return m2946y() ? new RealmItr() : super.iterator();
    }

    /* renamed from: j */
    public void m2957j(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        m2955n(orderedRealmCollectionChangeListener, true);
        this.f19935h.m3120g().m2775f(this, orderedRealmCollectionChangeListener);
    }

    /* renamed from: k */
    public void m2956k(RealmChangeListener<RealmList<E>> realmChangeListener) {
        m2955n(realmChangeListener, true);
        this.f19935h.m3120g().m2774g(this, realmChangeListener);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<E> listIterator(int i) {
        return m2946y() ? new RealmListItr(i) : super.listIterator(i);
    }

    @Nullable
    /* renamed from: r */
    public E m2953r() {
        return m2952s(true, null);
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        E e;
        if (m2946y()) {
            m2954p();
            e = get(i);
            this.f19935h.m3116m(i);
        } else {
            e = this.f19937j.remove(i);
        }
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(@Nullable Object obj) {
        if (!m2946y() || this.f19936i.m3159X()) {
            return super.remove(obj);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        if (!m2946y() || this.f19936i.m3159X()) {
            return super.removeAll(collection);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, @Nullable E e) {
        E e2;
        if (m2946y()) {
            m2954p();
            e2 = this.f19935h.m3114o(i, e);
        } else {
            e2 = this.f19937j.set(i, e);
        }
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (!m2946y()) {
            return this.f19937j.size();
        }
        m2954p();
        return this.f19935h.m3113r();
    }

    /* renamed from: t */
    public RealmList<E> m2951t() {
        if (!m2946y()) {
            throw new UnsupportedOperationException("This method is only available in managed mode.");
        } else if (isValid()) {
            BaseRealm t = this.f19936i.mo3047t();
            OsList l = m2949v().m2769l(t.f19809j);
            String str = this.f19934g;
            return str != null ? new RealmList<>(str, l, t) : new RealmList<>(this.f19933f, l, t);
        } else {
            throw new IllegalStateException("Only valid, managed RealmLists can be frozen.");
        }
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!m2946y()) {
            sb.append("RealmList<?>@[");
            int size = size();
            for (int i = 0; i < size; i++) {
                E e = get(i);
                if (e instanceof RealmModel) {
                    sb.append(System.identityHashCode(e));
                } else if (e instanceof byte[]) {
                    sb.append("byte[");
                    sb.append(((byte[]) e).length);
                    sb.append("]");
                } else {
                    sb.append(e);
                }
                sb.append(",");
            }
            if (size() > 0) {
                sb.setLength(sb.length() - 1);
            }
            sb.append("]");
        } else {
            sb.append("RealmList<");
            String str = this.f19934g;
            if (str != null) {
                sb.append(str);
            } else if (m2947x(this.f19933f)) {
                sb.append(this.f19936i.mo3059L().m2852i(this.f19933f).m2934e());
            } else {
                Class<E> cls = this.f19933f;
                if (cls == byte[].class) {
                    sb.append(cls.getSimpleName());
                } else {
                    sb.append(cls.getName());
                }
            }
            sb.append(">@[");
            if (!m2948w()) {
                sb.append("invalid");
            } else if (m2947x(this.f19933f)) {
                for (int i2 = 0; i2 < size(); i2++) {
                    sb.append(((RealmObjectProxy) get(i2)).realmGet$proxyState().m3084e().getObjectKey());
                    sb.append(",");
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - 1);
                }
            } else {
                for (int i3 = 0; i3 < size(); i3++) {
                    E e2 = get(i3);
                    if (e2 instanceof byte[]) {
                        sb.append("byte[");
                        sb.append(((byte[]) e2).length);
                        sb.append("]");
                    } else {
                        sb.append(e2);
                    }
                    sb.append(",");
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - 1);
                }
            }
            sb.append("]");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public OsList m2949v() {
        return this.f19935h.m3120g();
    }

    /* renamed from: y */
    public boolean m2946y() {
        return this.f19936i != null;
    }

    /* renamed from: z */
    public void m2945z(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        m2955n(orderedRealmCollectionChangeListener, true);
        this.f19935h.m3120g().m2792D(this, orderedRealmCollectionChangeListener);
    }
}
