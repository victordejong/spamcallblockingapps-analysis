package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.source.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/a.class */
public final class C5206a {

    /* renamed from: a */
    public static final C5206a f16346a = new C5206a(new long[0]);

    /* renamed from: b */
    public final int f16347b;

    /* renamed from: c */
    public final long[] f16348c;

    /* renamed from: d */
    public final C5207a[] f16349d;

    /* renamed from: e */
    public final long f16350e;

    /* renamed from: f */
    public final long f16351f;

    /* renamed from: com.google.android.exoplayer2.source.ads.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/a$a.class */
    public static final class C5207a {

        /* renamed from: a */
        public final int f16352a;

        /* renamed from: b */
        public final Uri[] f16353b;

        /* renamed from: c */
        public final int[] f16354c;

        /* renamed from: d */
        public final long[] f16355d;

        public C5207a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        private C5207a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            C5508e.m18915a(iArr.length == uriArr.length);
            this.f16352a = i;
            this.f16354c = iArr;
            this.f16353b = uriArr;
            this.f16355d = jArr;
        }

        /* renamed from: a */
        public int m20108a() {
            return m20107b(-1);
        }

        /* renamed from: b */
        public int m20107b(int i) {
            while (true) {
                i++;
                int[] iArr = this.f16354c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: c */
        public boolean m20106c() {
            return this.f16352a == -1 || m20108a() < this.f16352a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C5207a.class != obj.getClass()) {
                return false;
            }
            C5207a c5207a = (C5207a) obj;
            if (this.f16352a != c5207a.f16352a || !Arrays.equals(this.f16353b, c5207a.f16353b) || !Arrays.equals(this.f16354c, c5207a.f16354c) || !Arrays.equals(this.f16355d, c5207a.f16355d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f16352a * 31) + Arrays.hashCode(this.f16353b)) * 31) + Arrays.hashCode(this.f16354c)) * 31) + Arrays.hashCode(this.f16355d);
        }
    }

    public C5206a(long... jArr) {
        int length = jArr.length;
        this.f16347b = length;
        this.f16348c = Arrays.copyOf(jArr, length);
        this.f16349d = new C5207a[length];
        for (int i = 0; i < length; i++) {
            this.f16349d[i] = new C5207a();
        }
        this.f16350e = 0L;
        this.f16351f = -9223372036854775807L;
    }

    /* renamed from: c */
    private boolean m20109c(long j, int i) {
        boolean z = false;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f16348c[i];
        if (j2 != Long.MIN_VALUE) {
            boolean z2 = false;
            if (j < j2) {
                z2 = true;
            }
            return z2;
        }
        long j3 = this.f16351f;
        if (j3 == -9223372036854775807L || j < j3) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public int m20111a(long j, long j2) {
        int i = -1;
        if (j != Long.MIN_VALUE) {
            if (j2 == -9223372036854775807L || j < j2) {
                int i2 = 0;
                while (true) {
                    long[] jArr = this.f16348c;
                    if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && this.f16349d[i2].m20106c())) {
                        break;
                    }
                    i2++;
                }
                i = -1;
                if (i2 < this.f16348c.length) {
                    i = i2;
                }
            } else {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: b */
    public int m20110b(long j) {
        int length = this.f16348c.length - 1;
        while (length >= 0 && m20109c(j, length)) {
            length--;
        }
        if (length < 0 || !this.f16349d[length].m20106c()) {
            length = -1;
        }
        return length;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C5206a.class != obj.getClass()) {
            return false;
        }
        C5206a c5206a = (C5206a) obj;
        if (this.f16347b != c5206a.f16347b || this.f16350e != c5206a.f16350e || this.f16351f != c5206a.f16351f || !Arrays.equals(this.f16348c, c5206a.f16348c) || !Arrays.equals(this.f16349d, c5206a.f16349d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f16347b * 31) + ((int) this.f16350e)) * 31) + ((int) this.f16351f)) * 31) + Arrays.hashCode(this.f16348c)) * 31) + Arrays.hashCode(this.f16349d);
    }
}
