package com.esotericsoftware.kryo.p278c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.esotericsoftware.kryo.c.m */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m.class */
public class C9404m<K, V> implements Iterable<C9406b<K, V>> {

    /* renamed from: a */
    static final Object f32341a = new Object();

    /* renamed from: b */
    public int f32342b;

    /* renamed from: c */
    K[] f32343c;

    /* renamed from: d */
    V[] f32344d;

    /* renamed from: e */
    float f32345e;

    /* renamed from: f */
    int f32346f;

    /* renamed from: g */
    protected int f32347g;

    /* renamed from: h */
    protected int f32348h;

    /* renamed from: com.esotericsoftware.kryo.c.m$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$a.class */
    public static final class C9405a<K, V> extends AbstractC9407c<K, V, C9406b<K, V>> {

        /* renamed from: a */
        C9406b<K, V> f32349a = new C9406b<>();

        public C9405a(C9404m<K, V> c9404m) {
            super(c9404m);
        }

        @Override // com.esotericsoftware.kryo.p278c.C9404m.AbstractC9407c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo24306a() {
            super.mo24306a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f32352b;
        }

        @Override // java.lang.Iterable
        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f32352b) {
                K[] kArr = this.f32353c.f32343c;
                this.f32349a.f32350a = kArr[this.f32354d];
                this.f32349a.f32351b = this.f32353c.f32344d[this.f32354d];
                this.f32355e = this.f32354d;
                m24305b();
                return this.f32349a;
            }
            throw new NoSuchElementException();
        }

        @Override // com.esotericsoftware.kryo.p278c.C9404m.AbstractC9407c, java.util.Iterator
        public final /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }
    }

    /* renamed from: com.esotericsoftware.kryo.c.m$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$b.class */
    public static final class C9406b<K, V> {

        /* renamed from: a */
        public K f32350a;

        /* renamed from: b */
        public V f32351b;

        public final String toString() {
            return this.f32350a + "=" + this.f32351b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.esotericsoftware.kryo.c.m$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/m$c.class */
    public static abstract class AbstractC9407c<K, V, I> implements Iterable<I>, Iterator<I> {

        /* renamed from: b */
        public boolean f32352b;

        /* renamed from: c */
        final C9404m<K, V> f32353c;

        /* renamed from: d */
        int f32354d;

        /* renamed from: e */
        int f32355e;

        /* renamed from: f */
        boolean f32356f = true;

        public AbstractC9407c(C9404m<K, V> c9404m) {
            this.f32353c = c9404m;
            mo24306a();
        }

        /* renamed from: a */
        public void mo24306a() {
            this.f32355e = -1;
            this.f32354d = -1;
            m24305b();
        }

        /* renamed from: b */
        final void m24305b() {
            int i;
            K[] kArr = this.f32353c.f32343c;
            int length = kArr.length;
            do {
                i = this.f32354d + 1;
                this.f32354d = i;
                if (i >= length) {
                    this.f32352b = false;
                    return;
                }
            } while (kArr[i] == null);
            this.f32352b = true;
        }

        public void remove() {
            int i = this.f32355e;
            if (i >= 0) {
                K[] kArr = this.f32353c.f32343c;
                V[] vArr = this.f32353c.f32344d;
                int i2 = this.f32353c.f32348h;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int mo24314a = this.f32353c.mo24314a((C9404m<K, V>) k);
                    int i5 = i;
                    if (((i4 - mo24314a) & i2) > ((i - mo24314a) & i2)) {
                        kArr[i] = k;
                        vArr[i] = vArr[i4];
                        i5 = i4;
                    }
                    i = i5;
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                vArr[i] = null;
                this.f32353c.f32342b--;
                if (i != this.f32355e) {
                    this.f32354d--;
                }
                this.f32355e = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }
    }

    public C9404m() {
        this(51, 0.8f);
    }

    public C9404m(int i) {
        this(i, 0.8f);
    }

    public C9404m(int i, float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: ".concat(String.valueOf(f)));
        }
        this.f32345e = f;
        int m24315a = m24315a(i, f);
        this.f32346f = (int) (m24315a * f);
        int i2 = m24315a - 1;
        this.f32348h = i2;
        this.f32347g = Long.numberOfLeadingZeros(i2);
        this.f32343c = (K[]) new Object[m24315a];
        this.f32344d = (V[]) new Object[m24315a];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9404m(com.esotericsoftware.kryo.p278c.C9404m<? extends K, ? extends V> r7) {
        /*
            r6 = this;
            r0 = r7
            K[] r0 = r0.f32343c
            int r0 = r0.length
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            float r0 = r0.f32345e
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r9
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            K[] r0 = r0.f32343c
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            K[] r2 = r2.f32343c
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            V[] r0 = r0.f32344d
            r10 = r0
            r0 = r10
            r1 = 0
            r2 = r6
            V[] r2 = r2.f32344d
            r3 = 0
            r4 = r10
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            int r1 = r1.f32342b
            r0.f32342b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.p278c.C9404m.<init>(com.esotericsoftware.kryo.c.m):void");
    }

    /* renamed from: a */
    public static int m24315a(int i, float f) {
        if (i >= 0) {
            int m24311b = m24311b(Math.max(2, (int) Math.ceil(i / f)));
            if (m24311b > 1073741824) {
                throw new IllegalArgumentException("The required capacity is too large: ".concat(String.valueOf(i)));
            }
            return m24311b;
        }
        throw new IllegalArgumentException("capacity must be >= 0: ".concat(String.valueOf(i)));
    }

    /* renamed from: a */
    private void m24316a(int i) {
        int length = this.f32343c.length;
        this.f32346f = (int) (i * this.f32345e);
        int i2 = i - 1;
        this.f32348h = i2;
        this.f32347g = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f32343c;
        V[] vArr = this.f32344d;
        this.f32343c = (K[]) new Object[i];
        this.f32344d = (V[]) new Object[i];
        if (this.f32342b > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m24309b(k, vArr[i3]);
                }
            }
        }
    }

    /* renamed from: b */
    private static int m24311b(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    /* renamed from: b */
    private void m24312b() {
        if (this.f32342b == 0) {
            return;
        }
        this.f32342b = 0;
        Arrays.fill(this.f32343c, (Object) null);
        Arrays.fill(this.f32344d, (Object) null);
    }

    /* renamed from: b */
    private void m24309b(K k, V v) {
        K[] kArr = this.f32343c;
        int mo24314a = mo24314a((C9404m<K, V>) k);
        while (true) {
            int i = mo24314a;
            if (kArr[i] == null) {
                kArr[i] = k;
                this.f32344d[i] = v;
                return;
            }
            mo24314a = (i + 1) & this.f32348h;
        }
    }

    /* renamed from: a */
    protected int mo24314a(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f32347g);
    }

    /* renamed from: a */
    public final V m24313a(K k, V v) {
        int mo24310b = mo24310b((C9404m<K, V>) k);
        if (mo24310b >= 0) {
            V[] vArr = this.f32344d;
            V v2 = vArr[mo24310b];
            vArr[mo24310b] = v;
            return v2;
        }
        int i = -(mo24310b + 1);
        K[] kArr = this.f32343c;
        kArr[i] = k;
        this.f32344d[i] = v;
        int i2 = this.f32342b + 1;
        this.f32342b = i2;
        if (i2 < this.f32346f) {
            return null;
        }
        m24316a(kArr.length << 1);
        return null;
    }

    /* renamed from: a */
    public final void m24317a() {
        int m24315a = m24315a(2048, this.f32345e);
        if (this.f32343c.length <= m24315a) {
            m24312b();
            return;
        }
        this.f32342b = 0;
        m24316a(m24315a);
    }

    /* renamed from: b */
    int mo24310b(K k) {
        if (k != null) {
            K[] kArr = this.f32343c;
            int mo24314a = mo24314a((C9404m<K, V>) k);
            while (true) {
                int i = mo24314a;
                K k2 = kArr[i];
                if (k2 == null) {
                    return -(i + 1);
                }
                if (k2.equals(k)) {
                    return i;
                }
                mo24314a = (i + 1) & this.f32348h;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public final <T extends K> V m24308c(T t) {
        int mo24310b = mo24310b((C9404m<K, V>) t);
        if (mo24310b < 0) {
            return null;
        }
        return this.f32344d[mo24310b];
    }

    /* renamed from: d */
    public final boolean m24307d(K k) {
        return mo24310b((C9404m<K, V>) k) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9404m)) {
            return false;
        }
        C9404m c9404m = (C9404m) obj;
        if (c9404m.f32342b != this.f32342b) {
            return false;
        }
        K[] kArr = this.f32343c;
        V[] vArr = this.f32344d;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                V v = vArr[i];
                if (v == null) {
                    V v2 = f32341a;
                    int mo24310b = c9404m.mo24310b((C9404m) k);
                    if (mo24310b >= 0) {
                        v2 = c9404m.f32344d[mo24310b];
                    }
                    if (v2 != null) {
                        return false;
                    }
                } else if (!v.equals(c9404m.m24308c(k))) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f32342b;
        K[] kArr = this.f32343c;
        V[] vArr = this.f32344d;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            K k = kArr[i2];
            int i3 = i;
            if (k != null) {
                int hashCode = i + k.hashCode();
                V v = vArr[i2];
                i3 = hashCode;
                if (v != null) {
                    i3 = hashCode + v.hashCode();
                }
            }
            i2++;
            i = i3;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return new C9405a(this);
    }

    public String toString() {
        int i;
        if (this.f32342b == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f32343c;
        V[] vArr = this.f32344d;
        int length = kArr.length;
        while (true) {
            int i2 = length;
            int i3 = i2 - 1;
            i = i3;
            if (i2 <= 0) {
                break;
            }
            K k = kArr[i3];
            if (k != null) {
                K k2 = k;
                if (k == this) {
                    k2 = "(this)";
                }
                sb.append(k2);
                sb.append('=');
                V v = vArr[i3];
                V v2 = v;
                if (v == this) {
                    v2 = "(this)";
                }
                sb.append(v2);
                i = i3;
            } else {
                length = i3;
            }
        }
        while (true) {
            int i4 = i - 1;
            if (i <= 0) {
                sb.append('}');
                return sb.toString();
            }
            K k3 = kArr[i4];
            if (k3 != null) {
                sb.append(", ");
                K k4 = k3;
                if (k3 == this) {
                    k4 = "(this)";
                }
                sb.append(k4);
                sb.append('=');
                V v3 = vArr[i4];
                V v4 = v3;
                if (v3 == this) {
                    v4 = "(this)";
                }
                sb.append(v4);
            }
            i = i4;
        }
    }
}
