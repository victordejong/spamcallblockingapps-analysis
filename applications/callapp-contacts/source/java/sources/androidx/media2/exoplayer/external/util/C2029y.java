package androidx.media2.exoplayer.external.util;

import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.util.y */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/y.class */
public final class C2029y<V> {

    /* renamed from: a */
    private long[] f8158a;

    /* renamed from: b */
    private V[] f8159b;

    /* renamed from: c */
    private int f8160c;

    /* renamed from: d */
    private int f8161d;

    public C2029y() {
        this(10);
    }

    public C2029y(int i) {
        this.f8158a = new long[i];
        this.f8159b = (V[]) new Object[i];
    }

    /* renamed from: a */
    public final V m41483a(long j) {
        V v;
        synchronized (this) {
            v = null;
            while (true) {
                int i = this.f8161d;
                if (i <= 0) {
                    break;
                }
                long[] jArr = this.f8158a;
                int i2 = this.f8160c;
                if (j - jArr[i2] < 0) {
                    break;
                }
                V[] vArr = this.f8159b;
                v = vArr[i2];
                vArr[i2] = null;
                this.f8160c = (i2 + 1) % vArr.length;
                this.f8161d = i - 1;
            }
        }
        return v;
    }

    /* renamed from: a */
    public final void m41484a() {
        synchronized (this) {
            this.f8160c = 0;
            this.f8161d = 0;
            Arrays.fill(this.f8159b, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m41482a(long j, V v) {
        synchronized (this) {
            int i = this.f8161d;
            if (i > 0) {
                int i2 = this.f8160c;
                if (j <= this.f8158a[((i2 + i) - 1) % this.f8159b.length]) {
                    m41484a();
                }
            }
            int length = this.f8159b.length;
            if (this.f8161d >= length) {
                int i3 = length * 2;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.f8160c;
                int i5 = length - i4;
                System.arraycopy(this.f8158a, i4, jArr, 0, i5);
                System.arraycopy(this.f8159b, this.f8160c, vArr, 0, i5);
                int i6 = this.f8160c;
                if (i6 > 0) {
                    System.arraycopy(this.f8158a, 0, jArr, i5, i6);
                    System.arraycopy(this.f8159b, 0, vArr, i5, this.f8160c);
                }
                this.f8158a = jArr;
                this.f8159b = vArr;
                this.f8160c = 0;
            }
            int i7 = this.f8160c;
            int i8 = this.f8161d;
            V[] vArr2 = this.f8159b;
            int length2 = (i7 + i8) % vArr2.length;
            this.f8158a[length2] = j;
            vArr2[length2] = v;
            this.f8161d = i8 + 1;
        }
    }
}
