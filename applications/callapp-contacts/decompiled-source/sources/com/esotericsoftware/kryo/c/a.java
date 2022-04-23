package com.esotericsoftware.kryo.c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/a.class */
public final class a<K, V> {

    /* renamed from: a  reason: collision with root package name */
    static Random f18974a = new Random();

    /* renamed from: b  reason: collision with root package name */
    public int f18975b;

    /* renamed from: c  reason: collision with root package name */
    K[] f18976c;

    /* renamed from: d  reason: collision with root package name */
    V[] f18977d;
    int e;
    int f;
    int g;
    boolean h;
    private float i;
    private int j;
    private int k;
    private int l;
    private int m;

    public a() {
        this(32, 0.8f);
    }

    public a(int i) {
        this(i, 0.8f);
    }

    public a(int i, float f) {
        int i2;
        if (i < 0) {
            throw new IllegalArgumentException("initialCapacity must be >= 0: ".concat(String.valueOf(i)));
        } else if (i <= 1073741824) {
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
            this.e = i2;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.i = f;
                this.h = (i2 >>> 16) == 0 ? false : z;
                this.k = (int) (i2 * f);
                this.g = i2 - 1;
                this.j = 31 - Integer.numberOfTrailingZeros(i2);
                this.l = Math.max(3, ((int) Math.ceil(Math.log(this.e))) * 2);
                this.m = Math.max(Math.min(this.e, 8), ((int) Math.sqrt(this.e)) / 8);
                K[] kArr = (K[]) new Object[this.e + this.l];
                this.f18976c = kArr;
                this.f18977d = (V[]) new Object[kArr.length];
                return;
            }
            throw new IllegalArgumentException("loadFactor must be > 0: ".concat(String.valueOf(f)));
        } else {
            throw new IllegalArgumentException("initialCapacity is too large: ".concat(String.valueOf(i)));
        }
    }

    public a(a<? extends K, ? extends V> aVar) {
        this(aVar.e, aVar.i);
        this.f = aVar.f;
        Object[] objArr = aVar.f18976c;
        System.arraycopy(objArr, 0, this.f18976c, 0, objArr.length);
        Object[] objArr2 = aVar.f18977d;
        System.arraycopy(objArr2, 0, this.f18977d, 0, objArr2.length);
        this.f18975b = aVar.f18975b;
    }

    private void a(K k, V v, int i, K k2, int i2, K k3, int i3, K k4, int i4, K k5) {
        V v2;
        K[] kArr = this.f18976c;
        V[] vArr = this.f18977d;
        int i5 = this.g;
        boolean z = this.h;
        int i6 = this.m;
        int i7 = z ? 4 : 3;
        K k6 = k;
        int i8 = i;
        K k7 = k3;
        k7 = k4;
        int i9 = i4;
        int i10 = 0;
        k7 = k2;
        K k8 = k5;
        int i11 = i2;
        V v3 = v;
        while (true) {
            int nextInt = f18974a.nextInt(i7);
            if (nextInt == 0) {
                v2 = vArr[i8];
                kArr[i8] = k6;
                vArr[i8] = v3;
            } else if (nextInt == 1) {
                v2 = vArr[i11];
                kArr[i11] = k6;
                vArr[i11] = v3;
            } else if (nextInt != 2) {
                v2 = vArr[i9];
                kArr[i9] = k6;
                vArr[i9] = v3;
                k7 = k8;
            } else {
                v2 = vArr[i3];
                kArr[i3] = k6;
                vArr[i3] = v3;
            }
            int hashCode = k7.hashCode();
            i8 = hashCode & i5;
            k7 = kArr[i8];
            if (k7 == null) {
                kArr[i8] = k7;
                vArr[i8] = v2;
                int i12 = this.f18975b;
                this.f18975b = i12 + 1;
                if (i12 >= this.k) {
                    d(this.e << 1);
                    return;
                }
                return;
            }
            i11 = a(hashCode);
            K k9 = kArr[i11];
            if (k9 == null) {
                kArr[i11] = k7;
                vArr[i11] = v2;
                int i13 = this.f18975b;
                this.f18975b = i13 + 1;
                if (i13 >= this.k) {
                    d(this.e << 1);
                    return;
                }
                return;
            }
            i3 = b(hashCode);
            K k10 = kArr[i3];
            if (k10 == null) {
                kArr[i3] = k7;
                vArr[i3] = v2;
                int i14 = this.f18975b;
                this.f18975b = i14 + 1;
                if (i14 >= this.k) {
                    d(this.e << 1);
                    return;
                }
                return;
            }
            if (z) {
                i9 = c(hashCode);
                k8 = kArr[i9];
                if (k8 == null) {
                    kArr[i9] = k7;
                    vArr[i9] = v2;
                    int i15 = this.f18975b;
                    this.f18975b = i15 + 1;
                    if (i15 >= this.k) {
                        d(this.e << 1);
                        return;
                    }
                    return;
                }
            }
            i10++;
            if (i10 != i6) {
                k6 = k7;
                v3 = v2;
                k7 = k9;
                k7 = k10;
            } else {
                d(k7, v2);
                return;
            }
        }
    }

    private V b(K k, V v) {
        K k2;
        int i;
        K[] kArr = this.f18976c;
        int i2 = this.g;
        boolean z = this.h;
        int hashCode = k.hashCode();
        int i3 = hashCode & i2;
        K k3 = kArr[i3];
        if (k.equals(k3)) {
            V[] vArr = this.f18977d;
            V v2 = vArr[i3];
            vArr[i3] = v;
            return v2;
        }
        int a2 = a(hashCode);
        K k4 = kArr[a2];
        if (k.equals(k4)) {
            V[] vArr2 = this.f18977d;
            V v3 = vArr2[a2];
            vArr2[a2] = v;
            return v3;
        }
        int b2 = b(hashCode);
        K k5 = kArr[b2];
        if (k.equals(k5)) {
            V[] vArr3 = this.f18977d;
            V v4 = vArr3[b2];
            vArr3[b2] = v;
            return v4;
        }
        if (z) {
            i = c(hashCode);
            k2 = kArr[i];
            if (k.equals(k2)) {
                V[] vArr4 = this.f18977d;
                V v5 = vArr4[i];
                vArr4[i] = v;
                return v5;
            }
        } else {
            k2 = null;
            i = -1;
        }
        int i4 = this.e;
        int i5 = this.f;
        for (int i6 = i4; i6 < i5 + i4; i6++) {
            if (k.equals(kArr[i6])) {
                V[] vArr5 = this.f18977d;
                V v6 = vArr5[i6];
                vArr5[i6] = v;
                return v6;
            }
        }
        if (k3 == null) {
            kArr[i3] = k;
            this.f18977d[i3] = v;
            int i7 = this.f18975b;
            this.f18975b = i7 + 1;
            if (i7 < this.k) {
                return null;
            }
            d(this.e << 1);
            return null;
        } else if (k4 == null) {
            kArr[a2] = k;
            this.f18977d[a2] = v;
            int i8 = this.f18975b;
            this.f18975b = i8 + 1;
            if (i8 < this.k) {
                return null;
            }
            d(this.e << 1);
            return null;
        } else if (k5 == null) {
            kArr[b2] = k;
            this.f18977d[b2] = v;
            int i9 = this.f18975b;
            this.f18975b = i9 + 1;
            if (i9 < this.k) {
                return null;
            }
            d(this.e << 1);
            return null;
        } else if (!z || k2 != null) {
            a(k, v, i3, k3, a2, k4, b2, k5, i, k2);
            return null;
        } else {
            kArr[i] = k;
            this.f18977d[i] = v;
            int i10 = this.f18975b;
            this.f18975b = i10 + 1;
            if (i10 < this.k) {
                return null;
            }
            d(this.e << 1);
            return null;
        }
    }

    private void c(K k, V v) {
        K k2;
        int i;
        int hashCode = k.hashCode();
        int i2 = hashCode & this.g;
        K[] kArr = this.f18976c;
        K k3 = kArr[i2];
        if (k3 == null) {
            kArr[i2] = k;
            this.f18977d[i2] = v;
            int i3 = this.f18975b;
            this.f18975b = i3 + 1;
            if (i3 >= this.k) {
                d(this.e << 1);
                return;
            }
            return;
        }
        int a2 = a(hashCode);
        K[] kArr2 = this.f18976c;
        K k4 = kArr2[a2];
        if (k4 == null) {
            kArr2[a2] = k;
            this.f18977d[a2] = v;
            int i4 = this.f18975b;
            this.f18975b = i4 + 1;
            if (i4 >= this.k) {
                d(this.e << 1);
                return;
            }
            return;
        }
        int b2 = b(hashCode);
        K[] kArr3 = this.f18976c;
        K k5 = kArr3[b2];
        if (k5 == null) {
            kArr3[b2] = k;
            this.f18977d[b2] = v;
            int i5 = this.f18975b;
            this.f18975b = i5 + 1;
            if (i5 >= this.k) {
                d(this.e << 1);
                return;
            }
            return;
        }
        if (this.h) {
            i = c(hashCode);
            K[] kArr4 = this.f18976c;
            k2 = kArr4[i];
            if (k2 == null) {
                kArr4[i] = k;
                this.f18977d[i] = v;
                int i6 = this.f18975b;
                this.f18975b = i6 + 1;
                if (i6 >= this.k) {
                    d(this.e << 1);
                    return;
                }
                return;
            }
        } else {
            k2 = null;
            i = -1;
        }
        a(k, v, i2, k3, a2, k4, b2, k5, i, k2);
    }

    private void d(int i) {
        int i2 = this.e;
        int i3 = this.f;
        this.e = i;
        this.k = (int) (i * this.i);
        this.g = i - 1;
        this.j = 31 - Integer.numberOfTrailingZeros(i);
        double d2 = i;
        this.l = Math.max(3, ((int) Math.ceil(Math.log(d2))) * 2);
        this.m = Math.max(Math.min(i, 8), ((int) Math.sqrt(d2)) / 8);
        this.h = (this.e >>> 16) != 0;
        K[] kArr = this.f18976c;
        V[] vArr = this.f18977d;
        int i4 = this.l;
        this.f18976c = (K[]) new Object[i + i4];
        this.f18977d = (V[]) new Object[i + i4];
        int i5 = this.f18975b;
        this.f18975b = 0;
        this.f = 0;
        if (i5 > 0) {
            for (int i6 = 0; i6 < i2 + i3; i6++) {
                K k = kArr[i6];
                if (k != null) {
                    c(k, vArr[i6]);
                }
            }
        }
    }

    private void d(K k, V v) {
        int i = this.f;
        if (i == this.l) {
            d(this.e << 1);
            b(k, v);
            return;
        }
        int i2 = this.e + i;
        this.f18976c[i2] = k;
        this.f18977d[i2] = v;
        this.f = i + 1;
        this.f18975b++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i) {
        int i2 = i * (-1105259343);
        return (i2 ^ (i2 >>> this.j)) & this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final V a(K k) {
        K[] kArr = this.f18976c;
        int i = this.e;
        int i2 = this.f;
        for (int i3 = i; i3 < i2 + i; i3++) {
            if (k.equals(kArr[i3])) {
                return this.f18977d[i3];
            }
        }
        return null;
    }

    public final V a(K k, V v) {
        if (k != null) {
            return b(k, v);
        }
        throw new IllegalArgumentException("key cannot be null.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        int i2 = i * (-1262997959);
        return (i2 ^ (i2 >>> this.j)) & this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(int i) {
        int i2 = i * (-825114047);
        return (i2 ^ (i2 >>> this.j)) & this.g;
    }

    public final String toString() {
        int i;
        if (this.f18975b == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f18976c;
        V[] vArr = this.f18977d;
        int length = kArr.length;
        while (true) {
            int i2 = length - 1;
            i = i2;
            if (length <= 0) {
                break;
            }
            K k = kArr[i2];
            if (k != null) {
                sb.append(k);
                sb.append('=');
                sb.append(vArr[i2]);
                i = i2;
                break;
            }
            length = i2;
        }
        while (true) {
            int i3 = i - 1;
            if (i > 0) {
                K k2 = kArr[i3];
                if (k2 != null) {
                    sb.append(", ");
                    sb.append(k2);
                    sb.append('=');
                    sb.append(vArr[i3]);
                }
                i = i3;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }
}
