package p000;

import android.net.Uri;
import com.google.android.exoplayer2.C0515C;
import java.util.Arrays;
/* renamed from: cq */
/* loaded from: classes-dex2jar.jar:cq.class */
public final class C1257cq {

    /* renamed from: f */
    public static final C1257cq f5659f = new C1257cq(new long[0]);

    /* renamed from: a */
    public final int f5660a;

    /* renamed from: b */
    public final long[] f5661b;

    /* renamed from: c */
    public final C1258a[] f5662c;

    /* renamed from: d */
    public final long f5663d;

    /* renamed from: e */
    public final long f5664e;

    /* renamed from: cq$a */
    /* loaded from: classes-dex2jar.jar:cq$a.class */
    public static final class C1258a {

        /* renamed from: a */
        public final int f5665a;

        /* renamed from: b */
        public final Uri[] f5666b;

        /* renamed from: c */
        public final int[] f5667c;

        /* renamed from: d */
        public final long[] f5668d;

        public C1258a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public C1258a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            it.a(iArr.length == uriArr.length);
            this.f5665a = i;
            this.f5667c = iArr;
            this.f5666b = uriArr;
            this.f5668d = jArr;
        }

        /* renamed from: a */
        public int m3007a() {
            return m3006b(-1);
        }

        /* renamed from: b */
        public int m3006b(int i) {
            while (true) {
                i++;
                int[] iArr = this.f5667c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: c */
        public boolean m3005c() {
            return this.f5665a == -1 || m3007a() < this.f5665a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1258a.class != obj.getClass()) {
                return false;
            }
            C1258a c1258a = (C1258a) obj;
            if (this.f5665a != c1258a.f5665a || !Arrays.equals(this.f5666b, c1258a.f5666b) || !Arrays.equals(this.f5667c, c1258a.f5667c) || !Arrays.equals(this.f5668d, c1258a.f5668d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f5665a * 31) + Arrays.hashCode(this.f5666b)) * 31) + Arrays.hashCode(this.f5667c)) * 31) + Arrays.hashCode(this.f5668d);
        }
    }

    public C1257cq(long... jArr) {
        int length = jArr.length;
        this.f5660a = length;
        this.f5661b = Arrays.copyOf(jArr, length);
        this.f5662c = new C1258a[length];
        for (int i = 0; i < length; i++) {
            this.f5662c[i] = new C1258a();
        }
        this.f5663d = 0L;
        this.f5664e = C0515C.TIME_UNSET;
    }

    /* renamed from: a */
    public int m3010a(long j, long j2) {
        int i = -1;
        if (j != Long.MIN_VALUE) {
            if (j2 == C0515C.TIME_UNSET || j < j2) {
                int i2 = 0;
                while (true) {
                    long[] jArr = this.f5661b;
                    if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && this.f5662c[i2].m3005c())) {
                        break;
                    }
                    i2++;
                }
                i = -1;
                if (i2 < this.f5661b.length) {
                    i = i2;
                }
            } else {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: b */
    public int m3009b(long j) {
        int length = this.f5661b.length - 1;
        while (length >= 0 && m3008c(j, length)) {
            length--;
        }
        if (length < 0 || !this.f5662c[length].m3005c()) {
            length = -1;
        }
        return length;
    }

    /* renamed from: c */
    public final boolean m3008c(long j, int i) {
        boolean z = false;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f5661b[i];
        if (j2 != Long.MIN_VALUE) {
            boolean z2 = false;
            if (j < j2) {
                z2 = true;
            }
            return z2;
        }
        long j3 = this.f5664e;
        if (j3 == C0515C.TIME_UNSET || j < j3) {
            z = true;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1257cq.class != obj.getClass()) {
            return false;
        }
        C1257cq c1257cq = (C1257cq) obj;
        if (this.f5660a != c1257cq.f5660a || this.f5663d != c1257cq.f5663d || this.f5664e != c1257cq.f5664e || !Arrays.equals(this.f5661b, c1257cq.f5661b) || !Arrays.equals(this.f5662c, c1257cq.f5662c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f5660a * 31) + ((int) this.f5663d)) * 31) + ((int) this.f5664e)) * 31) + Arrays.hashCode(this.f5661b)) * 31) + Arrays.hashCode(this.f5662c);
    }
}
