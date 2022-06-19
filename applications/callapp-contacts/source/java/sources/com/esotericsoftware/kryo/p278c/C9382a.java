package com.esotericsoftware.kryo.p278c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
/* renamed from: com.esotericsoftware.kryo.c.a */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/a.class */
public final class C9382a<K, V> {

    /* renamed from: a */
    static Random f32259a = new Random();

    /* renamed from: b */
    public int f32260b;

    /* renamed from: c */
    K[] f32261c;

    /* renamed from: d */
    V[] f32262d;

    /* renamed from: e */
    int f32263e;

    /* renamed from: f */
    int f32264f;

    /* renamed from: g */
    int f32265g;

    /* renamed from: h */
    boolean f32266h;

    /* renamed from: i */
    private float f32267i;

    /* renamed from: j */
    private int f32268j;

    /* renamed from: k */
    private int f32269k;

    /* renamed from: l */
    private int f32270l;

    /* renamed from: m */
    private int f32271m;

    public C9382a() {
        this(32, 0.8f);
    }

    public C9382a(int i) {
        this(i, 0.8f);
    }

    public C9382a(int i, float f) {
        int i2;
        if (i >= 0) {
            if (i > 1073741824) {
                throw new IllegalArgumentException("initialCapacity is too large: ".concat(String.valueOf(i)));
            }
            boolean z = true;
            if (i == 0) {
                i2 = 1;
            } else {
                int i3 = i - 1;
                int i4 = i3 | (i3 >> 1);
                int i5 = i4 | (i4 >> 2);
                int i6 = i5 | (i5 >> 4);
                int i7 = i6 | (i6 >> 8);
                i2 = (i7 | (i7 >> 16)) + 1;
            }
            this.f32263e = i2;
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("loadFactor must be > 0: ".concat(String.valueOf(f)));
            }
            this.f32267i = f;
            this.f32266h = (i2 >>> 16) == 0 ? false : z;
            this.f32269k = (int) (i2 * f);
            this.f32265g = i2 - 1;
            this.f32268j = 31 - Integer.numberOfTrailingZeros(i2);
            this.f32270l = Math.max(3, ((int) Math.ceil(Math.log(this.f32263e))) * 2);
            this.f32271m = Math.max(Math.min(this.f32263e, 8), ((int) Math.sqrt(this.f32263e)) / 8);
            K[] kArr = (K[]) new Object[this.f32263e + this.f32270l];
            this.f32261c = kArr;
            this.f32262d = (V[]) new Object[kArr.length];
            return;
        }
        throw new IllegalArgumentException("initialCapacity must be >= 0: ".concat(String.valueOf(i)));
    }

    public C9382a(C9382a<? extends K, ? extends V> c9382a) {
        this(c9382a.f32263e, c9382a.f32267i);
        this.f32264f = c9382a.f32264f;
        Object[] objArr = c9382a.f32261c;
        System.arraycopy(objArr, 0, this.f32261c, 0, objArr.length);
        Object[] objArr2 = c9382a.f32262d;
        System.arraycopy(objArr2, 0, this.f32262d, 0, objArr2.length);
        this.f32260b = c9382a.f32260b;
    }

    /* renamed from: a */
    private void m24364a(K k, V v, int i, K k2, int i2, K k3, int i3, K k4, int i4, K k5) {
        V v2;
        K[] kArr = this.f32261c;
        V[] vArr = this.f32262d;
        int i5 = this.f32265g;
        boolean z = this.f32266h;
        int i6 = this.f32271m;
        int i7 = z ? 4 : 3;
        K k6 = k;
        int i8 = i;
        K k7 = k3;
        K k8 = k4;
        int i9 = i4;
        int i10 = 0;
        K k9 = k2;
        K k10 = k5;
        int i11 = i2;
        V v3 = v;
        while (true) {
            int nextInt = f32259a.nextInt(i7);
            if (nextInt == 0) {
                v2 = vArr[i8];
                kArr[i8] = k6;
                vArr[i8] = v3;
                k8 = k9;
            } else if (nextInt == 1) {
                V v4 = vArr[i11];
                kArr[i11] = k6;
                vArr[i11] = v3;
                k8 = k7;
                v2 = v4;
            } else if (nextInt != 2) {
                v2 = vArr[i9];
                kArr[i9] = k6;
                vArr[i9] = v3;
                k8 = k10;
            } else {
                v2 = vArr[i3];
                kArr[i3] = k6;
                vArr[i3] = v3;
            }
            int hashCode = k8.hashCode();
            i8 = hashCode & i5;
            k9 = kArr[i8];
            if (k9 == null) {
                kArr[i8] = k8;
                vArr[i8] = v2;
                int i12 = this.f32260b;
                this.f32260b = i12 + 1;
                if (i12 < this.f32269k) {
                    return;
                }
                m24359d(this.f32263e << 1);
                return;
            }
            i11 = m24367a(hashCode);
            K k11 = kArr[i11];
            if (k11 == null) {
                kArr[i11] = k8;
                vArr[i11] = v2;
                int i13 = this.f32260b;
                this.f32260b = i13 + 1;
                if (i13 < this.f32269k) {
                    return;
                }
                m24359d(this.f32263e << 1);
                return;
            }
            i3 = m24363b(hashCode);
            K k12 = kArr[i3];
            if (k12 == null) {
                kArr[i3] = k8;
                vArr[i3] = v2;
                int i14 = this.f32260b;
                this.f32260b = i14 + 1;
                if (i14 < this.f32269k) {
                    return;
                }
                m24359d(this.f32263e << 1);
                return;
            }
            if (z) {
                i9 = m24361c(hashCode);
                k10 = kArr[i9];
                if (k10 == null) {
                    kArr[i9] = k8;
                    vArr[i9] = v2;
                    int i15 = this.f32260b;
                    this.f32260b = i15 + 1;
                    if (i15 < this.f32269k) {
                        return;
                    }
                    m24359d(this.f32263e << 1);
                    return;
                }
            }
            i10++;
            if (i10 == i6) {
                m24358d(k8, v2);
                return;
            }
            k6 = k8;
            v3 = v2;
            k7 = k11;
            k8 = k12;
        }
    }

    /* renamed from: b */
    private V m24362b(K k, V v) {
        Object obj;
        int i;
        K[] kArr = this.f32261c;
        int i2 = this.f32265g;
        boolean z = this.f32266h;
        int hashCode = k.hashCode();
        int i3 = hashCode & i2;
        K k2 = kArr[i3];
        if (k.equals(k2)) {
            V[] vArr = this.f32262d;
            V v2 = vArr[i3];
            vArr[i3] = v;
            return v2;
        }
        int m24367a = m24367a(hashCode);
        K k3 = kArr[m24367a];
        if (k.equals(k3)) {
            V[] vArr2 = this.f32262d;
            V v3 = vArr2[m24367a];
            vArr2[m24367a] = v;
            return v3;
        }
        int m24363b = m24363b(hashCode);
        K k4 = kArr[m24363b];
        if (k.equals(k4)) {
            V[] vArr3 = this.f32262d;
            V v4 = vArr3[m24363b];
            vArr3[m24363b] = v;
            return v4;
        }
        if (z) {
            i = m24361c(hashCode);
            obj = kArr[i];
            if (k.equals(obj)) {
                V[] vArr4 = this.f32262d;
                V v5 = vArr4[i];
                vArr4[i] = v;
                return v5;
            }
        } else {
            obj = null;
            i = -1;
        }
        int i4 = this.f32263e;
        int i5 = this.f32264f;
        for (int i6 = i4; i6 < i5 + i4; i6++) {
            if (k.equals(kArr[i6])) {
                V[] vArr5 = this.f32262d;
                V v6 = vArr5[i6];
                vArr5[i6] = v;
                return v6;
            }
        }
        if (k2 == null) {
            kArr[i3] = k;
            this.f32262d[i3] = v;
            int i7 = this.f32260b;
            this.f32260b = i7 + 1;
            if (i7 < this.f32269k) {
                return null;
            }
            m24359d(this.f32263e << 1);
            return null;
        } else if (k3 == null) {
            kArr[m24367a] = k;
            this.f32262d[m24367a] = v;
            int i8 = this.f32260b;
            this.f32260b = i8 + 1;
            if (i8 < this.f32269k) {
                return null;
            }
            m24359d(this.f32263e << 1);
            return null;
        } else if (k4 == null) {
            kArr[m24363b] = k;
            this.f32262d[m24363b] = v;
            int i9 = this.f32260b;
            this.f32260b = i9 + 1;
            if (i9 < this.f32269k) {
                return null;
            }
            m24359d(this.f32263e << 1);
            return null;
        } else if (!z || obj != null) {
            m24364a(k, v, i3, k2, m24367a, k3, m24363b, k4, i, obj);
            return null;
        } else {
            kArr[i] = k;
            this.f32262d[i] = v;
            int i10 = this.f32260b;
            this.f32260b = i10 + 1;
            if (i10 < this.f32269k) {
                return null;
            }
            m24359d(this.f32263e << 1);
            return null;
        }
    }

    /* renamed from: c */
    private void m24360c(K k, V v) {
        K k2;
        int i;
        int hashCode = k.hashCode();
        int i2 = hashCode & this.f32265g;
        K[] kArr = this.f32261c;
        K k3 = kArr[i2];
        if (k3 == null) {
            kArr[i2] = k;
            this.f32262d[i2] = v;
            int i3 = this.f32260b;
            this.f32260b = i3 + 1;
            if (i3 < this.f32269k) {
                return;
            }
            m24359d(this.f32263e << 1);
            return;
        }
        int m24367a = m24367a(hashCode);
        K[] kArr2 = this.f32261c;
        K k4 = kArr2[m24367a];
        if (k4 == null) {
            kArr2[m24367a] = k;
            this.f32262d[m24367a] = v;
            int i4 = this.f32260b;
            this.f32260b = i4 + 1;
            if (i4 < this.f32269k) {
                return;
            }
            m24359d(this.f32263e << 1);
            return;
        }
        int m24363b = m24363b(hashCode);
        K[] kArr3 = this.f32261c;
        K k5 = kArr3[m24363b];
        if (k5 == null) {
            kArr3[m24363b] = k;
            this.f32262d[m24363b] = v;
            int i5 = this.f32260b;
            this.f32260b = i5 + 1;
            if (i5 < this.f32269k) {
                return;
            }
            m24359d(this.f32263e << 1);
            return;
        }
        if (this.f32266h) {
            i = m24361c(hashCode);
            K[] kArr4 = this.f32261c;
            k2 = kArr4[i];
            if (k2 == null) {
                kArr4[i] = k;
                this.f32262d[i] = v;
                int i6 = this.f32260b;
                this.f32260b = i6 + 1;
                if (i6 < this.f32269k) {
                    return;
                }
                m24359d(this.f32263e << 1);
                return;
            }
        } else {
            k2 = null;
            i = -1;
        }
        m24364a(k, v, i2, k3, m24367a, k4, m24363b, k5, i, k2);
    }

    /* renamed from: d */
    private void m24359d(int i) {
        int i2 = this.f32263e;
        int i3 = this.f32264f;
        this.f32263e = i;
        this.f32269k = (int) (i * this.f32267i);
        this.f32265g = i - 1;
        this.f32268j = 31 - Integer.numberOfTrailingZeros(i);
        double d = i;
        this.f32270l = Math.max(3, ((int) Math.ceil(Math.log(d))) * 2);
        this.f32271m = Math.max(Math.min(i, 8), ((int) Math.sqrt(d)) / 8);
        this.f32266h = (this.f32263e >>> 16) != 0;
        K[] kArr = this.f32261c;
        V[] vArr = this.f32262d;
        int i4 = this.f32270l;
        this.f32261c = (K[]) new Object[i + i4];
        this.f32262d = (V[]) new Object[i + i4];
        int i5 = this.f32260b;
        this.f32260b = 0;
        this.f32264f = 0;
        if (i5 > 0) {
            for (int i6 = 0; i6 < i2 + i3; i6++) {
                K k = kArr[i6];
                if (k != null) {
                    m24360c(k, vArr[i6]);
                }
            }
        }
    }

    /* renamed from: d */
    private void m24358d(K k, V v) {
        int i = this.f32264f;
        if (i == this.f32270l) {
            m24359d(this.f32263e << 1);
            m24362b(k, v);
            return;
        }
        int i2 = this.f32263e + i;
        this.f32261c[i2] = k;
        this.f32262d[i2] = v;
        this.f32264f = i + 1;
        this.f32260b++;
    }

    /* renamed from: a */
    public final int m24367a(int i) {
        int i2 = i * (-1105259343);
        return (i2 ^ (i2 >>> this.f32268j)) & this.f32265g;
    }

    /* renamed from: a */
    public final V m24366a(K k) {
        K[] kArr = this.f32261c;
        int i = this.f32263e;
        int i2 = this.f32264f;
        for (int i3 = i; i3 < i2 + i; i3++) {
            if (k.equals(kArr[i3])) {
                return this.f32262d[i3];
            }
        }
        return null;
    }

    /* renamed from: a */
    public final V m24365a(K k, V v) {
        if (k != null) {
            return m24362b(k, v);
        }
        throw new IllegalArgumentException("key cannot be null.");
    }

    /* renamed from: b */
    public final int m24363b(int i) {
        int i2 = i * (-1262997959);
        return (i2 ^ (i2 >>> this.f32268j)) & this.f32265g;
    }

    /* renamed from: c */
    public final int m24361c(int i) {
        int i2 = i * (-825114047);
        return (i2 ^ (i2 >>> this.f32268j)) & this.f32265g;
    }

    public final String toString() {
        int i;
        if (this.f32260b == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f32261c;
        V[] vArr = this.f32262d;
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
                sb.append(k);
                sb.append('=');
                sb.append(vArr[i3]);
                i = i3;
                break;
            }
            length = i3;
        }
        while (true) {
            int i4 = i - 1;
            if (i <= 0) {
                sb.append('}');
                return sb.toString();
            }
            K k2 = kArr[i4];
            if (k2 != null) {
                sb.append(", ");
                sb.append(k2);
                sb.append('=');
                sb.append(vArr[i4]);
            }
            i = i4;
        }
    }
}
