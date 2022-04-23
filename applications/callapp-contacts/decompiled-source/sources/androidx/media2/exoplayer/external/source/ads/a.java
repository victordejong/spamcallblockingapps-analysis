package androidx.media2.exoplayer.external.source.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3525a = new a(new long[0]);

    /* renamed from: b  reason: collision with root package name */
    public final int f3526b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f3527c;

    /* renamed from: d  reason: collision with root package name */
    public final C0084a[] f3528d;
    public final long e;
    public final long f;

    /* renamed from: androidx.media2.exoplayer.external.source.ads.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/a$a.class */
    public static final class C0084a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3529a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri[] f3530b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f3531c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f3532d;

        public C0084a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0084a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            androidx.media2.exoplayer.external.util.a.a(iArr.length == uriArr.length);
            this.f3529a = i;
            this.f3531c = iArr;
            this.f3530b = uriArr;
            this.f3532d = jArr;
        }

        public final int a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f3531c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        public final boolean a() {
            return this.f3529a == -1 || a(-1) < this.f3529a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0084a aVar = (C0084a) obj;
            return this.f3529a == aVar.f3529a && Arrays.equals(this.f3530b, aVar.f3530b) && Arrays.equals(this.f3531c, aVar.f3531c) && Arrays.equals(this.f3532d, aVar.f3532d);
        }

        public final int hashCode() {
            return (((((this.f3529a * 31) + Arrays.hashCode(this.f3530b)) * 31) + Arrays.hashCode(this.f3531c)) * 31) + Arrays.hashCode(this.f3532d);
        }
    }

    public a(long... jArr) {
        int length = jArr.length;
        this.f3526b = length;
        this.f3527c = Arrays.copyOf(jArr, length);
        this.f3528d = new C0084a[length];
        for (int i = 0; i < length; i++) {
            this.f3528d[i] = new C0084a();
        }
        this.e = 0L;
        this.f = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long[] jArr, C0084a[] aVarArr, long j, long j2) {
        this.f3526b = aVarArr.length;
        this.f3527c = jArr;
        this.f3528d = aVarArr;
        this.e = j;
        this.f = j2;
    }

    private boolean a(long j, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f3527c[i];
        if (j2 != Long.MIN_VALUE) {
            return j < j2;
        }
        long j3 = this.f;
        return j3 == -9223372036854775807L || j < j3;
    }

    public final int a(long j) {
        int length = this.f3527c.length - 1;
        while (length >= 0 && a(j, length)) {
            length--;
        }
        if (length < 0 || !this.f3528d[length].a()) {
            return -1;
        }
        return length;
    }

    public final int a(long j, long j2) {
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        if (j2 != -9223372036854775807L && j >= j2) {
            return -1;
        }
        int i = 0;
        while (true) {
            long[] jArr = this.f3527c;
            if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.f3528d[i].a())) {
                break;
            }
            i++;
        }
        if (i < this.f3527c.length) {
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
        a aVar = (a) obj;
        return this.f3526b == aVar.f3526b && this.e == aVar.e && this.f == aVar.f && Arrays.equals(this.f3527c, aVar.f3527c) && Arrays.equals(this.f3528d, aVar.f3528d);
    }

    public final int hashCode() {
        return (((((((this.f3526b * 31) + ((int) this.e)) * 31) + ((int) this.f)) * 31) + Arrays.hashCode(this.f3527c)) * 31) + Arrays.hashCode(this.f3528d);
    }
}
