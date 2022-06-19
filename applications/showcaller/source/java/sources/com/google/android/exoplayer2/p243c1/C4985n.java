package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.C5147b;
import com.google.android.exoplayer2.util.C5522l;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/n.class */
public final class C4985n {

    /* renamed from: com.google.android.exoplayer2.c1.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/n$a.class */
    public static final class C4986a {

        /* renamed from: a */
        public C5522l f15496a;

        public C4986a(C5522l c5522l) {
            this.f15496a = c5522l;
        }
    }

    /* renamed from: a */
    public static boolean m20987a(AbstractC4979i abstractC4979i) {
        C5536v c5536v = new C5536v(4);
        boolean z = false;
        abstractC4979i.mo21000j(c5536v.f17941a, 0, 4);
        if (c5536v.m18691B() == 1716281667) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static int m20986b(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21003g();
        C5536v c5536v = new C5536v(2);
        abstractC4979i.mo21000j(c5536v.f17941a, 0, 2);
        int m18687F = c5536v.m18687F();
        if ((m18687F >> 2) == 16382) {
            abstractC4979i.mo21003g();
            return m18687F;
        }
        abstractC4979i.mo21003g();
        throw new ParserException("First frame does not start with sync code.");
    }

    /* renamed from: c */
    public static Metadata m20985c(AbstractC4979i abstractC4979i, boolean z) {
        Metadata m20971a = new C4989q().m20971a(abstractC4979i, z ? null : C5147b.f16170a);
        Metadata metadata = null;
        if (m20971a != null) {
            metadata = m20971a.m20392d() == 0 ? null : m20971a;
        }
        return metadata;
    }

    /* renamed from: d */
    public static Metadata m20984d(AbstractC4979i abstractC4979i, boolean z) {
        abstractC4979i.mo21003g();
        long mo21007c = abstractC4979i.mo21007c();
        Metadata m20985c = m20985c(abstractC4979i, z);
        abstractC4979i.mo21002h((int) (abstractC4979i.mo21007c() - mo21007c));
        return m20985c;
    }

    /* renamed from: e */
    public static boolean m20983e(AbstractC4979i abstractC4979i, C4986a c4986a) {
        abstractC4979i.mo21003g();
        C5535u c5535u = new C5535u(new byte[4]);
        abstractC4979i.mo21000j(c5535u.f17937a, 0, 4);
        boolean m18704g = c5535u.m18704g();
        int m18703h = c5535u.m18703h(7);
        int m18703h2 = c5535u.m18703h(24) + 4;
        if (m18703h == 0) {
            c4986a.f15496a = m20979i(abstractC4979i);
        } else {
            C5522l c5522l = c4986a.f15496a;
            if (c5522l == null) {
                throw new IllegalArgumentException();
            }
            if (m18703h == 3) {
                c4986a.f15496a = c5522l.m18774c(m20981g(abstractC4979i, m18703h2));
            } else if (m18703h == 4) {
                c4986a.f15496a = c5522l.m18773d(m20977k(abstractC4979i, m18703h2));
            } else if (m18703h == 6) {
                c4986a.f15496a = c5522l.m18775b(Collections.singletonList(m20982f(abstractC4979i, m18703h2)));
            } else {
                abstractC4979i.mo21002h(m18703h2);
            }
        }
        return m18704g;
    }

    /* renamed from: f */
    private static PictureFrame m20982f(AbstractC4979i abstractC4979i, int i) {
        C5536v c5536v = new C5536v(i);
        abstractC4979i.readFully(c5536v.f17941a, 0, i);
        c5536v.m18679N(4);
        int m18668k = c5536v.m18668k();
        String m18655x = c5536v.m18655x(c5536v.m18668k(), Charset.forName("US-ASCII"));
        String m18656w = c5536v.m18656w(c5536v.m18668k());
        int m18668k2 = c5536v.m18668k();
        int m18668k3 = c5536v.m18668k();
        int m18668k4 = c5536v.m18668k();
        int m18668k5 = c5536v.m18668k();
        int m18668k6 = c5536v.m18668k();
        byte[] bArr = new byte[m18668k6];
        c5536v.m18671h(bArr, 0, m18668k6);
        return new PictureFrame(m18668k, m18655x, m18656w, m18668k2, m18668k3, m18668k4, m18668k5, bArr);
    }

    /* renamed from: g */
    private static C5522l.C5523a m20981g(AbstractC4979i abstractC4979i, int i) {
        C5536v c5536v = new C5536v(i);
        abstractC4979i.readFully(c5536v.f17941a, 0, i);
        return m20980h(c5536v);
    }

    /* renamed from: h */
    public static C5522l.C5523a m20980h(C5536v c5536v) {
        long[] jArr;
        long[] jArr2;
        c5536v.m18679N(1);
        int m18690C = c5536v.m18690C();
        long m18676c = c5536v.m18676c() + m18690C;
        int i = m18690C / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long m18660s = c5536v.m18660s();
            if (m18660s == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = m18660s;
            jArr4[i2] = c5536v.m18660s();
            c5536v.m18679N(2);
            i2++;
        }
        c5536v.m18679N((int) (m18676c - c5536v.m18676c()));
        return new C5522l.C5523a(jArr, jArr2);
    }

    /* renamed from: i */
    private static C5522l m20979i(AbstractC4979i abstractC4979i) {
        byte[] bArr = new byte[38];
        abstractC4979i.readFully(bArr, 0, 38);
        return new C5522l(bArr, 4);
    }

    /* renamed from: j */
    public static void m20978j(AbstractC4979i abstractC4979i) {
        C5536v c5536v = new C5536v(4);
        abstractC4979i.readFully(c5536v.f17941a, 0, 4);
        if (c5536v.m18691B() == 1716281667) {
            return;
        }
        throw new ParserException("Failed to read FLAC stream marker.");
    }

    /* renamed from: k */
    private static List<String> m20977k(AbstractC4979i abstractC4979i, int i) {
        C5536v c5536v = new C5536v(i);
        abstractC4979i.readFully(c5536v.f17941a, 0, i);
        c5536v.m18679N(4);
        return Arrays.asList(C4999x.m20951i(c5536v, false, false).f15539b);
    }
}
