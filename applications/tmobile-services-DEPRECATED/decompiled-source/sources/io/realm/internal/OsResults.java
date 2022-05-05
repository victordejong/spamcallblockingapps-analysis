package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.RealmModel;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.core.QueryDescriptor;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults.class */
public class OsResults implements NativeObject, ObservableCollection {

    /* renamed from: m */
    private static final long f20145m = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final long f20146f;

    /* renamed from: g */
    private final OsSharedRealm f20147g;

    /* renamed from: h */
    private final NativeContext f20148h;

    /* renamed from: i */
    private final Table f20149i;

    /* renamed from: j */
    protected boolean f20150j;

    /* renamed from: k */
    private boolean f20151k = false;

    /* renamed from: l */
    protected final ObserverPairList<ObservableCollection.CollectionObserverPair> f20152l = new ObserverPairList<>();

    /* renamed from: io.realm.internal.OsResults$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$1.class */
    class C21731 implements AddListTypeDelegate<String> {
    }

    /* renamed from: io.realm.internal.OsResults$10 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$10.class */
    class C217410 implements AddListTypeDelegate<Double> {
    }

    /* renamed from: io.realm.internal.OsResults$11 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$11.class */
    class C217511 implements AddListTypeDelegate<RealmModel> {
    }

    /* renamed from: io.realm.internal.OsResults$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$2.class */
    class C21762 implements AddListTypeDelegate<Byte> {
    }

    /* renamed from: io.realm.internal.OsResults$3 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$3.class */
    class C21773 implements AddListTypeDelegate<Short> {
    }

    /* renamed from: io.realm.internal.OsResults$4 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$4.class */
    class C21784 implements AddListTypeDelegate<Integer> {
    }

    /* renamed from: io.realm.internal.OsResults$5 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$5.class */
    class C21795 implements AddListTypeDelegate<Long> {
    }

    /* renamed from: io.realm.internal.OsResults$6 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$6.class */
    class C21806 implements AddListTypeDelegate<Boolean> {
    }

    /* renamed from: io.realm.internal.OsResults$7 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$7.class */
    class C21817 implements AddListTypeDelegate<byte[]> {
    }

    /* renamed from: io.realm.internal.OsResults$8 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$8.class */
    class C21828 implements AddListTypeDelegate<Date> {
    }

    /* renamed from: io.realm.internal.OsResults$9 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$9.class */
    class C21839 implements AddListTypeDelegate<Float> {
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$AddListTypeDelegate.class */
    private interface AddListTypeDelegate<T> {
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Aggregate.class */
    public enum Aggregate {
        MINIMUM((byte) 1),
        MAXIMUM((byte) 2),
        AVERAGE((byte) 3),
        SUM((byte) 4);
        
        private final byte value;

        Aggregate(byte b) {
            this.value = b;
        }

        public byte getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Iterator.class */
    public static abstract class Iterator<T> implements java.util.Iterator<T> {

        /* renamed from: f */
        OsResults f20153f;

        /* renamed from: g */
        protected int f20154g = -1;

        public Iterator(OsResults osResults) {
            if (!osResults.f20147g.isClosed()) {
                this.f20153f = osResults;
                if (!osResults.f20151k) {
                    if (osResults.f20147g.isInTransaction()) {
                        m2705c();
                    } else {
                        this.f20153f.f20147g.addIterator(this);
                    }
                }
            } else {
                throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
            }
        }

