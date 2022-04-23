package com.google.common.collect;

import com.google.common.base.j;
import com.google.common.base.m;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/k.class */
public final class k<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f32085d = new Object();

    /* renamed from: a  reason: collision with root package name */
    transient int[] f32086a;

    /* renamed from: b  reason: collision with root package name */
    transient Object[] f32087b;

    /* renamed from: c  reason: collision with root package name */
    transient Object[] f32088c;
    private transient Object e;
    private transient int f;
    private transient int g;
    private transient Set<K> h;
    private transient Set<Map.Entry<K, V>> i;
    private transient Collection<V> j;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$a.class */
    final class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map<K, V> c2 = k.this.c();
            if (c2 != null) {
                return c2.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = k.this.a(entry.getKey());
            return a2 != -1 && j.a(k.this.f32088c[a2], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return k.this.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int h;
            int a2;
            Map<K, V> c2 = k.this.c();
            if (c2 != null) {
                return c2.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (k.this.b() || (a2 = l.a(entry.getKey(), entry.getValue(), (h = k.this.h()), k.this.e, k.this.f32086a, k.this.f32087b, k.this.f32088c)) == -1) {
                return false;
            }
            k.this.a(a2, h);
            k.d(k.this);
            k.this.d();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return k.this.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$b.class */
    abstract class b<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        int f32093b;

        /* renamed from: c  reason: collision with root package name */
        int f32094c;

        /* renamed from: d  reason: collision with root package name */
        int f32095d;

        private b() {
            this.f32093b = k.this.f;
            this.f32094c = k.this.e();
            this.f32095d = -1;
        }

        private void a() {
            if (k.this.f != this.f32093b) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32094c >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i = this.f32094c;
                this.f32095d = i;
                T a2 = a(i);
                this.f32094c = k.this.b(this.f32094c);
                return a2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            m.b(this.f32095d >= 0, "no calls to next() since the last call to remove()");
            this.f32093b += 32;
            k kVar = k.this;
            kVar.remove(kVar.f32087b[this.f32095d]);
            this.f32094c = k.c(this.f32094c);
            this.f32095d = -1;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$c.class */
    final class c extends AbstractSet<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return k.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            final k kVar = k.this;
            Map<K, V> c2 = kVar.c();
            return c2 != null ? c2.keySet().iterator() : new k<K, V>.b<K>() { // from class: com.google.common.collect.k.1
                @Override // com.google.common.collect.k.b
                final K a(int i) {
                    return (K) k.this.f32087b[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map<K, V> c2 = k.this.c();
            return c2 != null ? c2.keySet().remove(obj) : k.this.b(obj) != k.f32085d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return k.this.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$d.class */
    final class d extends com.google.common.collect.e<K, V> {

        /* renamed from: b  reason: collision with root package name */
        private final K f32098b;

        /* renamed from: c  reason: collision with root package name */
        private int f32099c;

        d(int i) {
            this.f32098b = (K) k.this.f32087b[i];
            this.f32099c = i;
        }

        private void a() {
            int i = this.f32099c;
            if (i == -1 || i >= k.this.size() || !j.a(this.f32098b, k.this.f32087b[this.f32099c])) {
                this.f32099c = k.this.a(this.f32098b);
            }
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final K getKey() {
            return this.f32098b;
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final V getValue() {
            Map<K, V> c2 = k.this.c();
            if (c2 != null) {
                return c2.get(this.f32098b);
            }
            a();
            if (this.f32099c == -1) {
                return null;
            }
            return (V) k.this.f32088c[this.f32099c];
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final V setValue(V v) {
            Map<K, V> c2 = k.this.c();
            if (c2 != null) {
                return c2.put(this.f32098b, v);
            }
            a();
            if (this.f32099c == -1) {
                k.this.put(this.f32098b, v);
                return null;
            }
            V v2 = (V) k.this.f32088c[this.f32099c];
            k.this.f32088c[this.f32099c] = v;
            return v2;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$e.class */
    final class e extends AbstractCollection<V> {
        e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            final k kVar = k.this;
            Map<K, V> c2 = kVar.c();
            return c2 != null ? c2.values().iterator() : new k<K, V>.b<V>() { // from class: com.google.common.collect.k.3
                @Override // com.google.common.collect.k.b
                final V a(int i) {
                    return (V) k.this.f32088c[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return k.this.size();
        }
    }

    k() {
        d(3);
    }

    k(int i) {
        d(i);
    }

    private int a(int i, int i2, int i3, int i4) {
        Object a2 = l.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            l.a(a2, i3 & i5, i4 + 1);
        }
        Object obj = this.e;
        int[] iArr = this.f32086a;
        for (int i6 = 0; i6 <= i; i6++) {
            int a3 = l.a(obj, i6);
            while (a3 != 0) {
                int i7 = a3 - 1;
                int i8 = iArr[i7];
                int i9 = ((i ^ (-1)) & i8) | i6;
                int i10 = i9 & i5;
                int a4 = l.a(a2, i10);
                l.a(a2, i10, a3);
                iArr[i7] = l.a(i9, a4, i5);
                a3 = i8 & i;
            }
        }
        this.e = a2;
        e(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(Object obj) {
        int i;
        if (b()) {
            return -1;
        }
        int a2 = s.a(obj);
        int h = h();
        int a3 = l.a(this.e, a2 & h);
        if (a3 == 0) {
            return -1;
        }
        int i2 = h ^ (-1);
        do {
            int i3 = a3 - 1;
            int i4 = this.f32086a[i3];
            if ((i4 & i2) == (a2 & i2) && j.a(obj, this.f32087b[i3])) {
                return i3;
            }
            i = i4 & h;
            a3 = i;
        } while (i != 0);
        return -1;
    }

    public static <K, V> k<K, V> a() {
        return new k<>();
    }

    public static <K, V> k<K, V> a(int i) {
        return new k<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object b(Object obj) {
        int h;
        int a2;
        if (!b() && (a2 = l.a(obj, null, (h = h()), this.e, this.f32086a, this.f32087b, null)) != -1) {
            Object obj2 = this.f32088c[a2];
            a(a2, h);
            this.g--;
            d();
            return obj2;
        }
        return f32085d;
    }

    static int c(int i) {
        return i - 1;
    }

    static /* synthetic */ int d(k kVar) {
        int i = kVar.g;
        kVar.g = i - 1;
        return i;
    }

    private void d(int i) {
        m.a(i >= 0, "Expected size must be >= 0");
        this.f = com.google.common.b.b.a(i, 1);
    }

    private void e(int i) {
        this.f = l.a(this.f, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h() {
        return (1 << (this.f & 31)) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            d(readInt);
            for (int i = 0; i < readInt; i++) {
                put(objectInputStream.readObject(), objectInputStream.readObject());
            }
            return;
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Invalid size: ");
        sb.append(readInt);
        throw new InvalidObjectException(sb.toString());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> f = f();
        while (f.hasNext()) {
            Map.Entry<K, V> next = f.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    final void a(int i, int i2) {
        int i3;
        int[] iArr;
        int i4;
        int size = size() - 1;
        if (i < size) {
            Object[] objArr = this.f32087b;
            Object obj = objArr[size];
            objArr[i] = obj;
            Object[] objArr2 = this.f32088c;
            objArr2[i] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            int[] iArr2 = this.f32086a;
            iArr2[i] = iArr2[size];
            iArr2[size] = 0;
            int a2 = s.a(obj) & i2;
            int a3 = l.a(this.e, a2);
            int i5 = size + 1;
            int i6 = a3;
            if (a3 == i5) {
                l.a(this.e, a2, i + 1);
                return;
            }
            do {
                i3 = i6 - 1;
                iArr = this.f32086a;
                i4 = iArr[i3];
                i6 = i4 & i2;
            } while (i6 != i5);
            iArr[i3] = l.a(i4, i + 1, i2);
            return;
        }
        this.f32087b[i] = null;
        this.f32088c[i] = null;
        this.f32086a[i] = 0;
    }

    final int b(int i) {
        int i2 = i + 1;
        if (i2 < this.g) {
            return i2;
        }
        return -1;
    }

    final boolean b() {
        return this.e == null;
    }

    final Map<K, V> c() {
        Object obj = this.e;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (!b()) {
            d();
            Map<K, V> c2 = c();
            if (c2 != null) {
                this.f = com.google.common.b.b.a(size(), 3);
                c2.clear();
                this.e = null;
                this.g = 0;
                return;
            }
            Arrays.fill(this.f32087b, 0, this.g, (Object) null);
            Arrays.fill(this.f32088c, 0, this.g, (Object) null);
            Object obj = this.e;
            if (obj instanceof byte[]) {
                Arrays.fill((byte[]) obj, (byte) 0);
            } else if (obj instanceof short[]) {
                Arrays.fill((short[]) obj, (short) 0);
            } else {
                Arrays.fill((int[]) obj, 0);
            }
            Arrays.fill(this.f32086a, 0, this.g, 0);
            this.g = 0;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> c2 = c();
        return c2 != null ? c2.containsKey(obj) : a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> c2 = c();
        if (c2 != null) {
            return c2.containsValue(obj);
        }
        for (int i = 0; i < this.g; i++) {
            if (j.a(obj, this.f32088c[i])) {
                return true;
            }
        }
        return false;
    }

    final void d() {
        this.f += 32;
    }

    final int e() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.i;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new a();
            this.i = set2;
        }
        return set2;
    }

    final Iterator<Map.Entry<K, V>> f() {
        Map<K, V> c2 = c();
        return c2 != null ? c2.entrySet().iterator() : new k<K, V>.b<Map.Entry<K, V>>() { // from class: com.google.common.collect.k.2
            @Override // com.google.common.collect.k.b
            final /* synthetic */ Object a(int i) {
                return new d(i);
            }
        };
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> c2 = c();
        if (c2 != null) {
            return c2.get(obj);
        }
        int a2 = a(obj);
        if (a2 == -1) {
            return null;
        }
        return (V) this.f32088c[a2];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.h;
        Set<K> set2 = set;
        if (set == null) {
            set2 = new c();
            this.h = set2;
        }
        return set2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (b()) {
            m.b(b(), "Arrays already allocated");
            int i4 = this.f;
            int max = Math.max(i4 + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            int i5 = highestOneBit;
            if (max > ((int) (highestOneBit * 1.0d))) {
                int i6 = highestOneBit << 1;
                i5 = i6;
                if (i6 <= 0) {
                    i5 = 1073741824;
                }
            }
            int max2 = Math.max(4, i5);
            this.e = l.a(max2);
            e(max2 - 1);
            this.f32086a = new int[i4];
            this.f32087b = new Object[i4];
            this.f32088c = new Object[i4];
        }
        Map<K, V> c2 = c();
        if (c2 != null) {
            return c2.put(k, v);
        }
        int[] iArr = this.f32086a;
        Object[] objArr = this.f32087b;
        Object[] objArr2 = this.f32088c;
        int i7 = this.g;
        int i8 = i7 + 1;
        int a2 = s.a(k);
        int h = h();
        int i9 = a2 & h;
        int a3 = l.a(this.e, i9);
        if (a3 != 0) {
            int i10 = h ^ (-1);
            int i11 = 0;
            do {
                i2 = a3 - 1;
                i3 = iArr[i2];
                if ((i3 & i10) != (a2 & i10) || !j.a(k, objArr[i2])) {
                    a3 = i3 & h;
                    i11++;
                } else {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    return v2;
                }
            } while (a3 != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(h() + 1, 1.0f);
                int e2 = e();
                while (e2 >= 0) {
                    linkedHashMap.put(this.f32087b[e2], this.f32088c[e2]);
                    e2 = b(e2);
                }
                this.e = linkedHashMap;
                this.f32086a = null;
                this.f32087b = null;
                this.f32088c = null;
                d();
                return (V) linkedHashMap.put(k, v);
            } else if (i8 > h) {
                i = a(h, l.b(h), a2, i7);
            } else {
                iArr[i2] = l.a(i3, i8, h);
                i = h;
            }
        } else if (i8 > h) {
            i = a(h, l.b(h), a2, i7);
        } else {
            l.a(this.e, i9, i8);
            i = h;
        }
        int length = this.f32086a.length;
        if (i8 > length && (min = Math.min(1073741823, 1 | (Math.max(1, length >>> 1) + length))) != length) {
            this.f32086a = Arrays.copyOf(this.f32086a, min);
            this.f32087b = Arrays.copyOf(this.f32087b, min);
            this.f32088c = Arrays.copyOf(this.f32088c, min);
        }
        this.f32086a[i7] = l.a(a2, 0, i);
        this.f32087b[i7] = k;
        this.f32088c[i7] = v;
        this.g = i8;
        d();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> c2 = c();
        if (c2 != null) {
            return c2.remove(obj);
        }
        Object b2 = b(obj);
        V v = (V) b2;
        if (b2 == f32085d) {
            v = null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> c2 = c();
        return c2 != null ? c2.size() : this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.j;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = new e();
            this.j = collection2;
        }
        return collection2;
    }
}
