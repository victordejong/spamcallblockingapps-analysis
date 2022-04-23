package androidx.media2.exoplayer.external.util;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/y.class */
public final class y<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f4187a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f4188b;

    /* renamed from: c  reason: collision with root package name */
    private int f4189c;

    /* renamed from: d  reason: collision with root package name */
    private int f4190d;

    public y() {
        this(10);
    }

    public y(int i) {
        this.f4187a = new long[i];
        this.f4188b = (V[]) new Object[i];
    }

    public final V a(long j) {
        V v;
        synchronized (this) {
            v = null;
            while (true) {
                int i = this.f4190d;
                if (i <= 0) {
                    break;
                }
                long[] jArr = this.f4187a;
                int i2 = this.f4189c;
                if (j - jArr[i2] < 0) {
                    break;
                }
                V[] vArr = this.f4188b;
                v = vArr[i2];
                vArr[i2] = null;
                this.f4189c = (i2 + 1) % vArr.length;
                this.f4190d = i - 1;
            }
        }
        return v;
    }

    public final void a() {
        synchronized (this) {
            this.f4189c = 0;
            this.f4190d = 0;
            Arrays.fill(this.f4188b, (Object) null);
        }
    }

    public final void a(long j, V v) {
        synchronized (this) {
            int i = this.f4190d;
            if (i > 0) {
                int i2 = this.f4189c;
                if (j <= this.f4187a[((i2 + i) - 1) % this.f4188b.length]) {
                    a();
                }
            }
            int length = this.f4188b.length;
            if (this.f4190d >= length) {
                int i3 = length * 2;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.f4189c;
                int i5 = length - i4;
                System.arraycopy(this.f4187a, i4, jArr, 0, i5);
                System.arraycopy(this.f4188b, this.f4189c, vArr, 0, i5);
                int i6 = this.f4189c;
                if (i6 > 0) {
                    System.arraycopy(this.f4187a, 0, jArr, i5, i6);
                    System.arraycopy(this.f4188b, 0, vArr, i5, this.f4189c);
                }
                this.f4187a = jArr;
                this.f4188b = vArr;
                this.f4189c = 0;
            }
            int i7 = this.f4189c;
            int i8 = this.f4190d;
            V[] vArr2 = this.f4188b;
            int length2 = (i7 + i8) % vArr2.length;
            this.f4187a[length2] = j;
            vArr2[length2] = v;
            this.f4190d = i8 + 1;
        }
    }
}
