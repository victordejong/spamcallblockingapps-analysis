package com.google.common.util.concurrent;

import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AtomicLongMap.class */
public final class AtomicLongMap<K> implements Serializable {
    public transient Map<K, Long> asMap;
    public final ConcurrentHashMap<K, AtomicLong> map;

    /* renamed from: com.google.common.util.concurrent.AtomicLongMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AtomicLongMap$a.class */
    public class C7758a implements AbstractC4920g<AtomicLong, Long> {
        public C7758a(AtomicLongMap atomicLongMap) {
        }

        /* renamed from: a */
        public Long apply(AtomicLong atomicLong) {
            return Long.valueOf(atomicLong.get());
        }
    }

    public AtomicLongMap(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        C4933n.m24795a(concurrentHashMap);
        this.map = concurrentHashMap;
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> create = create();
        create.putAll(map);
        return create;
    }

    private Map<K, Long> createAsMap() {
        return Collections.unmodifiableMap(Maps.m8142a((Map) this.map, (AbstractC4920g) new C7758a(this)));
    }

    public long addAndGet(K k, long j) {
        AtomicLong atomicLong;
        do {
            AtomicLong atomicLong2 = this.map.get(k);
            atomicLong = atomicLong2;
            if (atomicLong2 == null) {
                AtomicLong putIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j));
                atomicLong = putIfAbsent;
                if (putIfAbsent == null) {
                    return j;
                }
            }
            while (true) {
                long j2 = atomicLong.get();
                if (j2 == 0) {
                    break;
                }
                long j3 = j2 + j;
                if (atomicLong.compareAndSet(j2, j3)) {
                    return j3;
                }
            }
        } while (!this.map.replace(k, atomicLong, new AtomicLong(j)));
        return j;
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.asMap;
        Map<K, Long> map2 = map;
        if (map == null) {
            map2 = createAsMap();
            this.asMap = map2;
        }
        return map2;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    public long decrementAndGet(K k) {
        return addAndGet(k, -1L);
    }

    public long get(K k) {
        AtomicLong atomicLong = this.map.get(k);
        return atomicLong == null ? 0L : atomicLong.get();
    }

    public long getAndAdd(K k, long j) {
        AtomicLong atomicLong;
        do {
            AtomicLong atomicLong2 = this.map.get(k);
            atomicLong = atomicLong2;
            if (atomicLong2 == null) {
                AtomicLong putIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j));
                atomicLong = putIfAbsent;
                if (putIfAbsent == null) {
                    return 0L;
                }
            }
            while (true) {
                long j2 = atomicLong.get();
                if (j2 == 0) {
                    break;
                } else if (atomicLong.compareAndSet(j2, j2 + j)) {
                    return j2;
                }
            }
        } while (!this.map.replace(k, atomicLong, new AtomicLong(j)));
        return 0L;
    }

    public long getAndDecrement(K k) {
        return getAndAdd(k, -1L);
    }

    public long getAndIncrement(K k) {
        return getAndAdd(k, 1L);
    }

    public long incrementAndGet(K k) {
        return addAndGet(k, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public long put(K k, long j) {
        AtomicLong atomicLong;
        do {
            AtomicLong atomicLong2 = this.map.get(k);
            atomicLong = atomicLong2;
            if (atomicLong2 == null) {
                AtomicLong putIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j));
                atomicLong = putIfAbsent;
                if (putIfAbsent == null) {
                    return 0L;
                }
            }
            while (true) {
                long j2 = atomicLong.get();
                if (j2 == 0) {
                    break;
                } else if (atomicLong.compareAndSet(j2, j)) {
                    return j2;
                }
            }
        } while (!this.map.replace(k, atomicLong, new AtomicLong(j)));
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void putAll(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            put(entry.getKey(), ((Long) entry.getValue()).longValue());
        }
    }

    public long putIfAbsent(K k, long j) {
        AtomicLong atomicLong;
        do {
            AtomicLong atomicLong2 = this.map.get(k);
            atomicLong = atomicLong2;
            if (atomicLong2 == null) {
                AtomicLong putIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j));
                atomicLong = putIfAbsent;
                if (putIfAbsent == null) {
                    return 0L;
                }
            }
            long j2 = atomicLong.get();
            if (j2 != 0) {
                return j2;
            }
        } while (!this.map.replace(k, atomicLong, new AtomicLong(j)));
        return 0L;
    }

    public long remove(K k) {
        long j;
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return 0L;
        }
        do {
            j = atomicLong.get();
            if (j == 0) {
                break;
            }
        } while (!atomicLong.compareAndSet(j, 0L));
        this.map.remove(k, atomicLong);
        return j;
    }

    public boolean remove(K k, long j) {
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return false;
        }
        long j2 = atomicLong.get();
        if (j2 != j) {
            return false;
        }
        if (j2 != 0 && !atomicLong.compareAndSet(j2, 0L)) {
            return false;
        }
        this.map.remove(k, atomicLong);
        return true;
    }

    public void removeAllZeros() {
        Iterator<Map.Entry<K, AtomicLong>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            AtomicLong value = it.next().getValue();
            if (value != null && value.get() == 0) {
                it.remove();
            }
        }
    }

    public boolean removeIfZero(K k) {
        return remove(k, 0L);
    }

    public boolean replace(K k, long j, long j2) {
        boolean z = false;
        boolean z2 = false;
        if (j == 0) {
            if (putIfAbsent(k, j2) == 0) {
                z2 = true;
            }
            return z2;
        }
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong != null) {
            z = atomicLong.compareAndSet(j, j2);
        }
        return z;
    }

    public int size() {
        return this.map.size();
    }

    public long sum() {
        long j = 0;
        for (AtomicLong atomicLong : this.map.values()) {
            j += atomicLong.get();
        }
        return j;
    }

    public String toString() {
        return this.map.toString();
    }
}
