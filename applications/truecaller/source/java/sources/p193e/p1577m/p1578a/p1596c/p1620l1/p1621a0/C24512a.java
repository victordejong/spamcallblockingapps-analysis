package p193e.p1577m.p1578a.p1596c.p1620l1.p1621a0;

import android.net.Uri;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.l1.a0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/a0/a.class */
public final class C24512a {

    /* renamed from: e */
    public static final C24512a f68451e = new C24512a(new long[0]);

    /* renamed from: a */
    public final int f68452a;

    /* renamed from: b */
    public final long[] f68453b;

    /* renamed from: c */
    public final C24513a[] f68454c;

    /* renamed from: d */
    public final long f68455d;

    /* renamed from: e.m.a.c.l1.a0.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/a0/a$a.class */
    public static final class C24513a {

        /* renamed from: a */
        public final int f68456a = -1;

        /* renamed from: c */
        public final int[] f68458c = new int[0];

        /* renamed from: b */
        public final Uri[] f68457b = new Uri[0];

        /* renamed from: d */
        public final long[] f68459d = new long[0];

        public C24513a() {
            C26232y.m2310r(true);
        }

        /* renamed from: a */
        public int m4982a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f68458c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: b */
        public boolean m4981b() {
            return this.f68456a == -1 || m4982a(-1) < this.f68456a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C24513a.class != obj.getClass()) {
                return false;
            }
            C24513a c24513a = (C24513a) obj;
            if (this.f68456a != c24513a.f68456a || !Arrays.equals(this.f68457b, c24513a.f68457b) || !Arrays.equals(this.f68458c, c24513a.f68458c) || !Arrays.equals(this.f68459d, c24513a.f68459d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f68456a;
            int hashCode = Arrays.hashCode(this.f68457b);
            return Arrays.hashCode(this.f68459d) + ((Arrays.hashCode(this.f68458c) + (((i * 31) + hashCode) * 31)) * 31);
        }
    }

    public C24512a(long... jArr) {
        int length = jArr.length;
        this.f68452a = length;
        this.f68453b = Arrays.copyOf(jArr, length);
        this.f68454c = new C24513a[length];
        for (int i = 0; i < length; i++) {
            this.f68454c[i] = new C24513a();
        }
        this.f68455d = -9223372036854775807L;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24512a.class != obj.getClass()) {
            return false;
        }
        C24512a c24512a = (C24512a) obj;
        if (this.f68452a != c24512a.f68452a || this.f68455d != c24512a.f68455d || !Arrays.equals(this.f68453b, c24512a.f68453b) || !Arrays.equals(this.f68454c, c24512a.f68454c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f68452a;
        int i2 = (int) this.f68455d;
        return Arrays.hashCode(this.f68454c) + ((Arrays.hashCode(this.f68453b) + (((((i * 31) + ((int) 0)) * 31) + i2) * 31)) * 31);
    }
}
