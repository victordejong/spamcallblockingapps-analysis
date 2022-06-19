package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.C4999x;
import com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.c1.c0.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/j.class */
public final class C4912j extends AbstractC4908i {

    /* renamed from: n */
    private C4913a f15082n;

    /* renamed from: o */
    private int f15083o;

    /* renamed from: p */
    private boolean f15084p;

    /* renamed from: q */
    private C4999x.C5003d f15085q;

    /* renamed from: r */
    private C4999x.C5001b f15086r;

    /* renamed from: com.google.android.exoplayer2.c1.c0.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/j$a.class */
    public static final class C4913a {

        /* renamed from: a */
        public final C4999x.C5003d f15087a;

        /* renamed from: b */
        public final C4999x.C5001b f15088b;

        /* renamed from: c */
        public final byte[] f15089c;

        /* renamed from: d */
        public final C4999x.C5002c[] f15090d;

        /* renamed from: e */
        public final int f15091e;

        public C4913a(C4999x.C5003d c5003d, C4999x.C5001b c5001b, byte[] bArr, C4999x.C5002c[] c5002cArr, int i) {
            this.f15087a = c5003d;
            this.f15088b = c5001b;
            this.f15089c = bArr;
            this.f15090d = c5002cArr;
            this.f15091e = i;
        }
    }

    /* renamed from: l */
    static void m21208l(C5536v c5536v, long j) {
        c5536v.m18681L(c5536v.m18675d() + 4);
        c5536v.f17941a[c5536v.m18675d() - 4] = (byte) (j & 255);
        c5536v.f17941a[c5536v.m18675d() - 3] = (byte) ((j >>> 8) & 255);
        c5536v.f17941a[c5536v.m18675d() - 2] = (byte) ((j >>> 16) & 255);
        c5536v.f17941a[c5536v.m18675d() - 1] = (byte) ((j >>> 24) & 255);
    }

    /* renamed from: m */
    private static int m21207m(byte b, C4913a c4913a) {
        return !c4913a.f15090d[m21206n(b, c4913a.f15091e, 1)].f15541a ? c4913a.f15087a.f15551g : c4913a.f15087a.f15552h;
    }

    /* renamed from: n */
    static int m21206n(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    /* renamed from: p */
    public static boolean m21204p(C5536v c5536v) {
        try {
            return C4999x.m20948l(1, c5536v, true);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: d */
    public void mo21212d(long j) {
        super.mo21212d(j);
        int i = 0;
        this.f15084p = j != 0;
        C4999x.C5003d c5003d = this.f15085q;
        if (c5003d != null) {
            i = c5003d.f15551g;
        }
        this.f15083o = i;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: e */
    protected long mo21211e(C5536v c5536v) {
        byte[] bArr = c5536v.f17941a;
        int i = 0;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        int m21207m = m21207m(bArr[0], this.f15082n);
        if (this.f15084p) {
            i = (this.f15083o + m21207m) / 4;
        }
        long j = i;
        m21208l(c5536v, j);
        this.f15084p = true;
        this.f15083o = m21207m;
        return j;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: h */
    protected boolean mo21210h(C5536v c5536v, long j, AbstractC4908i.C4910b c4910b) {
        if (this.f15082n != null) {
            return false;
        }
        C4913a m21205o = m21205o(c5536v);
        this.f15082n = m21205o;
        if (m21205o == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f15082n.f15087a.f15554j);
        arrayList.add(this.f15082n.f15089c);
        C4999x.C5003d c5003d = this.f15082n.f15087a;
        c4910b.f15080a = Format.m21740o(null, "audio/vorbis", null, c5003d.f15549e, -1, c5003d.f15546b, (int) c5003d.f15547c, arrayList, null, 0, null);
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: j */
    public void mo21209j(boolean z) {
        super.mo21209j(z);
        if (z) {
            this.f15082n = null;
            this.f15085q = null;
            this.f15086r = null;
        }
        this.f15083o = 0;
        this.f15084p = false;
    }

    /* renamed from: o */
    C4913a m21205o(C5536v c5536v) {
        if (this.f15085q == null) {
            this.f15085q = C4999x.m20950j(c5536v);
            return null;
        } else if (this.f15086r == null) {
            this.f15086r = C4999x.m20952h(c5536v);
            return null;
        } else {
            byte[] bArr = new byte[c5536v.m18675d()];
            System.arraycopy(c5536v.f17941a, 0, bArr, 0, c5536v.m18675d());
            C4999x.C5002c[] m20949k = C4999x.m20949k(c5536v, this.f15085q.f15546b);
            return new C4913a(this.f15085q, this.f15086r, bArr, m20949k, C4999x.m20959a(m20949k.length - 1));
        }
    }
}
