package p012b.p076s.p078b.p079a.p102w0.p103l0;

import android.net.Uri;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.w0.l0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/l0/a.class */
public final class C1582a {

    /* renamed from: f */
    public static final C1582a f6466f = new C1582a(new long[0]);

    /* renamed from: a */
    public final int f6467a;

    /* renamed from: b */
    public final long[] f6468b;

    /* renamed from: c */
    public final C1583a[] f6469c;

    /* renamed from: d */
    public final long f6470d;

    /* renamed from: e */
    public final long f6471e;

    /* renamed from: b.s.b.a.w0.l0.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/l0/a$a.class */
    public static final class C1583a {

        /* renamed from: a */
        public final int f6472a;

        /* renamed from: b */
        public final Uri[] f6473b;

        /* renamed from: c */
        public final int[] f6474c;

        /* renamed from: d */
        public final long[] f6475d;

        public C1583a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public C1583a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            C1160a.m34520a(iArr.length == uriArr.length);
            this.f6472a = i;
            this.f6474c = iArr;
            this.f6473b = uriArr;
            this.f6475d = jArr;
        }

        /* renamed from: a */
        public int m32734a() {
            return m32733a(-1);
        }

        /* renamed from: a */
        public int m32733a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f6474c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: b */
        public boolean m32732b() {
            return this.f6472a == -1 || m32734a() < this.f6472a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1583a.class != obj.getClass()) {
                return false;
            }
            C1583a aVar = (C1583a) obj;
            if (this.f6472a != aVar.f6472a || !Arrays.equals(this.f6473b, aVar.f6473b) || !Arrays.equals(this.f6474c, aVar.f6474c) || !Arrays.equals(this.f6475d, aVar.f6475d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f6472a * 31) + Arrays.hashCode(this.f6473b)) * 31) + Arrays.hashCode(this.f6474c)) * 31) + Arrays.hashCode(this.f6475d);
        }
    }

    public C1582a(long... jArr) {
        int length = jArr.length;
        this.f6467a = length;
        this.f6468b = Arrays.copyOf(jArr, length);
        this.f6469c = new C1583a[length];
        for (int i = 0; i < length; i++) {
            this.f6469c[i] = new C1583a();
        }
        this.f6470d = 0L;
        this.f6471e = -9223372036854775807L;
    }

    /* renamed from: a */
    public int m32737a(long j) {
        int length = this.f6468b.length - 1;
        while (length >= 0 && m32736a(j, length)) {
            length--;
        }
        if (length < 0 || !this.f6469c[length].m32732b()) {
            length = -1;
        }
        return length;
    }

    /* renamed from: a */
    public int m32735a(long j, long j2) {
        int i = -1;
        if (j != Long.MIN_VALUE) {
            if (j2 == -9223372036854775807L || j < j2) {
                int i2 = 0;
                while (true) {
                    long[] jArr = this.f6468b;
                    if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && this.f6469c[i2].m32732b())) {
                        break;
                    }
                    i2++;
                }
                i = -1;
                if (i2 < this.f6468b.length) {
                    i = i2;
                }
            } else {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final boolean m32736a(long j, int i) {
        boolean z = false;
        boolean z2 = false;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f6468b[i];
        if (j2 == Long.MIN_VALUE) {
            long j3 = this.f6471e;
            if (j3 == -9223372036854775807L || j < j3) {
                z2 = true;
            }
            return z2;
        }
        if (j < j2) {
            z = true;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1582a.class != obj.getClass()) {
            return false;
        }
        C1582a aVar = (C1582a) obj;
        if (!(this.f6467a == aVar.f6467a && this.f6470d == aVar.f6470d && this.f6471e == aVar.f6471e && Arrays.equals(this.f6468b, aVar.f6468b) && Arrays.equals(this.f6469c, aVar.f6469c))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f6467a * 31) + ((int) this.f6470d)) * 31) + ((int) this.f6471e)) * 31) + Arrays.hashCode(this.f6468b)) * 31) + Arrays.hashCode(this.f6469c);
    }
}