        /* renamed from: a */
        void m2707a() {
            if (this.f20153f == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        /* renamed from: b */
        protected abstract T mo2706b(UncheckedRow uncheckedRow);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public void m2705c() {
            this.f20153f = this.f20153f.m2723i();
        }

        @Nullable
        /* renamed from: d */
        T m2704d(int i) {
            return mo2706b(this.f20153f.m2718n(i));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: e */
        public void m2703e() {
            this.f20153f = null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m2707a();
            boolean z = true;
            if (this.f20154g + 1 >= this.f20153f.m2710v()) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        @Nullable
        public T next() {
            m2707a();
            int i = this.f20154g + 1;
            this.f20154g = i;
            if (i < this.f20153f.m2710v()) {
                return m2704d(this.f20154g);
            }
            throw new NoSuchElementException("Cannot access index " + this.f20154g + " when size is " + this.f20153f.m2710v() + ". Remember to check hasNext() before using next().");
        }

        @Override // java.util.Iterator
        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$ListIterator.class */
    public static abstract class ListIterator<T> extends Iterator<T> implements java.util.ListIterator<T> {
        public ListIterator(OsResults osResults, int i) {
            super(osResults);
            if (i < 0 || i > this.f20153f.m2710v()) {
                throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.f20153f.m2710v() - 1) + "]. Yours was " + i);
            }
            this.f20154g = i - 1;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(@Nullable T t) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            m2707a();
            return this.f20154g >= 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            m2707a();
            return this.f20154g + 1;
        }

        @Override // java.util.ListIterator
        @Nullable
        public T previous() {
            m2707a();
            try {
                T d = m2704d(this.f20154g);
                this.f20154g--;
                return d;
            } catch (IndexOutOfBoundsException e) {
                throw new NoSuchElementException("Cannot access index less than zero. This was " + this.f20154g + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            m2707a();
            return this.f20154g;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(@Nullable T t) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Mode.class */
    public enum Mode {
        EMPTY,
        TABLE,
        PRIMITIVE_LIST,
        QUERY,
        LINK_LIST,
        TABLEVIEW;

        static Mode getByValue(byte b) {
            if (b == 0) {
                return EMPTY;
            }
            if (b == 1) {
                return TABLE;
            }
            if (b == 2) {
                return PRIMITIVE_LIST;
            }
            if (b == 3) {
                return QUERY;
            }
            if (b == 4) {
                return LINK_LIST;
            }
            if (b == 5) {
                return TABLEVIEW;
            }
            throw new IllegalArgumentException("Invalid value: " + ((int) b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OsResults(OsSharedRealm osSharedRealm, Table table, long j) {
        boolean z = false;
        this.f20147g = osSharedRealm;
        NativeContext nativeContext = osSharedRealm.context;
        this.f20148h = nativeContext;
        this.f20149i = table;
        this.f20146f = j;
        nativeContext.m2829a(this);
        this.f20150j = m2720l() != Mode.QUERY ? true : z;
    }

    /* renamed from: f */
    public static OsResults m2726f(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow, Table table, String str) {
        return new OsResults(osSharedRealm, table, nativeCreateResultsFromBacklinks(osSharedRealm.getNativePtr(), uncheckedRow.getNativePtr(), table.getNativePtr(), table.m2638o(str)));
    }

    /* renamed from: g */
    public static OsResults m2725g(OsSharedRealm osSharedRealm, TableQuery tableQuery) {
        return m2724h(osSharedRealm, tableQuery, new DescriptorOrdering());
    }

    /* renamed from: h */
    public static OsResults m2724h(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering) {
        tableQuery.m2603x();
        return new OsResults(osSharedRealm, tableQuery.m2615l(), nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), descriptorOrdering.getNativePtr()));
    }

    private static native void nativeClear(long j);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native long nativeCreateResults(long j, long j2, long j3);

    private static native long nativeCreateResultsFromBacklinks(long j, long j2, long j3, long j4);

    private static native long nativeCreateSnapshot(long j);

    private static native void nativeEvaluateQueryIfNeeded(long j, boolean z);

    private static native long nativeFirstRow(long j);

    private static native long nativeFreeze(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j);

    private static native long nativeGetRow(long j, int i);

    private static native boolean nativeIsValid(long j);

    private static native long nativeLastRow(long j);

    private static native long nativeSize(long j);

    private static native long nativeSort(long j, QueryDescriptor queryDescriptor);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static native long nativeWhere(long j);

    /* renamed from: c */
    public <T> void m2729c(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        if (this.f20152l.m2804d()) {
            nativeStartListening(this.f20146f);
        }
        this.f20152l.m2807a(new ObservableCollection.CollectionObserverPair(t, orderedRealmCollectionChangeListener));
    }

    /* renamed from: d */
    public <T> void m2728d(T t, RealmChangeListener<T> realmChangeListener) {
        m2729c(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    /* renamed from: e */
    public void m2727e() {
        nativeClear(this.f20146f);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20145m;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20146f;
    }

    /* renamed from: i */
    public OsResults m2723i() {
        if (this.f20151k) {
            return this;
        }
        OsResults osResults = new OsResults(this.f20147g, this.f20149i, nativeCreateSnapshot(this.f20146f));
        osResults.f20151k = true;
        return osResults;
    }

    /* renamed from: j */
    public UncheckedRow m2722j() {
        long nativeFirstRow = nativeFirstRow(this.f20146f);
        if (nativeFirstRow != 0) {
            return this.f20149i.m2629x(nativeFirstRow);
        }
        return null;
    }

    /* renamed from: k */
    public OsResults m2721k(OsSharedRealm osSharedRealm) {
        OsResults osResults = new OsResults(osSharedRealm, this.f20149i.m2643j(osSharedRealm), nativeFreeze(this.f20146f, osSharedRealm.getNativePtr()));
        if (m2717o()) {
            osResults.m2714r();
        }
        return osResults;
    }

    /* renamed from: l */
    public Mode m2720l() {
        return Mode.getByValue(nativeGetMode(this.f20146f));
    }

    /* renamed from: m */
    public Table m2719m() {
        return this.f20149i;
    }

    /* renamed from: n */
    public UncheckedRow m2718n(int i) {
        return this.f20149i.m2629x(nativeGetRow(this.f20146f, i));
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        OsCollectionChangeSet emptyLoadChangeSet = j == 0 ? new EmptyLoadChangeSet(null, this.f20147g.isPartial()) : new OsCollectionChangeSet(j, !m2717o(), null, this.f20147g.isPartial());
        if (!emptyLoadChangeSet.mo2799e() || !m2717o()) {
            this.f20150j = true;
            this.f20152l.m2805c(new ObservableCollection.Callback(emptyLoadChangeSet));
        }
    }

    /* renamed from: o */
    public boolean m2717o() {
        return this.f20150j;
    }

    /* renamed from: p */
    public boolean m2716p() {
        return nativeIsValid(this.f20146f);
    }

    /* renamed from: q */
    public UncheckedRow m2715q() {
        long nativeLastRow = nativeLastRow(this.f20146f);
        if (nativeLastRow != 0) {
            return this.f20149i.m2629x(nativeLastRow);
        }
        return null;
    }

    /* renamed from: r */
    public void m2714r() {
        if (!this.f20150j) {
            nativeEvaluateQueryIfNeeded(this.f20146f, false);
            notifyChangeListeners(0L);
        }
    }

    /* renamed from: s */
    public void m2713s() {
        this.f20152l.m2806b();
        nativeStopListening(this.f20146f);
    }

    /* renamed from: t */
    public <T> void m2712t(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        this.f20152l.m2803e(t, orderedRealmCollectionChangeListener);
        if (this.f20152l.m2804d()) {
            nativeStopListening(this.f20146f);
        }
    }

    /* renamed from: u */
    public <T> void m2711u(T t, RealmChangeListener<T> realmChangeListener) {
        m2712t(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    /* renamed from: v */
    public long m2710v() {
        return nativeSize(this.f20146f);
    }

    /* renamed from: w */
    public OsResults m2709w(QueryDescriptor queryDescriptor) {
        return new OsResults(this.f20147g, this.f20149i, nativeSort(this.f20146f, queryDescriptor));
    }

    /* renamed from: x */
    public TableQuery m2708x() {
        return new TableQuery(this.f20148h, this.f20149i, nativeWhere(this.f20146f));
    }
}
