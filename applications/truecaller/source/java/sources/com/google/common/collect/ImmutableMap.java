package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/ImmutableMap.class */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    public transient ImmutableSet<Map.Entry<K, V>> entrySet;
    public transient ImmutableSet<K> keySet;
    public transient ImmutableCollection<V> values;

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/ImmutableMap$Builder.class */
    public static class Builder<K, V> {
        public Object[] alternatingKeysAndValues;
        public int size = 0;
        public boolean entriesUsed = false;

        public Builder(int i) {
            this.alternatingKeysAndValues = new Object[i * 2];
        }

        public ImmutableMap<K, V> build() {
            this.entriesUsed = true;
            return RegularImmutableMap.create(this.size, this.alternatingKeysAndValues);
        }

        public Builder<K, V> put(K k, V v) {
            int i = (this.size + 1) * 2;
            Object[] objArr = this.alternatingKeysAndValues;
            if (i > objArr.length) {
                this.alternatingKeysAndValues = Arrays.copyOf(objArr, ImmutableCollection.Builder.expandedCapacity(objArr.length, i));
                this.entriesUsed = false;
            }
            C26232y.checkEntryNotNull(k, v);
            Object[] objArr2 = this.alternatingKeysAndValues;
            int i2 = this.size;
            int i3 = i2 * 2;
            objArr2[i3] = k;
            objArr2[i3 + 1] = v;
            this.size = i2 + 1;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/ImmutableMap$SerializedForm.class */
    public static class SerializedForm<K, V> implements Serializable {
        public final Object keys;
        public final Object values;

        public SerializedForm(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            UnmodifiableIterator it = immutableMap.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i] = entry.getKey();
                objArr2[i] = entry.getValue();
                i++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }

        public final Object readResolve() {
            Object obj = this.keys;
            int i = 0;
            if (!(obj instanceof ImmutableSet)) {
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) this.values;
                Object[] objArr3 = new Object[objArr.length * 2];
                int i2 = 0;
                while (i < objArr.length) {
                    Object obj2 = objArr[i];
                    Object obj3 = objArr2[i];
                    int i3 = i2 + 1;
                    int i4 = i3 * 2;
                    Object[] objArr4 = objArr3;
                    if (i4 > objArr3.length) {
                        objArr4 = Arrays.copyOf(objArr3, ImmutableCollection.Builder.expandedCapacity(objArr3.length, i4));
                    }
                    C26232y.checkEntryNotNull(obj2, obj3);
                    int i5 = i2 * 2;
                    objArr4[i5] = obj2;
                    objArr4[i5 + 1] = obj3;
                    i++;
                    i2 = i3;
                    objArr3 = objArr4;
                }
                return RegularImmutableMap.create(i2, objArr3);
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            ImmutableCollection immutableCollection = (ImmutableCollection) this.values;
            Object[] objArr5 = new Object[immutableSet.size() * 2];
            UnmodifiableIterator it = immutableSet.iterator();
            UnmodifiableIterator it2 = immutableCollection.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                Object next2 = it2.next();
                int i7 = i6 + 1;
                int i8 = i7 * 2;
                Object[] objArr6 = objArr5;
                if (i8 > objArr5.length) {
                    objArr6 = Arrays.copyOf(objArr5, ImmutableCollection.Builder.expandedCapacity(objArr5.length, i8));
                }
                C26232y.checkEntryNotNull(next, next2);
                int i9 = i6 * 2;
                objArr6[i9] = next;
                objArr6[i9 + 1] = next2;
                i6 = i7;
                objArr5 = objArr6;
            }
            return RegularImmutableMap.create(i6, objArr5);
        }
    }

    public static <K, V> Builder<K, V> builderWithExpectedSize(int i) {
        C26232y.checkNonnegative(i, "expectedSize");
        return new Builder<>(i);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m38322of(K k, V v, K k2, V v2, K k3, V v3) {
        C26232y.checkEntryNotNull(k, v);
        C26232y.checkEntryNotNull(k2, v2);
        C26232y.checkEntryNotNull(k3, v3);
        return RegularImmutableMap.create(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m38321of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        C26232y.checkEntryNotNull(k, v);
        C26232y.checkEntryNotNull(k2, v2);
        C26232y.checkEntryNotNull(k3, v3);
        C26232y.checkEntryNotNull(k4, v4);
        return RegularImmutableMap.create(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        ImmutableCollection<V> immutableCollection = this.values;
        ImmutableCollection<V> immutableCollection2 = immutableCollection;
        if (immutableCollection == null) {
            immutableCollection2 = createValues();
            this.values = immutableCollection2;
        }
        return immutableCollection2.contains(obj);
    }

    public abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    public abstract ImmutableSet<K> createKeySet();

    public abstract ImmutableCollection<V> createValues();

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entrySet;
        ImmutableSet<Map.Entry<K, V>> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = createEntrySet();
            this.entrySet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return this == obj ? true : obj instanceof Map ? entrySet().equals(((Map) obj).entrySet()) : false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return Collections2.hashCodeImpl(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public Set keySet() {
        ImmutableSet<K> immutableSet = this.keySet;
        ImmutableSet<K> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = createKeySet();
            this.keySet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        C26232y.checkNonnegative(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection values() {
        ImmutableCollection<V> immutableCollection = this.values;
        ImmutableCollection<V> immutableCollection2 = immutableCollection;
        if (immutableCollection == null) {
            immutableCollection2 = createValues();
            this.values = immutableCollection2;
        }
        return immutableCollection2;
    }

    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
