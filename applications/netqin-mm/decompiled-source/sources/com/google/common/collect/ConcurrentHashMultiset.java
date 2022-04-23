package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4961b0;
import p131c.p161d.p266c.p269c.AbstractC4969d;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5028u;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5008o;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset.class */
public final class ConcurrentHashMultiset<E> extends AbstractC4969d<E> implements Serializable {
    public static final long serialVersionUID = 1;
    public final transient ConcurrentMap<E, AtomicInteger> countMap;

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset$a.class */
    public class C7441a extends AbstractC4961b0<E> {

        /* renamed from: a */
        public final /* synthetic */ Set f30493a;

        public C7441a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.f30493a = set;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean contains(Object obj) {
            return obj != null && C5008o.m24655a(this.f30493a, obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<E> delegate() {
            return this.f30493a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean remove(Object obj) {
            return obj != null && C5008o.m24653b(this.f30493a, obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset$b.class */
    public class C7442b extends AbstractIterator<AbstractC4997j0.AbstractC4998a<E>> {

        /* renamed from: c */
        public final Iterator<Map.Entry<E, AtomicInteger>> f30494c;

        public C7442b() {
            this.f30494c = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
        }

        @Override // com.google.common.collect.AbstractIterator
        /* renamed from: a */
        public AbstractC4997j0.AbstractC4998a<E> mo7953a() {
            while (this.f30494c.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f30494c.next();
                int i = next.getValue().get();
                if (i != 0) {
                    return Multisets.m8083a(next.getKey(), i);
                }
            }
            return m8454b();
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset$c.class */
    public class C7443c extends AbstractC5028u<AbstractC4997j0.AbstractC4998a<E>> {

        /* renamed from: a */
        public AbstractC4997j0.AbstractC4998a<E> f30496a;

        /* renamed from: b */
        public final /* synthetic */ Iterator f30497b;

        public C7443c(Iterator it) {
            this.f30497b = it;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5028u, p131c.p161d.p266c.p269c.AbstractC5040z
        public Iterator<AbstractC4997j0.AbstractC4998a<E>> delegate() {
            return this.f30497b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5028u, java.util.Iterator
        public AbstractC4997j0.AbstractC4998a<E> next() {
            AbstractC4997j0.AbstractC4998a<E> aVar = (AbstractC4997j0.AbstractC4998a) super.next();
            this.f30496a = aVar;
            return aVar;
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30496a != null);
            ConcurrentHashMultiset.this.setCount(this.f30496a.getElement(), 0);
            this.f30496a = null;
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset$d.class */
    public class C7444d extends AbstractC4969d<E>.C4971b {
        public C7444d() {
            super();
        }

        public /* synthetic */ C7444d(ConcurrentHashMultiset concurrentHashMultiset, C7441a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d.C4971b, com.google.common.collect.Multisets.AbstractC7598d
        /* renamed from: a */
        public ConcurrentHashMultiset<E> mo8074a() {
            return ConcurrentHashMultiset.this;
        }

        /* renamed from: b */
        public final List<AbstractC4997j0.AbstractC4998a<E>> m8419b() {
            ArrayList c = Lists.m8222c(size());
            Iterators.m8267a(c, iterator());
            return c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return m8419b().toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m8419b().toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ConcurrentHashMultiset$e.class */
    public static class C7445e {

        /* renamed from: a */
        public static final C5023s0.C5025b<ConcurrentHashMultiset> f30500a = C5023s0.m24620a(ConcurrentHashMultiset.class, "countMap");
    }

    public ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        C4933n.m24782a(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.countMap = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> create = create();
        C4983g0.m24718a((Collection) create, (Iterable) iterable);
        return create;
    }

    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        C7445e.f30500a.m24615a((C5023s0.C5025b<ConcurrentHashMultiset>) this, (Object) ((ConcurrentMap) objectInputStream.readObject()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> snapshot() {
        ArrayList c = Lists.m8222c(size());
        for (AbstractC4997j0.AbstractC4998a aVar : entrySet()) {
            Object element = aVar.getElement();
            for (int count = aVar.getCount(); count > 0; count--) {
                c.add(element);
            }
        }
        return c;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.countMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
        r0 = new java.util.concurrent.atomic.AtomicInteger(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ae, code lost:
        if (r6.countMap.putIfAbsent(r7, r0) == null) goto L_0x00c1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c1, code lost:
        return 0;
     */
    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int add(E r7, int r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.Object r0 = p131c.p161d.p266c.p267a.C4933n.m24795a(r0)
            r0 = r8
            if (r0 != 0) goto L_0x000f
            r0 = r6
            r1 = r7
            int r0 = r0.count(r1)
            return r0
        L_0x000f:
            r0 = r8
            java.lang.String r1 = "occurences"
            p131c.p161d.p266c.p269c.C5006n.m24659b(r0, r1)
        L_0x0015:
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            java.lang.Object r0 = com.google.common.collect.Maps.m8116e(r0, r1)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0047
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            java.lang.Object r0 = r0.putIfAbsent(r1, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0047
            r0 = 0
            return r0
        L_0x0047:
            r0 = r10
            int r0 = r0.get()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x009a
            r0 = r10
            r1 = r11
            r2 = r11
            r3 = r8
            int r2 = p131c.p161d.p266c.p272f.C5058c.m24588a(r2, r3)     // Catch: ArithmeticException -> 0x006a
            boolean r0 = r0.compareAndSet(r1, r2)     // Catch: ArithmeticException -> 0x006a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0047
            r0 = r11
            return r0
        L_0x006a:
            r7 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Overflow adding "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " occurrences to a count of "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x009a:
            java.util.concurrent.atomic.AtomicInteger r0 = new java.util.concurrent.atomic.AtomicInteger
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r9 = r0
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            r2 = r9
            java.lang.Object r0 = r0.putIfAbsent(r1, r2)
            if (r0 == 0) goto L_0x00c1
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            r2 = r10
            r3 = r9
            boolean r0 = r0.replace(r1, r2, r3)
            if (r0 == 0) goto L_0x0015
        L_0x00c1:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.add(java.lang.Object, int):int");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.countMap.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m8116e(this.countMap, obj);
        return atomicInteger == null ? 0 : atomicInteger.get();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Set<E> createElementSet() {
        return new C7441a(this, this.countMap.keySet());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    @Deprecated
    public Set<AbstractC4997j0.AbstractC4998a<E>> createEntrySet() {
        return new C7444d(this, null);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public int distinctElements() {
        return this.countMap.size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator() {
        return new C7443c(new C7442b());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.countMap.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
    public Iterator<E> iterator() {
        return Multisets.m8092a((AbstractC4997j0) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int remove(Object obj, int i) {
        int i2;
        int max;
        if (i == 0) {
            return count(obj);
        }
        C5006n.m24659b(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m8116e(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            max = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, max));
        if (max == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return i2;
    }

    public boolean removeExactly(Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        C5006n.m24659b(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m8116e(this.countMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 != 0) {
            return true;
        }
        this.countMap.remove(obj, atomicInteger);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
        if (r8 != 0) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        r0 = new java.util.concurrent.atomic.AtomicInteger(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        if (r6.countMap.putIfAbsent(r7, r0) == null) goto L_0x007e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
        return 0;
     */
    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setCount(E r7, int r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.Object r0 = p131c.p161d.p266c.p267a.C4933n.m24795a(r0)
            r0 = r8
            java.lang.String r1 = "count"
            int r0 = p131c.p161d.p266c.p269c.C5006n.m24663a(r0, r1)
        L_0x000d:
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            java.lang.Object r0 = com.google.common.collect.Maps.m8116e(r0, r1)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0045
            r0 = r8
            if (r0 != 0) goto L_0x0026
            r0 = 0
            return r0
        L_0x0026:
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            java.lang.Object r0 = r0.putIfAbsent(r1, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0045
            r0 = 0
            return r0
        L_0x0045:
            r0 = r10
            int r0 = r0.get()
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0080
            r0 = r8
            if (r0 != 0) goto L_0x0057
            r0 = 0
            return r0
        L_0x0057:
            java.util.concurrent.atomic.AtomicInteger r0 = new java.util.concurrent.atomic.AtomicInteger
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r9 = r0
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            r2 = r9
            java.lang.Object r0 = r0.putIfAbsent(r1, r2)
            if (r0 == 0) goto L_0x007e
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            r2 = r10
            r3 = r9
            boolean r0 = r0.replace(r1, r2, r3)
            if (r0 == 0) goto L_0x000d
        L_0x007e:
            r0 = 0
            return r0
        L_0x0080:
            r0 = r10
            r1 = r11
            r2 = r8
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0045
            r0 = r8
            if (r0 != 0) goto L_0x009c
            r0 = r6
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r0.countMap
            r1 = r7
            r2 = r10
            boolean r0 = r0.remove(r1, r2)
        L_0x009c:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.setCount(java.lang.Object, int):int");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean setCount(E e, int i, int i2) {
        C4933n.m24795a(e);
        C5006n.m24663a(i, "oldCount");
        C5006n.m24663a(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m8116e(this.countMap, e);
        boolean z = false;
        boolean z2 = false;
        if (atomicInteger != null) {
            int i3 = atomicInteger.get();
            if (i3 != i) {
                return false;
            }
            if (i3 == 0) {
                if (i2 == 0) {
                    this.countMap.remove(e, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                if (this.countMap.putIfAbsent(e, atomicInteger2) == null || this.countMap.replace(e, atomicInteger, atomicInteger2)) {
                    z = true;
                }
                return z;
            } else if (!atomicInteger.compareAndSet(i3, i2)) {
                return false;
            } else {
                if (i2 != 0) {
                    return true;
                }
                this.countMap.remove(e, atomicInteger);
                return true;
            }
        } else if (i != 0) {
            return false;
        } else {
            if (i2 == 0) {
                return true;
            }
            if (this.countMap.putIfAbsent(e, new AtomicInteger(i2)) == null) {
                z2 = true;
            }
            return z2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int size() {
        long j = 0;
        for (AtomicInteger atomicInteger : this.countMap.values()) {
            j += atomicInteger.get();
        }
        return Ints.m7808b(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return snapshot().toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) snapshot().toArray(tArr);
    }
}
