package com.google.common.collect;

import com.google.common.base.C15386j;
import com.google.common.base.C15391m;
import com.google.common.p386b.C15361b;
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
/* renamed from: com.google.common.collect.k */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/k.class */
public final class C15526k<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: d */
    private static final Object f55818d = new Object();

    /* renamed from: a */
    transient int[] f55819a;

    /* renamed from: b */
    transient Object[] f55820b;

    /* renamed from: c */
    transient Object[] f55821c;

    /* renamed from: e */
    private transient Object f55822e;

    /* renamed from: f */
    private transient int f55823f;

    /* renamed from: g */
    private transient int f55824g;

    /* renamed from: h */
    private transient Set<K> f55825h;

    /* renamed from: i */
    private transient Set<Map.Entry<K, V>> f55826i;

    /* renamed from: j */
    private transient Collection<V> f55827j;

    /* renamed from: com.google.common.collect.k$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$a.class */
    final class C15530a extends AbstractSet<Map.Entry<K, V>> {
        C15530a() {
            C15526k.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C15526k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map<K, V> m8766c = C15526k.this.m8766c();
            if (m8766c != null) {
                return m8766c.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int m8772a = C15526k.this.m8772a(entry.getKey());
            return m8772a != -1 && C15386j.m8951a(C15526k.this.f55821c[m8772a], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return C15526k.this.m8758f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int m8756h;
            int m8748a;
            Map<K, V> m8766c = C15526k.this.m8766c();
            if (m8766c != null) {
                return m8766c.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (C15526k.this.m8771b() || (m8748a = C15535l.m8748a(entry.getKey(), entry.getValue(), (m8756h = C15526k.this.m8756h()), C15526k.this.f55822e, C15526k.this.f55819a, C15526k.this.f55820b, C15526k.this.f55821c)) == -1) {
                return false;
            }
            C15526k.this.m8776a(m8748a, m8756h);
            C15526k.m8761d(C15526k.this);
            C15526k.this.m8763d();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C15526k.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.k$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$b.class */
    public abstract class AbstractC15531b<T> implements Iterator<T> {

        /* renamed from: b */
        int f55832b;

        /* renamed from: c */
        int f55833c;

        /* renamed from: d */
        int f55834d;

        private AbstractC15531b() {
            C15526k.this = r4;
            this.f55832b = r4.f55823f;
            this.f55833c = r4.m8760e();
            this.f55834d = -1;
        }

        /* renamed from: a */
        private void m8755a() {
            if (C15526k.this.f55823f == this.f55832b) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        /* renamed from: a */
        abstract T mo8754a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55833c >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            m8755a();
            if (hasNext()) {
                int i = this.f55833c;
                this.f55834d = i;
                T mo8754a = mo8754a(i);
                this.f55833c = C15526k.this.m8770b(this.f55833c);
                return mo8754a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            m8755a();
            C15391m.m8933b(this.f55834d >= 0, "no calls to next() since the last call to remove()");
            this.f55832b += 32;
            C15526k c15526k = C15526k.this;
            c15526k.remove(c15526k.f55820b[this.f55834d]);
            this.f55833c = C15526k.m8765c(this.f55833c);
            this.f55834d = -1;
        }
    }

    /* renamed from: com.google.common.collect.k$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$c.class */
    final class C15532c extends AbstractSet<K> {
        C15532c() {
            C15526k.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C15526k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return C15526k.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            final C15526k c15526k = C15526k.this;
            Map<K, V> m8766c = c15526k.m8766c();
            return m8766c != null ? m8766c.keySet().iterator() : new C15526k<K, V>.AbstractC15531b<K>() { // from class: com.google.common.collect.k.1
                @Override // com.google.common.collect.C15526k.AbstractC15531b
                /* renamed from: a */
                final K mo8754a(int i) {
                    return (K) c15526k.f55820b[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map<K, V> m8766c = C15526k.this.m8766c();
            return m8766c != null ? m8766c.keySet().remove(obj) : C15526k.this.m8767b(obj) != C15526k.f55818d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C15526k.this.size();
        }
    }

    /* renamed from: com.google.common.collect.k$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$d.class */
    final class C15533d extends AbstractC15517e<K, V> {

        /* renamed from: b */
        private final K f55838b;

        /* renamed from: c */
        private int f55839c;

        C15533d(int i) {
            C15526k.this = r5;
            this.f55838b = (K) r5.f55820b[i];
            this.f55839c = i;
        }

        /* renamed from: a */
        private void m8753a() {
            int i = this.f55839c;
            if (i == -1 || i >= C15526k.this.size() || !C15386j.m8951a(this.f55838b, C15526k.this.f55820b[this.f55839c])) {
                this.f55839c = C15526k.this.m8772a(this.f55838b);
            }
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final K getKey() {
            return this.f55838b;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final V getValue() {
            Map<K, V> m8766c = C15526k.this.m8766c();
            if (m8766c != null) {
                return m8766c.get(this.f55838b);
            }
            m8753a();
            if (this.f55839c != -1) {
                return (V) C15526k.this.f55821c[this.f55839c];
            }
            return null;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final V setValue(V v) {
            Map<K, V> m8766c = C15526k.this.m8766c();
            if (m8766c != null) {
                return m8766c.put(this.f55838b, v);
            }
            m8753a();
            if (this.f55839c == -1) {
                C15526k.this.put(this.f55838b, v);
                return null;
            }
            V v2 = (V) C15526k.this.f55821c[this.f55839c];
            C15526k.this.f55821c[this.f55839c] = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.k$e */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/k$e.class */
    final class C15534e extends AbstractCollection<V> {
        C15534e() {
            C15526k.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            C15526k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            final C15526k c15526k = C15526k.this;
            Map<K, V> m8766c = c15526k.m8766c();
            return m8766c != null ? m8766c.values().iterator() : new C15526k<K, V>.AbstractC15531b<V>() { // from class: com.google.common.collect.k.3
                @Override // com.google.common.collect.C15526k.AbstractC15531b
                /* renamed from: a */
                final V mo8754a(int i) {
                    return (V) c15526k.f55821c[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return C15526k.this.size();
        }
    }

    C15526k() {
        m8762d(3);
    }

    C15526k(int i) {
        m8762d(i);
    }

    /* renamed from: a */
    private int m8775a(int i, int i2, int i3, int i4) {
        Object m8752a = C15535l.m8752a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            C15535l.m8749a(m8752a, i3 & i5, i4 + 1);
        }
        Object obj = this.f55822e;
        int[] iArr = this.f55819a;
        for (int i6 = 0; i6 <= i; i6++) {
            int m8750a = C15535l.m8750a(obj, i6);
            while (true) {
                int i7 = m8750a;
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    int i9 = iArr[i8];
                    int i10 = ((i ^ (-1)) & i9) | i6;
                    int i11 = i10 & i5;
                    int m8750a2 = C15535l.m8750a(m8752a, i11);
                    C15535l.m8749a(m8752a, i11, i7);
                    iArr[i8] = C15535l.m8751a(i10, m8750a2, i5);
                    m8750a = i9 & i;
                }
            }
        }
        this.f55822e = m8752a;
        m8759e(i5);
        return i5;
    }

    /* renamed from: a */
    public int m8772a(Object obj) {
        int i;
        if (m8771b()) {
            return -1;
        }
        int m8731a = C15544s.m8731a(obj);
        int m8756h = m8756h();
        int m8750a = C15535l.m8750a(this.f55822e, m8731a & m8756h);
        if (m8750a == 0) {
            return -1;
        }
        int i2 = m8756h ^ (-1);
        do {
            int i3 = m8750a - 1;
            int i4 = this.f55819a[i3];
            if ((i4 & i2) == (m8731a & i2) && C15386j.m8951a(obj, this.f55820b[i3])) {
                return i3;
            }
            i = i4 & m8756h;
            m8750a = i;
        } while (i != 0);
        return -1;
    }

    /* renamed from: a */
    public static <K, V> C15526k<K, V> m8778a() {
        return new C15526k<>();
    }

    /* renamed from: a */
    public static <K, V> C15526k<K, V> m8777a(int i) {
        return new C15526k<>(i);
    }

    /* renamed from: b */
    public Object m8767b(Object obj) {
        int m8756h;
        int m8748a;
        if (!m8771b() && (m8748a = C15535l.m8748a(obj, null, (m8756h = m8756h()), this.f55822e, this.f55819a, this.f55820b, null)) != -1) {
            Object obj2 = this.f55821c[m8748a];
            m8776a(m8748a, m8756h);
            this.f55824g--;
            m8763d();
            return obj2;
        }
        return f55818d;
    }

    /* renamed from: c */
    static int m8765c(int i) {
        return i - 1;
    }

    /* renamed from: d */
    static /* synthetic */ int m8761d(C15526k c15526k) {
        int i = c15526k.f55824g;
        c15526k.f55824g = i - 1;
        return i;
    }

    /* renamed from: d */
    private void m8762d(int i) {
        C15391m.m8942a(i >= 0, "Expected size must be >= 0");
        this.f55823f = C15361b.m8981a(i, 1);
    }

    /* renamed from: e */
    private void m8759e(int i) {
        this.f55823f = C15535l.m8751a(this.f55823f, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    /* renamed from: h */
    public int m8756h() {
        return (1 << (this.f55823f & 31)) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        m8762d(readInt);
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> m8758f = m8758f();
        while (m8758f.hasNext()) {
            Map.Entry<K, V> next = m8758f.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    /* renamed from: a */
    final void m8776a(int i, int i2) {
        int i3;
        int[] iArr;
        int i4;
        int size = size() - 1;
        if (i >= size) {
            this.f55820b[i] = null;
            this.f55821c[i] = null;
            this.f55819a[i] = 0;
            return;
        }
        Object[] objArr = this.f55820b;
        Object obj = objArr[size];
        objArr[i] = obj;
        Object[] objArr2 = this.f55821c;
        objArr2[i] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        int[] iArr2 = this.f55819a;
        iArr2[i] = iArr2[size];
        iArr2[size] = 0;
        int m8731a = C15544s.m8731a(obj) & i2;
        int m8750a = C15535l.m8750a(this.f55822e, m8731a);
        int i5 = size + 1;
        int i6 = m8750a;
        if (m8750a == i5) {
            C15535l.m8749a(this.f55822e, m8731a, i + 1);
            return;
        }
        do {
            i3 = i6 - 1;
            iArr = this.f55819a;
            i4 = iArr[i3];
            i6 = i4 & i2;
        } while (i6 != i5);
        iArr[i3] = C15535l.m8751a(i4, i + 1, i2);
    }

    /* renamed from: b */
    final int m8770b(int i) {
        int i2 = i + 1;
        if (i2 < this.f55824g) {
            return i2;
        }
        return -1;
    }

    /* renamed from: b */
    final boolean m8771b() {
        return this.f55822e == null;
    }

    /* renamed from: c */
    final Map<K, V> m8766c() {
        Object obj = this.f55822e;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m8771b()) {
            return;
        }
        m8763d();
        Map<K, V> m8766c = m8766c();
        if (m8766c != null) {
            this.f55823f = C15361b.m8981a(size(), 3);
            m8766c.clear();
            this.f55822e = null;
            this.f55824g = 0;
            return;
        }
        Arrays.fill(this.f55820b, 0, this.f55824g, (Object) null);
        Arrays.fill(this.f55821c, 0, this.f55824g, (Object) null);
        Object obj = this.f55822e;
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(this.f55819a, 0, this.f55824g, 0);
        this.f55824g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> m8766c = m8766c();
        return m8766c != null ? m8766c.containsKey(obj) : m8772a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> m8766c = m8766c();
        if (m8766c != null) {
            return m8766c.containsValue(obj);
        }
        for (int i = 0; i < this.f55824g; i++) {
            if (C15386j.m8951a(obj, this.f55821c[i])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    final void m8763d() {
        this.f55823f += 32;
    }

    /* renamed from: e */
    final int m8760e() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f55826i;
        C15530a c15530a = set;
        if (set == null) {
            c15530a = new C15530a();
            this.f55826i = c15530a;
        }
        return c15530a;
    }

    /* renamed from: f */
    final Iterator<Map.Entry<K, V>> m8758f() {
        Map<K, V> m8766c = m8766c();
        return m8766c != null ? m8766c.entrySet().iterator() : new C15526k<K, V>.AbstractC15531b<Map.Entry<K, V>>() { // from class: com.google.common.collect.k.2
            @Override // com.google.common.collect.C15526k.AbstractC15531b
            /* renamed from: a */
            final /* synthetic */ Object mo8754a(int i) {
                return new C15533d(i);
            }
        };
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> m8766c = m8766c();
        if (m8766c != null) {
            return m8766c.get(obj);
        }
        int m8772a = m8772a(obj);
        if (m8772a != -1) {
            return (V) this.f55821c[m8772a];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f55825h;
        C15532c c15532c = set;
        if (set == null) {
            c15532c = new C15532c();
            this.f55825h = c15532c;
        }
        return c15532c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (m8771b()) {
            C15391m.m8933b(m8771b(), "Arrays already allocated");
            int i4 = this.f55823f;
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
            this.f55822e = C15535l.m8752a(max2);
            m8759e(max2 - 1);
            this.f55819a = new int[i4];
            this.f55820b = new Object[i4];
            this.f55821c = new Object[i4];
        }
        Map<K, V> m8766c = m8766c();
        if (m8766c != null) {
            return m8766c.put(k, v);
        }
        int[] iArr = this.f55819a;
        Object[] objArr = this.f55820b;
        Object[] objArr2 = this.f55821c;
        int i7 = this.f55824g;
        int i8 = i7 + 1;
        int m8731a = C15544s.m8731a(k);
        int m8756h = m8756h();
        int i9 = m8731a & m8756h;
        int m8750a = C15535l.m8750a(this.f55822e, i9);
        if (m8750a != 0) {
            int i10 = m8756h ^ (-1);
            int i11 = 0;
            do {
                i2 = m8750a - 1;
                i3 = iArr[i2];
                if ((i3 & i10) == (m8731a & i10) && C15386j.m8951a(k, objArr[i2])) {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    return v2;
                }
                m8750a = i3 & m8756h;
                i11++;
            } while (m8750a != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(m8756h() + 1, 1.0f);
                int m8760e = m8760e();
                while (true) {
                    int i12 = m8760e;
                    if (i12 < 0) {
                        this.f55822e = linkedHashMap;
                        this.f55819a = null;
                        this.f55820b = null;
                        this.f55821c = null;
                        m8763d();
                        return (V) linkedHashMap.put(k, v);
                    }
                    linkedHashMap.put(this.f55820b[i12], this.f55821c[i12]);
                    m8760e = m8770b(i12);
                }
            } else if (i8 > m8756h) {
                i = m8775a(m8756h, C15535l.m8747b(m8756h), m8731a, i7);
            } else {
                iArr[i2] = C15535l.m8751a(i3, i8, m8756h);
                i = m8756h;
            }
        } else if (i8 > m8756h) {
            i = m8775a(m8756h, C15535l.m8747b(m8756h), m8731a, i7);
        } else {
            C15535l.m8749a(this.f55822e, i9, i8);
            i = m8756h;
        }
        int length = this.f55819a.length;
        if (i8 > length && (min = Math.min(1073741823, 1 | (Math.max(1, length >>> 1) + length))) != length) {
            this.f55819a = Arrays.copyOf(this.f55819a, min);
            this.f55820b = Arrays.copyOf(this.f55820b, min);
            this.f55821c = Arrays.copyOf(this.f55821c, min);
        }
        this.f55819a[i7] = C15535l.m8751a(m8731a, 0, i);
        this.f55820b[i7] = k;
        this.f55821c[i7] = v;
        this.f55824g = i8;
        m8763d();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> m8766c = m8766c();
        if (m8766c != null) {
            return m8766c.remove(obj);
        }
        Object m8767b = m8767b(obj);
        Object obj2 = m8767b;
        if (m8767b == f55818d) {
            obj2 = null;
        }
        return (V) obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> m8766c = m8766c();
        return m8766c != null ? m8766c.size() : this.f55824g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f55827j;
        C15534e c15534e = collection;
        if (collection == null) {
            c15534e = new C15534e();
            this.f55827j = c15534e;
        }
        return c15534e;
    }
}
