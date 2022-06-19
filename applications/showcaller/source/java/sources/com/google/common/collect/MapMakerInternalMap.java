package com.google.common.collect;

import com.google.common.base.C8756j;
import com.google.common.base.Equivalence;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.AbstractC8779h;
import com.google.common.collect.MapMakerInternalMap.Segment;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import p078c.p084c.p119c.p121b.C1974a;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap.class */
public class MapMakerInternalMap<K, V, E extends AbstractC8779h<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    /* renamed from: d */
    static final AbstractC8799v<Object, Object, C8775d> f38666d = new C8772a();
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;

    /* renamed from: e */
    final transient int f38667e;

    /* renamed from: f */
    final transient int f38668f;

    /* renamed from: g */
    final transient Segment<K, V, E, S>[] f38669g;

    /* renamed from: h */
    final transient AbstractC8780i<K, V, E, S> f38670h;

    /* renamed from: i */
    transient Set<K> f38671i;

    /* renamed from: j */
    transient Collection<V> f38672j;

    /* renamed from: k */
    transient Set<Map.Entry<K, V>> f38673k;
    final Equivalence<Object> keyEquivalence;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy.class */
    public static abstract class AbstractSerializationProxy<K, V> extends AbstractConcurrentMapC8806e<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;

        /* renamed from: d */
        transient ConcurrentMap<K, V> f38674d;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;

        AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i;
            this.f38674d = concurrentMap;
        }

        @Override // com.google.common.collect.AbstractConcurrentMapC8806e, com.google.common.collect.AbstractC8807f, com.google.common.collect.AbstractC8808g
        public ConcurrentMap<K, V> delegate() {
            return this.f38674d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void readEntries(ObjectInputStream objectInputStream) {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.f38674d.put(readObject, objectInputStream.readObject());
            }
        }

        MapMaker readMapMaker(ObjectInputStream objectInputStream) {
            return new MapMaker().m2712g(objectInputStream.readInt()).m2709j(this.keyStrength).m2708k(this.valueStrength).m2711h(this.keyEquivalence).m2718a(this.concurrencyLevel);
        }

        void writeMapTo(ObjectOutputStream objectOutputStream) {
            objectOutputStream.writeInt(this.f38674d.size());
            for (Map.Entry<K, V> entry : this.f38674d.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$Segment.class */
    public static abstract class Segment<K, V, E extends AbstractC8779h<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;
        final MapMakerInternalMap<K, V, E, S> map;
        final int maxSegmentSize;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        volatile AtomicReferenceArray<E> table;
        int threshold;

        Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.map = mapMakerInternalMap;
            this.maxSegmentSize = i2;
            initTable(newEntryArray(i));
        }

        static <K, V, E extends AbstractC8779h<K, V, E>> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        abstract E castForTesting(AbstractC8779h<K, V, ?> abstractC8779h);

        void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        boolean clearValueForTesting(K k, int i, AbstractC8799v<K, V, ? extends AbstractC8779h<K, V, ?>> abstractC8799v) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC8779h abstractC8779h = e; abstractC8779h != null; abstractC8779h = abstractC8779h.mo2696a()) {
                    Object key = abstractC8779h.getKey();
                    if (abstractC8779h.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((AbstractC8798u) abstractC8779h).mo2642b() != abstractC8799v) {
                            unlock();
                            return false;
                        }
                        atomicReferenceArray.set(length, removeFromChain(e, abstractC8779h));
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        boolean containsKey(Object obj, int i) {
            try {
                if (this.count == 0) {
                    postReadCleanup();
                    return false;
                }
                E liveEntry = getLiveEntry(obj, i);
                boolean z = false;
                if (liveEntry != null) {
                    z = false;
                    if (liveEntry.getValue() != null) {
                        z = true;
                    }
                }
                postReadCleanup();
                return z;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [com.google.common.collect.MapMakerInternalMap$h] */
        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E e = atomicReferenceArray.get(i); e != null; e = e.mo2696a()) {
                            V liveValue = getLiveValue(e);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        E copyEntry(E e, E e2) {
            return this.map.f38670h.mo2653a(self(), e, e2);
        }

        E copyForTesting(AbstractC8779h<K, V, ?> abstractC8779h, AbstractC8779h<K, V, ?> abstractC8779h2) {
            return this.map.f38670h.mo2653a(self(), castForTesting(abstractC8779h), castForTesting(abstractC8779h2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimKey((AbstractC8779h) poll);
                i = i2 + 1;
                i2 = i;
            } while (i != 16);
        }

        void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimValue((AbstractC8799v) poll);
                i = i2 + 1;
                i2 = i;
            } while (i != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [com.google.common.collect.MapMakerInternalMap$h] */
        /* JADX WARN: Type inference failed for: r0v41, types: [com.google.common.collect.MapMakerInternalMap$h] */
        /* JADX WARN: Type inference failed for: r0v49, types: [com.google.common.collect.MapMakerInternalMap$h] */
        void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            AtomicReferenceArray<E> newEntryArray = newEntryArray(length << 1);
            this.threshold = (newEntryArray.length() * 3) / 4;
            int length2 = newEntryArray.length() - 1;
            int i2 = 0;
            while (i2 < length) {
                E e = atomicReferenceArray.get(i2);
                int i3 = i;
                if (e != null) {
                    E mo2696a = e.mo2696a();
                    int mo2695c = e.mo2695c() & length2;
                    if (mo2696a == null) {
                        newEntryArray.set(mo2695c, e);
                        i3 = i;
                    } else {
                        E e2 = e;
                        while (mo2696a != null) {
                            int mo2695c2 = mo2696a.mo2695c() & length2;
                            int i4 = mo2695c;
                            if (mo2695c2 != mo2695c) {
                                e2 = mo2696a;
                                i4 = mo2695c2;
                            }
                            mo2696a = mo2696a.mo2696a();
                            mo2695c = i4;
                        }
                        newEntryArray.set(mo2695c, e2);
                        while (true) {
                            i3 = i;
                            if (e != e2) {
                                int mo2695c3 = e.mo2695c() & length2;
                                E copyEntry = copyEntry(e, newEntryArray.get(mo2695c3));
                                if (copyEntry != null) {
                                    newEntryArray.set(mo2695c3, copyEntry);
                                } else {
                                    i--;
                                }
                                e = e.mo2696a();
                            }
                        }
                    }
                }
                i2++;
                i = i3;
            }
            this.table = newEntryArray;
            this.count = i;
        }

        /* JADX WARN: Finally extract failed */
        V get(Object obj, int i) {
            try {
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    postReadCleanup();
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                postReadCleanup();
                return v;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        E getEntry(Object obj, int i) {
            if (this.count != 0) {
                E first = getFirst(i);
                while (true) {
                    E e = first;
                    if (e == null) {
                        return null;
                    }
                    if (e.mo2695c() == i) {
                        Object key = e.getKey();
                        if (key == null) {
                            tryDrainReferenceQueues();
                        } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                            return e;
                        }
                    }
                    first = (E) e.mo2696a();
                }
            } else {
                return null;
            }
        }

        E getFirst(int i) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        E getLiveEntry(Object obj, int i) {
            return getEntry(obj, i);
        }

        V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        V getLiveValueForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return getLiveValue(castForTesting(abstractC8779h));
        }

        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        AbstractC8799v<K, V, E> getWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            throw new AssertionError();
        }

        void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.threshold = length;
            if (length == this.maxSegmentSize) {
                this.threshold = length + 1;
            }
            this.table = atomicReferenceArray;
        }

        void maybeClearReferenceQueues() {
        }

        void maybeDrainReferenceQueues() {
        }

        AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        E newEntryForTesting(K k, int i, AbstractC8779h<K, V, ?> abstractC8779h) {
            return this.map.f38670h.mo2648f(self(), k, i, castForTesting(abstractC8779h));
        }

        AbstractC8799v<K, V, E> newWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, V v) {
            throw new AssertionError();
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        void preWriteCleanup() {
            runLockedCleanup();
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                int i3 = i2;
                if (i2 > this.threshold) {
                    expand();
                    i3 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (E e2 = e; e2 != null; e2 = e2.mo2696a()) {
                    Object key = e2.getKey();
                    if (e2.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) e2.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(e2, v);
                            this.count = this.count;
                            unlock();
                            return null;
                        } else if (z) {
                            unlock();
                            return v2;
                        } else {
                            this.modCount++;
                            setValue(e2, v);
                            unlock();
                            return v2;
                        }
                    }
                }
                this.modCount++;
                E mo2648f = this.map.f38670h.mo2648f(self(), k, i, e);
                setValue(mo2648f, v);
                atomicReferenceArray.set(length, mo2648f);
                this.count = i3;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [com.google.common.collect.MapMakerInternalMap$h] */
        /* JADX WARN: Type inference failed for: r0v9, types: [com.google.common.collect.MapMakerInternalMap$h] */
        /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>, java.util.concurrent.locks.ReentrantLock, com.google.common.collect.MapMakerInternalMap$Segment] */
        boolean reclaimKey(E e, int i) {
            lock();
            try {
                AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray<E>) this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ?? r0 = (AbstractC8779h) atomicReferenceArray.get(length);
                for (E e2 = r0; e2 != null; e2 = e2.mo2696a()) {
                    if (e2 == e) {
                        this.modCount++;
                        AbstractC8779h removeFromChain = removeFromChain(r0, e2);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2 - 1;
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        boolean reclaimValue(K k, int i, AbstractC8799v<K, V, E> abstractC8799v) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC8779h abstractC8779h = e; abstractC8779h != null; abstractC8779h = abstractC8779h.mo2696a()) {
                    Object key = abstractC8779h.getKey();
                    if (abstractC8779h.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((AbstractC8798u) abstractC8779h).mo2642b() != abstractC8799v) {
                            unlock();
                            return false;
                        }
                        this.modCount++;
                        E removeFromChain = removeFromChain(e, abstractC8779h);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2 - 1;
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC8779h abstractC8779h = e; abstractC8779h != null; abstractC8779h = abstractC8779h.mo2696a()) {
                    Object key = abstractC8779h.getKey();
                    if (abstractC8779h.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) abstractC8779h.getValue();
                        if (v == null && !isCollected(abstractC8779h)) {
                            unlock();
                            return null;
                        }
                        this.modCount++;
                        E removeFromChain = removeFromChain(e, abstractC8779h);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2 - 1;
                        return v;
                    }
                }
                unlock();
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
            if (r4.map.valueEquivalence().equivalent(r7, r11.getValue()) == false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x007c, code lost:
            if (isCollected(r11) == false) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
            r4.modCount++;
            r0 = removeFromChain(r0, r11);
            r0 = r4.count;
            r0.set(r0, r0);
            r4.count = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00a7, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00ac, code lost:
            return r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00ad, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00b2, code lost:
            return false;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean remove(java.lang.Object r5, int r6, java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>, com.google.common.collect.MapMakerInternalMap$Segment] */
        boolean removeEntryForTesting(E e) {
            int mo2695c = e.mo2695c();
            AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray<E>) this.table;
            int length = mo2695c & (atomicReferenceArray.length() - 1);
            AbstractC8779h abstractC8779h = (AbstractC8779h) atomicReferenceArray.get(length);
            AbstractC8779h abstractC8779h2 = abstractC8779h;
            while (true) {
                E e2 = abstractC8779h2;
                if (e2 != null) {
                    if (e2 == e) {
                        this.modCount++;
                        AbstractC8779h removeFromChain = removeFromChain(abstractC8779h, e2);
                        int i = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i - 1;
                        return true;
                    }
                    abstractC8779h2 = e2.mo2696a();
                } else {
                    return false;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [com.google.common.collect.MapMakerInternalMap$h] */
        /* JADX WARN: Type inference failed for: r0v3, types: [com.google.common.collect.MapMakerInternalMap$h] */
        E removeFromChain(E e, E e2) {
            int i = this.count;
            E mo2696a = e2.mo2696a();
            while (e != e2) {
                E copyEntry = copyEntry(e, mo2696a);
                if (copyEntry != null) {
                    mo2696a = copyEntry;
                } else {
                    i--;
                }
                e = e.mo2696a();
            }
            this.count = i;
            return mo2696a;
        }

        E removeFromChainForTesting(AbstractC8779h<K, V, ?> abstractC8779h, AbstractC8779h<K, V, ?> abstractC8779h2) {
            return removeFromChain(castForTesting(abstractC8779h), castForTesting(abstractC8779h2));
        }

        boolean removeTableEntryForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return removeEntryForTesting(castForTesting(abstractC8779h));
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC8779h abstractC8779h = e; abstractC8779h != null; abstractC8779h = abstractC8779h.mo2696a()) {
                    Object key = abstractC8779h.getKey();
                    if (abstractC8779h.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) abstractC8779h.getValue();
                        if (v2 != null) {
                            this.modCount++;
                            setValue(abstractC8779h, v);
                            unlock();
                            return v2;
                        }
                        if (isCollected(abstractC8779h)) {
                            this.modCount++;
                            E removeFromChain = removeFromChain(e, abstractC8779h);
                            int i2 = this.count;
                            atomicReferenceArray.set(length, removeFromChain);
                            this.count = i2 - 1;
                        }
                        unlock();
                        return null;
                    }
                }
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC8779h abstractC8779h = e; abstractC8779h != null; abstractC8779h = abstractC8779h.mo2696a()) {
                    Object key = abstractC8779h.getKey();
                    if (abstractC8779h.mo2695c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = abstractC8779h.getValue();
                        if (value != null) {
                            if (!this.map.valueEquivalence().equivalent(v, value)) {
                                unlock();
                                return false;
                            }
                            this.modCount++;
                            setValue(abstractC8779h, v2);
                            unlock();
                            return true;
                        }
                        if (isCollected(abstractC8779h)) {
                            this.modCount++;
                            E removeFromChain = removeFromChain(e, abstractC8779h);
                            int i2 = this.count;
                            atomicReferenceArray.set(length, removeFromChain);
                            this.count = i2 - 1;
                        }
                        unlock();
                        return false;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        void runCleanup() {
            runLockedCleanup();
        }

        void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S self();

        void setTableEntryForTesting(int i, AbstractC8779h<K, V, ?> abstractC8779h) {
            this.table.set(i, castForTesting(abstractC8779h));
        }

        void setValue(E e, V v) {
            this.map.f38670h.mo2650d(self(), e, v);
        }

        void setValueForTesting(AbstractC8779h<K, V, ?> abstractC8779h, V v) {
            this.map.f38670h.mo2650d(self(), castForTesting(abstractC8779h), v);
        }

        void setWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, AbstractC8799v<K, V, ? extends AbstractC8779h<K, V, ?>> abstractC8799v) {
            throw new AssertionError();
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$SerializationProxy.class */
    private static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        SerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) {
            objectInputStream.defaultReadObject();
            this.f38674d = readMapMaker(objectInputStream).m2710i();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.f38674d;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$Strength.class */
    public enum Strength {
        STRONG { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        /* synthetic */ Strength(C8772a c8772a) {
            this();
        }

        public abstract Equivalence<Object> defaultEquivalence();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment.class */
    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C8784m<K>, StrongKeyDummyValueSegment<K>> {
        StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C8784m<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8784m<K> castForTesting(AbstractC8779h<K, MapMaker.Dummy, ?> abstractC8779h) {
            return (C8784m) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment.class */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, C8786n<K, V>, StrongKeyStrongValueSegment<K, V>> {
        StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, C8786n<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8786n<K, V> castForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return (C8786n) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment.class */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, C8788o<K, V>, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, C8788o<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8788o<K, V> castForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return (C8788o) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC8799v<K, V, C8788o<K, V>> getWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return castForTesting((AbstractC8779h) abstractC8779h).mo2642b();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<V>) this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC8799v<K, V, C8788o<K, V>> newWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, V v) {
            return new C8800w(this.queueForValues, v, castForTesting((AbstractC8779h) abstractC8779h));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, AbstractC8799v<K, V, ? extends AbstractC8779h<K, V, ?>> abstractC8799v) {
            C8788o<K, V> castForTesting = castForTesting((AbstractC8779h) abstractC8779h);
            AbstractC8799v abstractC8799v2 = ((C8788o) castForTesting).f38698d;
            ((C8788o) castForTesting).f38698d = abstractC8799v;
            abstractC8799v2.clear();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment.class */
    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C8792r<K>, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C8792r<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8792r<K> castForTesting(AbstractC8779h<K, MapMaker.Dummy, ?> abstractC8779h) {
            return (C8792r) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment.class */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, C8794s<K, V>, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, C8794s<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8794s<K, V> castForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return (C8794s) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment.class */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, C8796t<K, V>, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();
        private final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, C8796t<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C8796t<K, V> castForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return (C8796t) abstractC8779h;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC8799v<K, V, C8796t<K, V>> getWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
            return castForTesting((AbstractC8779h) abstractC8779h).mo2642b();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public AbstractC8799v<K, V, C8796t<K, V>> newWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, V v) {
            return new C8800w(this.queueForValues, v, castForTesting((AbstractC8779h) abstractC8779h));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(AbstractC8779h<K, V, ?> abstractC8779h, AbstractC8799v<K, V, ? extends AbstractC8779h<K, V, ?>> abstractC8799v) {
            C8796t<K, V> castForTesting = castForTesting((AbstractC8779h) abstractC8779h);
            AbstractC8799v abstractC8799v2 = ((C8796t) castForTesting).f38705c;
            ((C8796t) castForTesting).f38705c = abstractC8799v;
            abstractC8799v2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.MapMakerInternalMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$a.class */
    public static final class C8772a implements AbstractC8799v<Object, Object, C8775d> {
        C8772a() {
        }

        /* renamed from: c */
        public AbstractC8799v<Object, Object, C8775d> mo2640b(ReferenceQueue<Object> referenceQueue, C8775d c8775d) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8799v
        public void clear() {
        }

        /* renamed from: d */
        public C8775d mo2641a() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8799v
        public Object get() {
            return null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$b.class */
    public static abstract class AbstractC8773b<K, V, E extends AbstractC8779h<K, V, E>> implements AbstractC8779h<K, V, E> {

        /* renamed from: a */
        final K f38678a;

        /* renamed from: b */
        final int f38679b;

        /* renamed from: c */
        final E f38680c;

        AbstractC8773b(K k, int i, E e) {
            this.f38678a = k;
            this.f38679b = i;
            this.f38680c = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        /* renamed from: a */
        public E mo2696a() {
            return this.f38680c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        /* renamed from: c */
        public int mo2695c() {
            return this.f38679b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public K getKey() {
            return this.f38678a;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$c.class */
    public static abstract class AbstractC8774c<K, V, E extends AbstractC8779h<K, V, E>> extends WeakReference<K> implements AbstractC8779h<K, V, E> {

        /* renamed from: a */
        final int f38681a;

        /* renamed from: b */
        final E f38682b;

        AbstractC8774c(ReferenceQueue<K> referenceQueue, K k, int i, E e) {
            super(k, referenceQueue);
            this.f38681a = i;
            this.f38682b = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        /* renamed from: a */
        public E mo2696a() {
            return this.f38682b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        /* renamed from: c */
        public int mo2695c() {
            return this.f38681a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public K getKey() {
            return get();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$d.class */
    public static final class C8775d implements AbstractC8779h<Object, Object, C8775d> {
        private C8775d() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        /* renamed from: c */
        public int mo2695c() {
            throw new AssertionError();
        }

        /* renamed from: d */
        public C8775d mo2696a() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$e.class */
    final class C8776e extends MapMakerInternalMap<K, V, E, S>.AbstractC8778g<Map.Entry<K, V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8776e() {
            super();
            MapMakerInternalMap.this = r4;
        }

        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return m2699c();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$f.class */
    final class C8777f extends AbstractC8783l<Map.Entry<K, V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8777f() {
            super(null);
            MapMakerInternalMap.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null) {
                Object obj2 = MapMakerInternalMap.this.get(key);
                boolean z = false;
                if (obj2 != null) {
                    z = false;
                    if (MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2)) {
                        z = true;
                    }
                }
                return z;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C8776e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            boolean z = false;
            if (key != null) {
                z = false;
                if (MapMakerInternalMap.this.remove(key, entry.getValue())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$g.class */
    public abstract class AbstractC8778g<T> implements Iterator<T> {

        /* renamed from: d */
        int f38685d;

        /* renamed from: e */
        int f38686e = -1;

        /* renamed from: f */
        Segment<K, V, E, S> f38687f;

        /* renamed from: g */
        AtomicReferenceArray<E> f38688g;

        /* renamed from: h */
        E f38689h;

        /* renamed from: i */
        MapMakerInternalMap<K, V, E, S>.C8801x f38690i;

        /* renamed from: j */
        MapMakerInternalMap<K, V, E, S>.C8801x f38691j;

        AbstractC8778g() {
            MapMakerInternalMap.this = r5;
            this.f38685d = r5.f38669g.length - 1;
            m2701a();
        }

        /* renamed from: a */
        final void m2701a() {
            this.f38690i = null;
            if (!m2698d() && !m2697e()) {
                while (true) {
                    int i = this.f38685d;
                    if (i < 0) {
                        return;
                    }
                    Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.f38669g;
                    this.f38685d = i - 1;
                    Segment<K, V, E, S> segment = segmentArr[i];
                    this.f38687f = segment;
                    if (segment.count != 0) {
                        AtomicReferenceArray<E> atomicReferenceArray = this.f38687f.table;
                        this.f38688g = atomicReferenceArray;
                        this.f38686e = atomicReferenceArray.length() - 1;
                        if (m2697e()) {
                            return;
                        }
                    }
                }
            }
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        boolean m2700b(E e) {
            boolean z;
            try {
                Object key = e.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(e);
                if (liveValue != null) {
                    this.f38690i = new C8801x(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                this.f38687f.postReadCleanup();
                return z;
            } catch (Throwable th) {
                this.f38687f.postReadCleanup();
                throw th;
            }
        }

        /* renamed from: c */
        MapMakerInternalMap<K, V, E, S>.C8801x m2699c() {
            MapMakerInternalMap<K, V, E, S>.C8801x c8801x = this.f38690i;
            if (c8801x != null) {
                this.f38691j = c8801x;
                m2701a();
                return this.f38691j;
            }
            throw new NoSuchElementException();
        }

        /* renamed from: d */
        boolean m2698d() {
            E e = this.f38689h;
            if (e != null) {
                while (true) {
                    this.f38689h = (E) e.mo2696a();
                    E e2 = this.f38689h;
                    if (e2 == null) {
                        return false;
                    }
                    if (m2700b(e2)) {
                        return true;
                    }
                    e = this.f38689h;
                }
            } else {
                return false;
            }
        }

        /* renamed from: e */
        boolean m2697e() {
            while (true) {
                int i = this.f38686e;
                if (i >= 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f38688g;
                    this.f38686e = i - 1;
                    E e = atomicReferenceArray.get(i);
                    this.f38689h = e;
                    if (e != null && (m2700b(e) || m2698d())) {
                        return true;
                    }
                } else {
                    return false;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f38690i != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            C8804c.m2637b(this.f38691j != null);
            MapMakerInternalMap.this.remove(this.f38691j.getKey());
            this.f38691j = null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$h.class */
    public interface AbstractC8779h<K, V, E extends AbstractC8779h<K, V, E>> {
        /* renamed from: a */
        E mo2696a();

        /* renamed from: c */
        int mo2695c();

        K getKey();

        V getValue();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$i.class */
    public interface AbstractC8780i<K, V, E extends AbstractC8779h<K, V, E>, S extends Segment<K, V, E, S>> {
        /* renamed from: a */
        E mo2653a(S s, E e, E e2);

        /* renamed from: b */
        Strength mo2652b();

        /* renamed from: c */
        Strength mo2651c();

        /* renamed from: d */
        void mo2650d(S s, E e, V v);

        /* renamed from: e */
        S mo2649e(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);

        /* renamed from: f */
        E mo2648f(S s, K k, int i, E e);
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$j.class */
    final class C8781j extends MapMakerInternalMap<K, V, E, S>.AbstractC8778g<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8781j() {
            super();
            MapMakerInternalMap.this = r4;
        }

        @Override // java.util.Iterator
        public K next() {
            return m2699c().getKey();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$k.class */
    final class C8782k extends AbstractC8783l<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8782k() {
            super(null);
            MapMakerInternalMap.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C8781j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.collect.MapMakerInternalMap$l */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$l.class */
    public static abstract class AbstractC8783l<E> extends AbstractSet<E> {
        private AbstractC8783l() {
        }

        /* synthetic */ AbstractC8783l(C8772a c8772a) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.m2706a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.m2706a(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$m */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$m.class */
    public static final class C8784m<K> extends AbstractC8773b<K, MapMaker.Dummy, C8784m<K>> implements AbstractC8779h {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$m$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$m$a.class */
        static final class C8785a<K> implements AbstractC8780i<K, MapMaker.Dummy, C8784m<K>, StrongKeyDummyValueSegment<K>> {

            /* renamed from: a */
            private static final C8785a<?> f38695a = new C8785a<>();

            C8785a() {
            }

            /* renamed from: h */
            static <K> C8785a<K> m2691h() {
                return (C8785a<K>) f38695a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.STRONG;
            }

            /* renamed from: g */
            public C8784m<K> mo2653a(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C8784m<K> c8784m, C8784m<K> c8784m2) {
                return c8784m.m2694d(c8784m2);
            }

            /* renamed from: i */
            public C8784m<K> mo2648f(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, K k, int i, C8784m<K> c8784m) {
                return new C8784m<>(k, i, c8784m);
            }

            /* renamed from: j */
            public StrongKeyDummyValueSegment<K> mo2649e(MapMakerInternalMap<K, MapMaker.Dummy, C8784m<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C8784m<K> c8784m, MapMaker.Dummy dummy) {
            }
        }

        C8784m(K k, int i, C8784m<K> c8784m) {
            super(k, i, c8784m);
        }

        /* renamed from: d */
        C8784m<K> m2694d(C8784m<K> c8784m) {
            return new C8784m<>(this.f38678a, this.f38679b, c8784m);
        }

        /* renamed from: e */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$n */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$n.class */
    public static final class C8786n<K, V> extends AbstractC8773b<K, V, C8786n<K, V>> implements AbstractC8779h {

        /* renamed from: d */
        private volatile V f38696d = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.MapMakerInternalMap$n$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$n$a.class */
        public static final class C8787a<K, V> implements AbstractC8780i<K, V, C8786n<K, V>, StrongKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            private static final C8787a<?, ?> f38697a = new C8787a<>();

            C8787a() {
            }

            /* renamed from: h */
            static <K, V> C8787a<K, V> m2684h() {
                return (C8787a<K, V>) f38697a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.STRONG;
            }

            /* renamed from: g */
            public C8786n<K, V> mo2653a(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C8786n<K, V> c8786n, C8786n<K, V> c8786n2) {
                return c8786n.m2687d(c8786n2);
            }

            /* renamed from: i */
            public C8786n<K, V> mo2648f(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, K k, int i, C8786n<K, V> c8786n) {
                return new C8786n<>(k, i, c8786n);
            }

            /* renamed from: j */
            public StrongKeyStrongValueSegment<K, V> mo2649e(MapMakerInternalMap<K, V, C8786n<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C8786n<K, V> c8786n, V v) {
                c8786n.m2686e(v);
            }
        }

        C8786n(K k, int i, C8786n<K, V> c8786n) {
            super(k, i, c8786n);
        }

        /* renamed from: d */
        C8786n<K, V> m2687d(C8786n<K, V> c8786n) {
            C8786n<K, V> c8786n2 = new C8786n<>(this.f38678a, this.f38679b, c8786n);
            c8786n2.f38696d = this.f38696d;
            return c8786n2;
        }

        /* renamed from: e */
        void m2686e(V v) {
            this.f38696d = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public V getValue() {
            return this.f38696d;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$o */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$o.class */
    public static final class C8788o<K, V> extends AbstractC8773b<K, V, C8788o<K, V>> implements AbstractC8798u<K, V, C8788o<K, V>> {

        /* renamed from: d */
        private volatile AbstractC8799v<K, V, C8788o<K, V>> f38698d = MapMakerInternalMap.unsetWeakValueReference();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.MapMakerInternalMap$o$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$o$a.class */
        public static final class C8789a<K, V> implements AbstractC8780i<K, V, C8788o<K, V>, StrongKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            private static final C8789a<?, ?> f38699a = new C8789a<>();

            C8789a() {
            }

            /* renamed from: h */
            static <K, V> C8789a<K, V> m2675h() {
                return (C8789a<K, V>) f38699a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.WEAK;
            }

            /* renamed from: g */
            public C8788o<K, V> mo2653a(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C8788o<K, V> c8788o, C8788o<K, V> c8788o2) {
                if (Segment.isCollected(c8788o)) {
                    return null;
                }
                return c8788o.m2678f(((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues, c8788o2);
            }

            /* renamed from: i */
            public C8788o<K, V> mo2648f(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, K k, int i, C8788o<K, V> c8788o) {
                return new C8788o<>(k, i, c8788o);
            }

            /* renamed from: j */
            public StrongKeyWeakValueSegment<K, V> mo2649e(MapMakerInternalMap<K, V, C8788o<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C8788o<K, V> c8788o, V v) {
                c8788o.m2677g(v, ((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues);
            }
        }

        C8788o(K k, int i, C8788o<K, V> c8788o) {
            super(k, i, c8788o);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8798u
        /* renamed from: b */
        public AbstractC8799v<K, V, C8788o<K, V>> mo2642b() {
            return this.f38698d;
        }

        /* renamed from: f */
        C8788o<K, V> m2678f(ReferenceQueue<V> referenceQueue, C8788o<K, V> c8788o) {
            C8788o<K, V> c8788o2 = new C8788o<>(this.f38678a, this.f38679b, c8788o);
            c8788o2.f38698d = this.f38698d.mo2640b(referenceQueue, c8788o2);
            return c8788o2;
        }

        /* renamed from: g */
        void m2677g(V v, ReferenceQueue<V> referenceQueue) {
            AbstractC8799v<K, V, C8788o<K, V>> abstractC8799v = this.f38698d;
            this.f38698d = new C8800w(referenceQueue, v, this);
            abstractC8799v.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public V getValue() {
            return this.f38698d.get();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$p */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$p.class */
    final class C8790p extends MapMakerInternalMap<K, V, E, S>.AbstractC8778g<V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8790p() {
            super();
            MapMakerInternalMap.this = r4;
        }

        @Override // java.util.Iterator
        public V next() {
            return m2699c().getValue();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$q */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$q.class */
    final class C8791q extends AbstractCollection<V> {
        C8791q() {
            MapMakerInternalMap.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C8790p();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.m2706a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.m2706a(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$r */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$r.class */
    public static final class C8792r<K> extends AbstractC8774c<K, MapMaker.Dummy, C8792r<K>> implements AbstractC8779h {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$r$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$r$a.class */
        static final class C8793a<K> implements AbstractC8780i<K, MapMaker.Dummy, C8792r<K>, WeakKeyDummyValueSegment<K>> {

            /* renamed from: a */
            private static final C8793a<?> f38702a = new C8793a<>();

            C8793a() {
            }

            /* renamed from: h */
            static <K> C8793a<K> m2668h() {
                return (C8793a<K>) f38702a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.STRONG;
            }

            /* renamed from: g */
            public C8792r<K> mo2653a(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C8792r<K> c8792r, C8792r<K> c8792r2) {
                if (c8792r.getKey() == null) {
                    return null;
                }
                return c8792r.m2671d(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, c8792r2);
            }

            /* renamed from: i */
            public C8792r<K> mo2648f(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, K k, int i, C8792r<K> c8792r) {
                return new C8792r<>(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, k, i, c8792r);
            }

            /* renamed from: j */
            public WeakKeyDummyValueSegment<K> mo2649e(MapMakerInternalMap<K, MapMaker.Dummy, C8792r<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C8792r<K> c8792r, MapMaker.Dummy dummy) {
            }
        }

        C8792r(ReferenceQueue<K> referenceQueue, K k, int i, C8792r<K> c8792r) {
            super(referenceQueue, k, i, c8792r);
        }

        /* renamed from: d */
        C8792r<K> m2671d(ReferenceQueue<K> referenceQueue, C8792r<K> c8792r) {
            return new C8792r<>(referenceQueue, getKey(), this.f38681a, c8792r);
        }

        /* renamed from: e */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$s */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$s.class */
    public static final class C8794s<K, V> extends AbstractC8774c<K, V, C8794s<K, V>> implements AbstractC8779h {

        /* renamed from: c */
        private volatile V f38703c = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.MapMakerInternalMap$s$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$s$a.class */
        public static final class C8795a<K, V> implements AbstractC8780i<K, V, C8794s<K, V>, WeakKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            private static final C8795a<?, ?> f38704a = new C8795a<>();

            C8795a() {
            }

            /* renamed from: h */
            static <K, V> C8795a<K, V> m2661h() {
                return (C8795a<K, V>) f38704a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.STRONG;
            }

            /* renamed from: g */
            public C8794s<K, V> mo2653a(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C8794s<K, V> c8794s, C8794s<K, V> c8794s2) {
                if (c8794s.getKey() == null) {
                    return null;
                }
                return c8794s.m2664d(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, c8794s2);
            }

            /* renamed from: i */
            public C8794s<K, V> mo2648f(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, K k, int i, C8794s<K, V> c8794s) {
                return new C8794s<>(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, k, i, c8794s);
            }

            /* renamed from: j */
            public WeakKeyStrongValueSegment<K, V> mo2649e(MapMakerInternalMap<K, V, C8794s<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C8794s<K, V> c8794s, V v) {
                c8794s.m2663e(v);
            }
        }

        C8794s(ReferenceQueue<K> referenceQueue, K k, int i, C8794s<K, V> c8794s) {
            super(referenceQueue, k, i, c8794s);
        }

        /* renamed from: d */
        C8794s<K, V> m2664d(ReferenceQueue<K> referenceQueue, C8794s<K, V> c8794s) {
            C8794s<K, V> c8794s2 = new C8794s<>(referenceQueue, getKey(), this.f38681a, c8794s);
            c8794s2.m2663e(this.f38703c);
            return c8794s2;
        }

        /* renamed from: e */
        void m2663e(V v) {
            this.f38703c = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public V getValue() {
            return this.f38703c;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$t */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$t.class */
    public static final class C8796t<K, V> extends AbstractC8774c<K, V, C8796t<K, V>> implements AbstractC8798u<K, V, C8796t<K, V>> {

        /* renamed from: c */
        private volatile AbstractC8799v<K, V, C8796t<K, V>> f38705c = MapMakerInternalMap.unsetWeakValueReference();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.MapMakerInternalMap$t$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$t$a.class */
        public static final class C8797a<K, V> implements AbstractC8780i<K, V, C8796t<K, V>, WeakKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            private static final C8797a<?, ?> f38706a = new C8797a<>();

            C8797a() {
            }

            /* renamed from: h */
            static <K, V> C8797a<K, V> m2646h() {
                return (C8797a<K, V>) f38706a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: b */
            public Strength mo2652b() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8780i
            /* renamed from: c */
            public Strength mo2651c() {
                return Strength.WEAK;
            }

            /* renamed from: g */
            public C8796t<K, V> mo2653a(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C8796t<K, V> c8796t, C8796t<K, V> c8796t2) {
                if (c8796t.getKey() != null && !Segment.isCollected(c8796t)) {
                    return c8796t.m2655f(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues, c8796t2);
                }
                return null;
            }

            /* renamed from: i */
            public C8796t<K, V> mo2648f(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, K k, int i, C8796t<K, V> c8796t) {
                return new C8796t<>(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, k, i, c8796t);
            }

            /* renamed from: j */
            public WeakKeyWeakValueSegment<K, V> mo2649e(MapMakerInternalMap<K, V, C8796t<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            /* renamed from: k */
            public void mo2650d(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C8796t<K, V> c8796t, V v) {
                c8796t.m2654g(v, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues);
            }
        }

        C8796t(ReferenceQueue<K> referenceQueue, K k, int i, C8796t<K, V> c8796t) {
            super(referenceQueue, k, i, c8796t);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8798u
        /* renamed from: b */
        public AbstractC8799v<K, V, C8796t<K, V>> mo2642b() {
            return this.f38705c;
        }

        /* renamed from: f */
        C8796t<K, V> m2655f(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, C8796t<K, V> c8796t) {
            C8796t<K, V> c8796t2 = new C8796t<>(referenceQueue, getKey(), this.f38681a, c8796t);
            c8796t2.f38705c = this.f38705c.mo2640b(referenceQueue2, c8796t2);
            return c8796t2;
        }

        /* renamed from: g */
        void m2654g(V v, ReferenceQueue<V> referenceQueue) {
            AbstractC8799v<K, V, C8796t<K, V>> abstractC8799v = this.f38705c;
            this.f38705c = new C8800w(referenceQueue, v, this);
            abstractC8799v.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8779h
        public V getValue() {
            return this.f38705c.get();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$u */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$u.class */
    public interface AbstractC8798u<K, V, E extends AbstractC8779h<K, V, E>> extends AbstractC8779h<K, V, E> {
        /* renamed from: b */
        AbstractC8799v<K, V, E> mo2642b();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$v */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$v.class */
    public interface AbstractC8799v<K, V, E extends AbstractC8779h<K, V, E>> {
        /* renamed from: a */
        E mo2641a();

        /* renamed from: b */
        AbstractC8799v<K, V, E> mo2640b(ReferenceQueue<V> referenceQueue, E e);

        void clear();

        V get();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$w */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$w.class */
    public static final class C8800w<K, V, E extends AbstractC8779h<K, V, E>> extends WeakReference<V> implements AbstractC8799v<K, V, E> {

        /* renamed from: a */
        final E f38707a;

        C8800w(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f38707a = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8799v
        /* renamed from: a */
        public E mo2641a() {
            return this.f38707a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC8799v
        /* renamed from: b */
        public AbstractC8799v<K, V, E> mo2640b(ReferenceQueue<V> referenceQueue, E e) {
            return new C8800w(referenceQueue, get(), e);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$x */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMakerInternalMap$x.class */
    public final class C8801x extends AbstractC8803b<K, V> {

        /* renamed from: d */
        final K f38708d;

        /* renamed from: e */
        V f38709e;

        C8801x(K k, V v) {
            MapMakerInternalMap.this = r4;
            this.f38708d = k;
            this.f38709e = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                z = false;
                if (this.f38708d.equals(entry.getKey())) {
                    z = false;
                    if (this.f38709e.equals(entry.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.AbstractC8803b, java.util.Map.Entry
        public K getKey() {
            return this.f38708d;
        }

        @Override // com.google.common.collect.AbstractC8803b, java.util.Map.Entry
        public V getValue() {
            return this.f38709e;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f38708d.hashCode() ^ this.f38709e.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.f38708d, v);
            this.f38709e = v;
            return v2;
        }
    }

    private MapMakerInternalMap(MapMaker mapMaker, AbstractC8780i<K, V, E, S> abstractC8780i) {
        int i;
        this.concurrencyLevel = Math.min(mapMaker.m2717b(), 65536);
        this.keyEquivalence = mapMaker.m2715d();
        this.f38670h = abstractC8780i;
        int min = Math.min(mapMaker.m2716c(), 1073741824);
        int i2 = 1;
        int i3 = 0;
        while (i2 < this.concurrencyLevel) {
            i3++;
            i2 <<= 1;
        }
        this.f38668f = 32 - i3;
        this.f38667e = i2 - 1;
        this.f38669g = newSegmentArray(i2);
        int i4 = min / i2;
        int i5 = 1;
        int i6 = i4;
        if (i2 * i4 < min) {
            i6 = i4 + 1;
            i5 = 1;
        }
        while (true) {
            i = 0;
            i5 = i5 < i6 ? i5 << 1 : i5;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.f38669g;
            if (i < segmentArr.length) {
                segmentArr[i] = createSegment(i5, -1);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m2706a(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        C8811j.m2630a(arrayList, collection.iterator());
        return arrayList;
    }

    public static <K, V> MapMakerInternalMap<K, V, ? extends AbstractC8779h<K, V, ?>, ?> create(MapMaker mapMaker) {
        Strength m2714e = mapMaker.m2714e();
        Strength strength = Strength.STRONG;
        if (m2714e == strength && mapMaker.m2713f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C8786n.C8787a.m2684h());
        }
        if (mapMaker.m2714e() == strength && mapMaker.m2713f() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, C8788o.C8789a.m2675h());
        }
        Strength m2714e2 = mapMaker.m2714e();
        Strength strength2 = Strength.WEAK;
        if (m2714e2 == strength2 && mapMaker.m2713f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C8794s.C8795a.m2661h());
        }
        if (mapMaker.m2714e() != strength2 || mapMaker.m2713f() != strength2) {
            throw new AssertionError();
        }
        return new MapMakerInternalMap<>(mapMaker, C8796t.C8797a.m2646h());
    }

    static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends AbstractC8779h<K, MapMaker.Dummy, ?>, ?> createWithDummyValues(MapMaker mapMaker) {
        Strength m2714e = mapMaker.m2714e();
        Strength strength = Strength.STRONG;
        if (m2714e == strength && mapMaker.m2713f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C8784m.C8785a.m2691h());
        }
        Strength m2714e2 = mapMaker.m2714e();
        Strength strength2 = Strength.WEAK;
        if (m2714e2 == strength2 && mapMaker.m2713f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C8792r.C8793a.m2668h());
        }
        if (mapMaker.m2713f() != strength2) {
            throw new AssertionError();
        }
        throw new IllegalArgumentException("Map cannot have both weak and dummy values");
    }

    static int rehash(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    static <K, V, E extends AbstractC8779h<K, V, E>> AbstractC8799v<K, V, E> unsetWeakValueReference() {
        return (AbstractC8799v<K, V, E>) f38666d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V, E, S> segment : this.f38669g) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0084, code lost:
        r16 = r16 + 1;
     */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsValue(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r5
            com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[] r0 = r0.f38669g
            r7 = r0
            r0 = -1
            r8 = r0
            r0 = 0
            r10 = r0
        L12:
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto Lae
            r0 = 0
            r11 = r0
            r0 = r7
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r14 = r0
        L22:
            r0 = r14
            r1 = r13
            if (r0 >= r1) goto L9b
            r0 = r7
            r1 = r14
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            int r0 = r0.count
            r16 = r0
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>> r0 = r0.table
            r17 = r0
            r0 = 0
            r16 = r0
        L40:
            r0 = r16
            r1 = r17
            int r1 = r1.length()
            if (r0 >= r1) goto L8a
            r0 = r17
            r1 = r16
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.MapMakerInternalMap$h r0 = (com.google.common.collect.MapMakerInternalMap.AbstractC8779h) r0
            r18 = r0
        L56:
            r0 = r18
            if (r0 == 0) goto L84
            r0 = r15
            r1 = r18
            java.lang.Object r0 = r0.getLiveValue(r1)
            r19 = r0
            r0 = r19
            if (r0 == 0) goto L78
            r0 = r5
            com.google.common.base.Equivalence r0 = r0.valueEquivalence()
            r1 = r6
            r2 = r19
            boolean r0 = r0.equivalent(r1, r2)
            if (r0 == 0) goto L78
            r0 = 1
            return r0
        L78:
            r0 = r18
            com.google.common.collect.MapMakerInternalMap$h r0 = r0.mo2696a()
            r18 = r0
            goto L56
        L84:
            int r16 = r16 + 1
            goto L40
        L8a:
            r0 = r11
            r1 = r15
            int r1 = r1.modCount
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            int r14 = r14 + 1
            goto L22
        L9b:
            r0 = r11
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto La5
            goto Lae
        La5:
            int r10 = r10 + 1
            r0 = r11
            r8 = r0
            goto L12
        Lae:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.containsValue(java.lang.Object):boolean");
    }

    E copyEntry(E e, E e2) {
        return segmentFor(e.mo2695c()).copyEntry(e, e2);
    }

    Segment<K, V, E, S> createSegment(int i, int i2) {
        return (S) this.f38670h.mo2649e(this, i, i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C8777f c8777f = this.f38673k;
        if (c8777f == null) {
            c8777f = new C8777f();
            this.f38673k = c8777f;
        }
        return c8777f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    V getLiveValue(E e) {
        if (e.getKey() == null) {
            return null;
        }
        return (V) e.getValue();
    }

    int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.f38669g;
        boolean z = false;
        char c = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            c += segmentArr[i].modCount;
        }
        if (c != 0) {
            for (int i2 = 0; i2 < segmentArr.length; i2++) {
                if (segmentArr[i2].count != 0) {
                    return false;
                }
                c -= segmentArr[i2].modCount;
            }
            if (c == 0) {
                z = true;
            }
            return z;
        }
        return true;
    }

    boolean isLiveForTesting(AbstractC8779h<K, V, ?> abstractC8779h) {
        return segmentFor(abstractC8779h.mo2695c()).getLiveValueForTesting(abstractC8779h) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        C8782k c8782k = this.f38671i;
        if (c8782k == null) {
            c8782k = new C8782k();
            this.f38671i = c8782k;
        }
        return c8782k;
    }

    Strength keyStrength() {
        return this.f38670h.mo2652b();
    }

    final Segment<K, V, E, S>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        C8756j.m2789l(k);
        C8756j.m2789l(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        C8756j.m2789l(k);
        C8756j.m2789l(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    void reclaimKey(E e) {
        int mo2695c = e.mo2695c();
        segmentFor(mo2695c).reclaimKey(e, mo2695c);
    }

    void reclaimValue(AbstractC8799v<K, V, E> abstractC8799v) {
        E mo2641a = abstractC8799v.mo2641a();
        int mo2695c = mo2641a.mo2695c();
        segmentFor(mo2695c).reclaimValue((K) mo2641a.getKey(), mo2695c, abstractC8799v);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        C8756j.m2789l(k);
        C8756j.m2789l(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        C8756j.m2789l(k);
        C8756j.m2789l(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    Segment<K, V, E, S> segmentFor(int i) {
        return this.f38669g[(i >>> this.f38668f) & this.f38667e];
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Segment<K, V, E, S>[] segmentArr;
        char c = 0;
        for (int i = 0; i < this.f38669g.length; i++) {
            c += segmentArr[i].count;
        }
        return C1974a.m28420a(c);
    }

    Equivalence<Object> valueEquivalence() {
        return this.f38670h.mo2651c().defaultEquivalence();
    }

    Strength valueStrength() {
        return this.f38670h.mo2651c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        C8791q c8791q = this.f38672j;
        if (c8791q == null) {
            c8791q = new C8791q();
            this.f38672j = c8791q;
        }
        return c8791q;
    }

    Object writeReplace() {
        return new SerializationProxy(this.f38670h.mo2652b(), this.f38670h.mo2651c(), this.keyEquivalence, this.f38670h.mo2651c().defaultEquivalence(), this.concurrencyLevel, this);
    }
}
