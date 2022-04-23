package androidx.media2.exoplayer.external.util;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public int f4145a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f4146b;

    public k() {
        this(32);
    }

    public k(int i) {
        this.f4146b = new long[i];
    }

    public final long a(int i) {
        if (i >= 0 && i < this.f4145a) {
            return this.f4146b[i];
        }
        int i2 = this.f4145a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void a(long j) {
        int i = this.f4145a;
        long[] jArr = this.f4146b;
        if (i == jArr.length) {
            this.f4146b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f4146b;
        int i2 = this.f4145a;
        this.f4145a = i2 + 1;
        jArr2[i2] = j;
    }

    public final long[] a() {
        return Arrays.copyOf(this.f4146b, this.f4145a);
    }
}
