package p1727n3.p1874y.p1876b.p1877a.p1895t0.p1896o0;

import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Arrays;
/* renamed from: n3.y.b.a.t0.o0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/o0/a.class */
public final class C27348a {

    /* renamed from: e */
    public static final C27348a f76972e = new C27348a(new long[0]);

    /* renamed from: a */
    public final int f76973a;

    /* renamed from: b */
    public final long[] f76974b;

    /* renamed from: c */
    public final C27349a[] f76975c;

    /* renamed from: d */
    public final long f76976d;

    /* renamed from: n3.y.b.a.t0.o0.a$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/o0/a$a.class */
    public static final class C27349a {

        /* renamed from: a */
        public final int f76977a = -1;

        /* renamed from: c */
        public final int[] f76979c = new int[0];

        /* renamed from: b */
        public final Uri[] f76978b = new Uri[0];

        /* renamed from: d */
        public final long[] f76980d = new long[0];

        public C27349a() {
            MediaSessionCompat.m43211p(true);
        }

        /* renamed from: a */
        public int m470a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f76979c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: b */
        public boolean m469b() {
            return this.f76977a == -1 || m470a(-1) < this.f76977a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C27349a.class != obj.getClass()) {
                return false;
            }
            C27349a c27349a = (C27349a) obj;
            if (this.f76977a != c27349a.f76977a || !Arrays.equals(this.f76978b, c27349a.f76978b) || !Arrays.equals(this.f76979c, c27349a.f76979c) || !Arrays.equals(this.f76980d, c27349a.f76980d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f76977a;
            int hashCode = Arrays.hashCode(this.f76978b);
            return Arrays.hashCode(this.f76980d) + ((Arrays.hashCode(this.f76979c) + (((i * 31) + hashCode) * 31)) * 31);
        }
    }

    public C27348a(long... jArr) {
        int length = jArr.length;
        this.f76973a = length;
        this.f76974b = Arrays.copyOf(jArr, length);
        this.f76975c = new C27349a[length];
        for (int i = 0; i < length; i++) {
            this.f76975c[i] = new C27349a();
        }
        this.f76976d = -9223372036854775807L;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27348a.class != obj.getClass()) {
            return false;
        }
        C27348a c27348a = (C27348a) obj;
        if (this.f76973a != c27348a.f76973a || this.f76976d != c27348a.f76976d || !Arrays.equals(this.f76974b, c27348a.f76974b) || !Arrays.equals(this.f76975c, c27348a.f76975c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f76973a;
        int i2 = (int) this.f76976d;
        return Arrays.hashCode(this.f76975c) + ((Arrays.hashCode(this.f76974b) + (((((i * 31) + ((int) 0)) * 31) + i2) * 31)) * 31);
    }
}
