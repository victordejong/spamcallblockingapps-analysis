package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
/* renamed from: n3.y.b.a.t0.h0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/h0.class */
public final class C27339h0 {

    /* renamed from: i */
    public int f76934i;

    /* renamed from: j */
    public int f76935j;

    /* renamed from: k */
    public int f76936k;

    /* renamed from: l */
    public int f76937l;

    /* renamed from: o */
    public boolean f76940o;

    /* renamed from: r */
    public Format f76943r;

    /* renamed from: s */
    public Format f76944s;

    /* renamed from: t */
    public int f76945t;

    /* renamed from: a */
    public int f76926a = 1000;

    /* renamed from: b */
    public int[] f76927b = new int[1000];

    /* renamed from: c */
    public long[] f76928c = new long[1000];

    /* renamed from: f */
    public long[] f76931f = new long[1000];

    /* renamed from: e */
    public int[] f76930e = new int[1000];

    /* renamed from: d */
    public int[] f76929d = new int[1000];

    /* renamed from: g */
    public AbstractC27190p.C27191a[] f76932g = new AbstractC27190p.C27191a[1000];

    /* renamed from: h */
    public Format[] f76933h = new Format[1000];

    /* renamed from: m */
    public long f76938m = Long.MIN_VALUE;

    /* renamed from: n */
    public long f76939n = Long.MIN_VALUE;

    /* renamed from: q */
    public boolean f76942q = true;

    /* renamed from: p */
    public boolean f76941p = true;

    /* renamed from: n3.y.b.a.t0.h0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/h0$a.class */
    public static final class C27340a {

        /* renamed from: a */
        public int f76946a;

        /* renamed from: b */
        public long f76947b;

        /* renamed from: c */
        public AbstractC27190p.C27191a f76948c;
    }

    /* renamed from: a */
    public final long m499a(int i) {
        int i2;
        this.f76938m = Math.max(this.f76938m, m496d(i));
        int i3 = this.f76934i - i;
        this.f76934i = i3;
        this.f76935j += i;
        int i4 = this.f76936k + i;
        this.f76936k = i4;
        int i5 = this.f76926a;
        if (i4 >= i5) {
            this.f76936k = i4 - i5;
        }
        int i6 = this.f76937l - i;
        this.f76937l = i6;
        if (i6 < 0) {
            this.f76937l = 0;
        }
        if (i3 == 0) {
            int i7 = this.f76936k;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.f76928c[i7 - 1] + this.f76929d[i2];
        }
        return this.f76928c[this.f76936k];
    }

    /* renamed from: b */
    public long m498b(int i) {
        int m495e;
        int i2 = this.f76935j;
        int i3 = this.f76934i;
        int i4 = (i2 + i3) - i;
        MediaSessionCompat.m43211p(i4 >= 0 && i4 <= i3 - this.f76937l);
        int i5 = this.f76934i - i4;
        this.f76934i = i5;
        this.f76939n = Math.max(this.f76938m, m496d(i5));
        boolean z = false;
        if (i4 == 0) {
            z = false;
            if (this.f76940o) {
                z = true;
            }
        }
        this.f76940o = z;
        int i6 = this.f76934i;
        if (i6 == 0) {
            return 0L;
        }
        return this.f76928c[m495e(i6 - 1)] + this.f76929d[m495e];
    }

    /* renamed from: c */
    public final int m497c(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f76931f[i4] <= j; i5++) {
            if (!z || (this.f76930e[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f76926a) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: d */
    public final long m496d(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m495e = m495e(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.f76931f[m495e]);
            if ((this.f76930e[m495e] & 1) != 0) {
                c = c2;
                break;
            }
            int i3 = m495e - 1;
            m495e = i3;
            if (i3 == -1) {
                m495e = this.f76926a - 1;
            }
            i2++;
        }
        return c;
    }

    /* renamed from: e */
    public final int m495e(int i) {
        int i2 = this.f76936k + i;
        int i3 = this.f76926a;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    /* renamed from: f */
    public boolean m494f() {
        boolean z;
        synchronized (this) {
            z = this.f76937l != this.f76934i;
        }
        return z;
    }
}
