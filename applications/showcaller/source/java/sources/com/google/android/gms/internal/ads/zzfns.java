package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfns.class */
public final class zzfns<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: d */
    private static final Object f34053d = new Object();

    /* renamed from: e */
    private transient Object f34054e;

    /* renamed from: f */
    transient int[] f34055f;

    /* renamed from: g */
    transient Object[] f34056g;

    /* renamed from: h */
    transient Object[] f34057h;

    /* renamed from: i */
    private transient int f34058i;

    /* renamed from: j */
    private transient int f34059j;

    /* renamed from: k */
    private transient Set<K> f34060k;

    /* renamed from: l */
    private transient Set<Map.Entry<K, V>> f34061l;

    /* renamed from: m */
    private transient Collection<V> f34062m;

    public zzfns() {
        zze(3);
    }

    public zzfns(int i) {
        zze(8);
    }

    /* renamed from: a */
    public final int[] m7870a() {
        int[] iArr = this.f34055f;
        iArr.getClass();
        return iArr;
    }

    /* renamed from: b */
    public final Object[] m7869b() {
        Object[] objArr = this.f34056g;
        objArr.getClass();
        return objArr;
    }

    /* renamed from: c */
    public final Object[] m7868c() {
        Object[] objArr = this.f34057h;
        objArr.getClass();
        return objArr;
    }

    /* renamed from: d */
    private final void m7867d(int i) {
        this.f34058i = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.f34058i & (-32));
    }

    /* renamed from: e */
    public final int m7866e() {
        return (1 << (this.f34058i & 31)) - 1;
    }

    /* renamed from: f */
    private final int m7865f(int i, int i2, int i3, int i4) {
        Object m11779a = qw2.m11779a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            qw2.m11777c(m11779a, i3 & i5, i4 + 1);
        }
        Object obj = this.f34054e;
        obj.getClass();
        int[] m7870a = m7870a();
        for (int i6 = 0; i6 <= i; i6++) {
            int m11778b = qw2.m11778b(obj, i6);
            while (true) {
                int i7 = m11778b;
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    int i9 = m7870a[i8];
                    int i10 = ((i ^ (-1)) & i9) | i6;
                    int i11 = i10 & i5;
                    int m11778b2 = qw2.m11778b(m11779a, i11);
                    qw2.m11777c(m11779a, i11, i7);
                    m7870a[i8] = ((i5 ^ (-1)) & i10) | (m11778b2 & i5);
                    m11778b = i9 & i;
                }
            }
        }
        this.f34054e = m11779a;
        m7867d(i5);
        return i5;
    }

    /* renamed from: g */
    public final int m7864g(Object obj) {
        int i;
        if (zzf()) {
            return -1;
        }
        int m9029b = xw2.m9029b(obj);
        int m7866e = m7866e();
        Object obj2 = this.f34054e;
        obj2.getClass();
        int m11778b = qw2.m11778b(obj2, m9029b & m7866e);
        if (m11778b == 0) {
            return -1;
        }
        int i2 = m7866e ^ (-1);
        do {
            int i3 = m11778b - 1;
            int i4 = m7870a()[i3];
            if ((i4 & i2) == (m9029b & i2) && tu2.m10497a(obj, m7869b()[i3])) {
                return i3;
            }
            i = i4 & m7866e;
            m11778b = i;
        } while (i != 0);
        return -1;
    }

    /* renamed from: h */
    public final Object m7863h(Object obj) {
        if (zzf()) {
            return f34053d;
        }
        int m7866e = m7866e();
        Object obj2 = this.f34054e;
        obj2.getClass();
        int m11775e = qw2.m11775e(obj, null, m7866e, obj2, m7870a(), m7869b(), null);
        if (m11775e == -1) {
            return f34053d;
        }
        Object obj3 = m7868c()[m11775e];
        zzl(m11775e, m7866e);
        this.f34059j--;
        zzi();
        return obj3;
    }

    public static /* synthetic */ Object zzo(zzfns zzfnsVar) {
        Object obj = zzfnsVar.f34054e;
        obj.getClass();
        return obj;
    }

    public static /* synthetic */ Object zzs(zzfns zzfnsVar, int i) {
        return zzfnsVar.m7869b()[i];
    }

    public static /* synthetic */ Object zzt(zzfns zzfnsVar, int i) {
        return zzfnsVar.m7868c()[i];
    }

    public static /* synthetic */ void zzu(zzfns zzfnsVar, int i, Object obj) {
        zzfnsVar.m7868c()[i] = obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zzf()) {
            return;
        }
        zzi();
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            this.f34058i = py2.m12088a(size(), 3, 1073741823);
            zzg.clear();
            this.f34054e = null;
            this.f34059j = 0;
            return;
        }
        Arrays.fill(m7869b(), 0, this.f34059j, (Object) null);
        Arrays.fill(m7868c(), 0, this.f34059j, (Object) null);
        Object obj = this.f34054e;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(m7870a(), 0, this.f34059j, 0);
        this.f34059j = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z;
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            z = zzg.containsKey(obj);
        } else if (m7864g(obj) != -1) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg == null) {
            for (int i = 0; i < this.f34059j; i++) {
                if (tu2.m10497a(obj, m7868c()[i])) {
                    return true;
                }
            }
            return false;
        }
        return zzg.containsValue(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f34061l;
        kw2 kw2Var = set;
        if (set == null) {
            kw2Var = new kw2(this);
            this.f34061l = kw2Var;
        }
        return kw2Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.get(obj);
        }
        int m7864g = m7864g(obj);
        if (m7864g != -1) {
            return (V) m7868c()[m7864g];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f34060k;
        mw2 mw2Var = set;
        if (set == null) {
            mw2Var = new mw2(this);
            this.f34060k = mw2Var;
        }
        return mw2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (zzf()) {
            xu2.m9055b(zzf(), "Arrays already allocated");
            int i4 = this.f34058i;
            int max = Math.max(i4 + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            int i5 = highestOneBit;
            if (max > highestOneBit) {
                int i6 = highestOneBit + highestOneBit;
                i5 = i6;
                if (i6 <= 0) {
                    i5 = 1073741824;
                }
            }
            int max2 = Math.max(4, i5);
            this.f34054e = qw2.m11779a(max2);
            m7867d(max2 - 1);
            this.f34055f = new int[i4];
            this.f34056g = new Object[i4];
            this.f34057h = new Object[i4];
        }
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.put(k, v);
        }
        int[] m7870a = m7870a();
        Object[] m7869b = m7869b();
        Object[] m7868c = m7868c();
        int i7 = this.f34059j;
        int i8 = i7 + 1;
        int m9029b = xw2.m9029b(k);
        int m7866e = m7866e();
        int i9 = m9029b & m7866e;
        Object obj = this.f34054e;
        obj.getClass();
        int m11778b = qw2.m11778b(obj, i9);
        if (m11778b != 0) {
            int i10 = m7866e ^ (-1);
            int i11 = 0;
            do {
                i2 = m11778b - 1;
                int i12 = m7870a[i2];
                i3 = i12 & i10;
                if (i3 == (m9029b & i10) && tu2.m10497a(k, m7869b[i2])) {
                    V v2 = (V) m7868c[i2];
                    m7868c[i2] = v;
                    return v2;
                }
                m11778b = i12 & m7866e;
                i11++;
            } while (m11778b != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(m7866e() + 1, 1.0f);
                int zzm = zzm();
                while (true) {
                    int i13 = zzm;
                    if (i13 < 0) {
                        this.f34054e = linkedHashMap;
                        this.f34055f = null;
                        this.f34056g = null;
                        this.f34057h = null;
                        zzi();
                        return (V) linkedHashMap.put(k, v);
                    }
                    linkedHashMap.put(m7869b()[i13], m7868c()[i13]);
                    zzm = zzn(i13);
                }
            } else if (i8 > m7866e) {
                i = m7865f(m7866e, qw2.m11776d(m7866e), m9029b, i7);
            } else {
                m7870a[i2] = (i8 & m7866e) | i3;
                i = m7866e;
            }
        } else if (i8 > m7866e) {
            i = m7865f(m7866e, qw2.m11776d(m7866e), m9029b, i7);
        } else {
            Object obj2 = this.f34054e;
            obj2.getClass();
            qw2.m11777c(obj2, i9, i8);
            i = m7866e;
        }
        int length = m7870a().length;
        if (i8 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f34055f = Arrays.copyOf(m7870a(), min);
            this.f34056g = Arrays.copyOf(m7869b(), min);
            this.f34057h = Arrays.copyOf(m7868c(), min);
        }
        m7870a()[i7] = (i ^ (-1)) & m9029b;
        m7869b()[i7] = k;
        m7868c()[i7] = v;
        this.f34059j = i8;
        zzi();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.remove(obj);
        }
        Object m7863h = m7863h(obj);
        Object obj2 = m7863h;
        if (m7863h == f34053d) {
            obj2 = null;
        }
        return (V) obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> zzg = zzg();
        return zzg != null ? zzg.size() : this.f34059j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f34062m;
        pw2 pw2Var = collection;
        if (collection == null) {
            pw2Var = new pw2(this);
            this.f34062m = pw2Var;
        }
        return pw2Var;
    }

    final void zze(int i) {
        this.f34058i = py2.m12088a(i, 1, 1073741823);
    }

    public final boolean zzf() {
        return this.f34054e == null;
    }

    public final Map<K, V> zzg() {
        Object obj = this.f34054e;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzi() {
        this.f34058i += 32;
    }

    public final void zzl(int i, int i2) {
        int i3;
        int i4;
        Object obj = this.f34054e;
        obj.getClass();
        int[] m7870a = m7870a();
        Object[] m7869b = m7869b();
        Object[] m7868c = m7868c();
        int size = size() - 1;
        if (i >= size) {
            m7869b[i] = null;
            m7868c[i] = null;
            m7870a[i] = 0;
            return;
        }
        Object obj2 = m7869b[size];
        m7869b[i] = obj2;
        m7868c[i] = m7868c[size];
        m7869b[size] = null;
        m7868c[size] = null;
        m7870a[i] = m7870a[size];
        m7870a[size] = 0;
        int m9029b = xw2.m9029b(obj2) & i2;
        int m11778b = qw2.m11778b(obj, m9029b);
        int i5 = size + 1;
        if (m11778b == i5) {
            qw2.m11777c(obj, m9029b, i + 1);
            return;
        }
        do {
            i3 = m11778b - 1;
            i4 = m7870a[i3];
            m11778b = i4 & i2;
        } while (m11778b != i5);
        m7870a[i3] = ((i + 1) & i2) | (i4 & (i2 ^ (-1)));
    }

    public final int zzm() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzn(int i) {
        int i2 = i + 1;
        if (i2 < this.f34059j) {
            return i2;
        }
        return -1;
    }
}
