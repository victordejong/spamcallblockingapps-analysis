package androidx.media2.exoplayer.external.util;

import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.util.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/k.class */
public final class C2010k {

    /* renamed from: a */
    public int f8101a;

    /* renamed from: b */
    private long[] f8102b;

    public C2010k() {
        this(32);
    }

    public C2010k(int i) {
        this.f8102b = new long[i];
    }

    /* renamed from: a */
    public final long m41577a(int i) {
        if (i < 0 || i >= this.f8101a) {
            int i2 = this.f8101a;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.f8102b[i];
    }

    /* renamed from: a */
    public final void m41576a(long j) {
        int i = this.f8101a;
        long[] jArr = this.f8102b;
        if (i == jArr.length) {
            this.f8102b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f8102b;
        int i2 = this.f8101a;
        this.f8101a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: a */
    public final long[] m41578a() {
        return Arrays.copyOf(this.f8102b, this.f8101a);
    }
}
