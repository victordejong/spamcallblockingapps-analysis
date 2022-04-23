package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzem.class */
public final class zzem<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: o */
    private static final Object f8381o = new Object();
    @NullableDecl

    /* renamed from: f */
    private transient Object f8382f;
    @NullableDecl

    /* renamed from: g */
    transient int[] f8383g;
    @NullableDecl

    /* renamed from: h */
    transient Object[] f8384h;
    @NullableDecl

    /* renamed from: i */
    transient Object[] f8385i;

    /* renamed from: j */
    private transient int f8386j = zzfz.m12668a(3, 1, 1073741823);

    /* renamed from: k */
    private transient int f8387k;
    @NullableDecl

    /* renamed from: l */
    private transient Set<K> f8388l;
    @NullableDecl

    /* renamed from: m */
    private transient Set<Map.Entry<K, V>> f8389m;
    @NullableDecl

    /* renamed from: n */
    private transient Collection<V> f8390n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzem() {
        zzeb.m12737f(true, "Expected size must be >= 0");
    }

    /* renamed from: b */
    private final int m12729b(int i, int i2, int i3, int i4) {
        Object d = zzex.m12701d(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            zzex.m12700e(d, i3 & i5, i4 + 1);
        }
        Object obj = this.f8382f;
        int[] iArr = this.f8383g;
        for (int i6 = 0; i6 <= i; i6++) {
            int b = zzex.m12703b(obj, i6);
            while (b != 0) {
                int i7 = b - 1;
                int i8 = iArr[i7];
                int i9 = ((i ^ (-1)) & i8) | i6;
                int i10 = i9 & i5;
                int b2 = zzex.m12703b(d, i10);
                zzex.m12700e(d, i10, b);
                iArr[i7] = zzex.m12704a(i9, b2, i5);
                b = i8 & i;
            }
        }
        this.f8382f = d;
        m12718o(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final int m12727f(@NullableDecl Object obj) {
        int i;
        if (m12724i()) {
            return -1;
        }
        int b = zzez.m12697b(obj);
        int x = m12709x();
        int b2 = zzex.m12703b(this.f8382f, b & x);
        if (b2 == 0) {
            return -1;
        }
        int i2 = x ^ (-1);
        do {
            int i3 = b2 - 1;
            int i4 = this.f8383g[i3];
            if ((i4 & i2) == (b & i2) && zzdz.m12745a(obj, this.f8384h[i3])) {
                return i3;
            }
            i = i4 & x;
            b2 = i;
        } while (i != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m12723j(int i, int i2) {
        return i - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    /* renamed from: m */
    public final Object m12720m(@NullableDecl Object obj) {
        int x;
        int c;
        if (!m12724i() && (c = zzex.m12702c(obj, null, (x = m12709x()), this.f8382f, this.f8383g, this.f8384h, null)) != -1) {
            Object obj2 = this.f8385i[c];
            m12725h(c, x);
            this.f8387k--;
            m12716q();
            return obj2;
        }
        return f8381o;
    }

    /* renamed from: o */
    private final void m12718o(int i) {
        this.f8386j = zzex.m12704a(this.f8386j, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static /* synthetic */ int m12714s(zzem zzemVar) {
        int i = zzemVar.f8387k;
        zzemVar.f8387k = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public final int m12709x() {
        return (1 << (this.f8386j & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m12730a(int i) {
        int i2 = i + 1;
        if (i2 < this.f8387k) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (!m12724i()) {
            m12716q();
            Map<K, V> n = m12719n();
            if (n != null) {
                this.f8386j = zzfz.m12668a(size(), 3, 1073741823);
                n.clear();
                this.f8382f = null;
                this.f8387k = 0;
                return;
            }
            Arrays.fill(this.f8384h, 0, this.f8387k, (Object) null);
            Arrays.fill(this.f8385i, 0, this.f8387k, (Object) null);
            Object obj = this.f8382f;
            if (obj instanceof byte[]) {
                Arrays.fill((byte[]) obj, (byte) 0);
            } else if (obj instanceof short[]) {
                Arrays.fill((short[]) obj, (short) 0);
            } else {
                Arrays.fill((int[]) obj, 0);
            }
            Arrays.fill(this.f8383g, 0, this.f8387k, 0);
            this.f8387k = 0;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@NullableDecl Object obj) {
        Map<K, V> n = m12719n();
        return n != null ? n.containsKey(obj) : m12727f(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@NullableDecl Object obj) {
        Map<K, V> n = m12719n();
        if (n != null) {
            return n.containsValue(obj);
        }
        for (int i = 0; i < this.f8387k; i++) {
            if (zzdz.m12745a(obj, this.f8385i[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f8389m;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new zzeq(this);
            this.f8389m = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(@NullableDecl Object obj) {
        Map<K, V> n = m12719n();
        if (n != null) {
            return n.get(obj);
        }
        int f = m12727f(obj);
        if (f == -1) {
            return null;
        }
        return (V) this.f8385i[f];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m12725h(int i, int i2) {
        int i3;
        int[] iArr;
        int i4;
        int size = size() - 1;
        if (i < size) {
            Object[] objArr = this.f8384h;
            Object obj = objArr[size];
            objArr[i] = obj;
            Object[] objArr2 = this.f8385i;
            objArr2[i] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            int[] iArr2 = this.f8383g;
            iArr2[i] = iArr2[size];
            iArr2[size] = 0;
            int b = zzez.m12697b(obj) & i2;
            int b2 = zzex.m12703b(this.f8382f, b);
            int i5 = size + 1;
            int i6 = b2;
            if (b2 == i5) {
                zzex.m12700e(this.f8382f, b, i + 1);
                return;
            }
            do {
                i3 = i6 - 1;
                iArr = this.f8383g;
                i4 = iArr[i3];
                i6 = i4 & i2;
            } while (i6 != i5);
            iArr[i3] = zzex.m12704a(i4, i + 1, i2);
            return;
        }
        this.f8384h[i] = null;
        this.f8385i[i] = null;
        this.f8383g[i] = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final boolean m12724i() {
        return this.f8382f == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f8388l;
        Set<K> set2 = set;
        if (set == null) {
            set2 = new zzes(this);
            this.f8388l = set2;
        }
        return set2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    /* renamed from: n */
    public final Map<K, V> m12719n() {
        Object obj = this.f8382f;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public final V put(@NullableDecl K k, @NullableDecl V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (m12724i()) {
            zzeb.m12735h(m12724i(), "Arrays already allocated");
            int i4 = this.f8386j;
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
            this.f8382f = zzex.m12701d(max2);
            m12718o(max2 - 1);
            this.f8383g = new int[i4];
            this.f8384h = new Object[i4];
            this.f8385i = new Object[i4];
        }
        Map<K, V> n = m12719n();
        if (n != null) {
            return n.put(k, v);
        }
        int[] iArr = this.f8383g;
        Object[] objArr = this.f8384h;
        Object[] objArr2 = this.f8385i;
        int i7 = this.f8387k;
        int i8 = i7 + 1;
        int b = zzez.m12697b(k);
        int x = m12709x();
        int i9 = b & x;
        int b2 = zzex.m12703b(this.f8382f, i9);
        if (b2 != 0) {
            int i10 = x ^ (-1);
            int i11 = 0;
            do {
                i2 = b2 - 1;
                i3 = iArr[i2];
                if ((i3 & i10) != (b & i10) || !zzdz.m12745a(k, objArr[i2])) {
                    b2 = i3 & x;
                    i11++;
                } else {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    return v2;
                }
            } while (b2 != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(m12709x() + 1, 1.0f);
                int r = m12715r();
                while (r >= 0) {
                    linkedHashMap.put(this.f8384h[r], this.f8385i[r]);
                    r = m12730a(r);
                }
                this.f8382f = linkedHashMap;
                this.f8383g = null;
                this.f8384h = null;
                this.f8385i = null;
                m12716q();
                return (V) linkedHashMap.put(k, v);
            } else if (i8 > x) {
                i = m12729b(x, zzex.m12699f(x), b, i7);
            } else {
                iArr[i2] = zzex.m12704a(i3, i8, x);
                i = x;
            }
        } else if (i8 > x) {
            i = m12729b(x, zzex.m12699f(x), b, i7);
        } else {
            zzex.m12700e(this.f8382f, i9, i8);
            i = x;
        }
        int length = this.f8383g.length;
        if (i8 > length && (min = Math.min(1073741823, 1 | (Math.max(1, length >>> 1) + length))) != length) {
            this.f8383g = Arrays.copyOf(this.f8383g, min);
            this.f8384h = Arrays.copyOf(this.f8384h, min);
            this.f8385i = Arrays.copyOf(this.f8385i, min);
        }
        this.f8383g[i7] = zzex.m12704a(b, 0, i);
        this.f8384h[i7] = k;
        this.f8385i[i7] = v;
        this.f8387k = i8;
        m12716q();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final void m12716q() {
        this.f8386j += 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public final int m12715r() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public final V remove(@NullableDecl Object obj) {
        Map<K, V> n = m12719n();
        if (n != null) {
            return n.remove(obj);
        }
        Object m = m12720m(obj);
        V v = (V) m;
        if (m == f8381o) {
            v = null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> n = m12719n();
        return n != null ? n.size() : this.f8387k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public final Iterator<K> m12713t() {
        Map<K, V> n = m12719n();
        return n != null ? n.keySet().iterator() : new zzep(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final Iterator<Map.Entry<K, V>> m12712u() {
        Map<K, V> n = m12719n();
        return n != null ? n.entrySet().iterator() : new zzeo(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public final Iterator<V> m12711v() {
        Map<K, V> n = m12719n();
        return n != null ? n.values().iterator() : new zzer(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f8390n;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = new zzeu(this);
            this.f8390n = collection2;
        }
        return collection2;
    }
}
