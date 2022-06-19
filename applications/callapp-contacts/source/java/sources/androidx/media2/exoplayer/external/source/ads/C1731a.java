package androidx.media2.exoplayer.external.source.ads;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.source.ads.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/a.class */
public final class C1731a {

    /* renamed from: a */
    public static final C1731a f6799a = new C1731a(new long[0]);

    /* renamed from: b */
    public final int f6800b;

    /* renamed from: c */
    public final long[] f6801c;

    /* renamed from: d */
    public final C1732a[] f6802d;

    /* renamed from: e */
    public final long f6803e;

    /* renamed from: f */
    public final long f6804f;

    /* renamed from: androidx.media2.exoplayer.external.source.ads.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/a$a.class */
    public static final class C1732a {

        /* renamed from: a */
        public final int f6805a;

        /* renamed from: b */
        public final Uri[] f6806b;

        /* renamed from: c */
        public final int[] f6807c;

        /* renamed from: d */
        public final long[] f6808d;

        public C1732a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public C1732a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            C1993a.m41688a(iArr.length == uriArr.length);
            this.f6805a = i;
            this.f6807c = iArr;
            this.f6806b = uriArr;
            this.f6808d = jArr;
        }

        /* renamed from: a */
        public final int m42364a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f6807c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: a */
        public final boolean m42365a() {
            return this.f6805a == -1 || m42364a(-1) < this.f6805a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1732a c1732a = (C1732a) obj;
            return this.f6805a == c1732a.f6805a && Arrays.equals(this.f6806b, c1732a.f6806b) && Arrays.equals(this.f6807c, c1732a.f6807c) && Arrays.equals(this.f6808d, c1732a.f6808d);
        }

        public final int hashCode() {
            return (((((this.f6805a * 31) + Arrays.hashCode(this.f6806b)) * 31) + Arrays.hashCode(this.f6807c)) * 31) + Arrays.hashCode(this.f6808d);
        }
    }

    public C1731a(long... jArr) {
        int length = jArr.length;
        this.f6800b = length;
        this.f6801c = Arrays.copyOf(jArr, length);
        this.f6802d = new C1732a[length];
        for (int i = 0; i < length; i++) {
            this.f6802d[i] = new C1732a();
        }
        this.f6803e = 0L;
        this.f6804f = -9223372036854775807L;
    }

    public C1731a(long[] jArr, C1732a[] c1732aArr, long j, long j2) {
        this.f6800b = c1732aArr.length;
        this.f6801c = jArr;
        this.f6802d = c1732aArr;
        this.f6803e = j;
        this.f6804f = j2;
    }

    /* renamed from: a */
    private boolean m42367a(long j, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f6801c[i];
        if (j2 != Long.MIN_VALUE) {
            return j < j2;
        }
        long j3 = this.f6804f;
        return j3 == -9223372036854775807L || j < j3;
    }

    /* renamed from: a */
    public final int m42368a(long j) {
        int length = this.f6801c.length - 1;
        while (length >= 0 && m42367a(j, length)) {
            length--;
        }
        if (length < 0 || !this.f6802d[length].m42365a()) {
            return -1;
        }
        return length;
    }

    /* renamed from: a */
    public final int m42366a(long j, long j2) {
        if (j != Long.MIN_VALUE) {
            if (j2 != -9223372036854775807L && j >= j2) {
                return -1;
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f6801c;
                if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.f6802d[i].m42365a())) {
                    break;
                }
                i++;
            }
            if (i >= this.f6801c.length) {
                return -1;
            }
            return i;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1731a c1731a = (C1731a) obj;
        return this.f6800b == c1731a.f6800b && this.f6803e == c1731a.f6803e && this.f6804f == c1731a.f6804f && Arrays.equals(this.f6801c, c1731a.f6801c) && Arrays.equals(this.f6802d, c1731a.f6802d);
    }

    public final int hashCode() {
        return (((((((this.f6800b * 31) + ((int) this.f6803e)) * 31) + ((int) this.f6804f)) * 31) + Arrays.hashCode(this.f6801c)) * 31) + Arrays.hashCode(this.f6802d);
    }
}
