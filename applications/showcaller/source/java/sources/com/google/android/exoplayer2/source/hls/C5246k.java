package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C5147b;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.C4966e;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.source.hls.AbstractC5243i;
import com.google.android.exoplayer2.source.hls.playlist.C5266f;
import com.google.android.exoplayer2.source.p251e0.AbstractC5221d;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5513g0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.source.hls.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/k.class */
public final class C5246k extends AbstractC5221d {

    /* renamed from: j */
    private static final C4991s f16493j = new C4991s();

    /* renamed from: k */
    private static final AtomicInteger f16494k = new AtomicInteger();

    /* renamed from: A */
    private final boolean f16495A;

    /* renamed from: B */
    private final boolean f16496B;

    /* renamed from: C */
    private AbstractC4978h f16497C;

    /* renamed from: D */
    private boolean f16498D;

    /* renamed from: E */
    private C5249n f16499E;

    /* renamed from: F */
    private int f16500F;

    /* renamed from: G */
    private boolean f16501G;

    /* renamed from: H */
    private volatile boolean f16502H;

    /* renamed from: I */
    private boolean f16503I;

    /* renamed from: l */
    public final int f16504l;

    /* renamed from: m */
    public final int f16505m;

    /* renamed from: n */
    public final Uri f16506n;

    /* renamed from: o */
    private final AbstractC5478j f16507o;

    /* renamed from: p */
    private final C5481l f16508p;

    /* renamed from: q */
    private final AbstractC4978h f16509q;

    /* renamed from: r */
    private final boolean f16510r;

    /* renamed from: s */
    private final boolean f16511s;

    /* renamed from: t */
    private final C5509e0 f16512t;

    /* renamed from: u */
    private final boolean f16513u;

    /* renamed from: v */
    private final AbstractC5243i f16514v;

    /* renamed from: w */
    private final List<Format> f16515w;

    /* renamed from: x */
    private final DrmInitData f16516x;

    /* renamed from: y */
    private final C5147b f16517y;

    /* renamed from: z */
    private final C5536v f16518z;

    private C5246k(AbstractC5243i abstractC5243i, AbstractC5478j abstractC5478j, C5481l c5481l, Format format, boolean z, AbstractC5478j abstractC5478j2, C5481l c5481l2, boolean z2, Uri uri, List<Format> list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, boolean z4, C5509e0 c5509e0, DrmInitData drmInitData, AbstractC4978h abstractC4978h, C5147b c5147b, C5536v c5536v, boolean z5) {
        super(abstractC5478j, c5481l, format, i, obj, j, j2, j3);
        this.f16495A = z;
        this.f16505m = i2;
        this.f16508p = c5481l2;
        this.f16507o = abstractC5478j2;
        this.f16501G = c5481l2 != null;
        this.f16496B = z2;
        this.f16506n = uri;
        this.f16510r = z4;
        this.f16512t = c5509e0;
        this.f16511s = z3;
        this.f16514v = abstractC5243i;
        this.f16515w = list;
        this.f16516x = drmInitData;
        this.f16509q = abstractC4978h;
        this.f16517y = c5147b;
        this.f16518z = c5536v;
        this.f16513u = z5;
        this.f16504l = f16494k.getAndIncrement();
    }

    /* renamed from: h */
    private static AbstractC5478j m20056h(AbstractC5478j abstractC5478j, byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            C5508e.m18911e(bArr2);
            return new C5234d(abstractC5478j, bArr, bArr2);
        }
        return abstractC5478j;
    }

    /* renamed from: i */
    public static C5246k m20055i(AbstractC5243i abstractC5243i, AbstractC5478j abstractC5478j, Format format, long j, C5266f c5266f, int i, Uri uri, List<Format> list, int i2, Object obj, boolean z, C5253o c5253o, C5246k c5246k, byte[] bArr, byte[] bArr2) {
        boolean z2;
        AbstractC5478j abstractC5478j2;
        C5481l c5481l;
        boolean z3;
        C5147b c5147b;
        C5536v c5536v;
        AbstractC4978h abstractC4978h;
        C5266f.C5267a c5267a = c5266f.f16674o.get(i);
        C5481l c5481l2 = new C5481l(C5513g0.m18877d(c5266f.f16688a, c5267a.f16676d), c5267a.f16685m, c5267a.f16686n, null);
        boolean z4 = bArr != null;
        AbstractC5478j m20056h = m20056h(abstractC5478j, bArr, z4 ? m20053k((String) C5508e.m18911e(c5267a.f16684l)) : null);
        C5266f.C5267a c5267a2 = c5267a.f16677e;
        if (c5267a2 != null) {
            boolean z5 = bArr2 != null;
            byte[] m20053k = z5 ? m20053k((String) C5508e.m18911e(c5267a2.f16684l)) : null;
            C5481l c5481l3 = new C5481l(C5513g0.m18877d(c5266f.f16688a, c5267a2.f16676d), c5267a2.f16685m, c5267a2.f16686n, null);
            abstractC5478j2 = m20056h(abstractC5478j, bArr2, m20053k);
            c5481l = c5481l3;
            z2 = z5;
        } else {
            c5481l = null;
            z2 = false;
            abstractC5478j2 = null;
        }
        long j2 = j + c5267a.f16681i;
        long j3 = c5267a.f16678f;
        int i3 = c5266f.f16667h + c5267a.f16680h;
        if (c5246k != null) {
            c5147b = c5246k.f16517y;
            C5536v c5536v2 = c5246k.f16518z;
            z3 = !uri.equals(c5246k.f16506n) || !c5246k.f16503I;
            abstractC4978h = (!c5246k.f16498D || c5246k.f16505m != i3 || z3) ? null : c5246k.f16497C;
            c5536v = c5536v2;
        } else {
            c5147b = new C5147b();
            c5536v = new C5536v(10);
            abstractC4978h = null;
            z3 = false;
        }
        return new C5246k(abstractC5243i, m20056h, c5481l2, format, z4, abstractC5478j2, c5481l, z2, uri, list, i2, obj, j2, j2 + j3, c5266f.f16668i + i, i3, c5267a.f16687o, z, c5253o.m19976a(i3), c5267a.f16682j, abstractC4978h, c5147b, c5536v, z3);
    }

    @RequiresNonNull({"output"})
    /* renamed from: j */
    private void m20054j(AbstractC5478j abstractC5478j, C5481l c5481l, boolean z) {
        boolean z2;
        C5481l c5481l2;
        if (z) {
            c5481l2 = c5481l;
            z2 = this.f16500F != 0;
        } else {
            c5481l2 = c5481l.m19015e(this.f16500F);
            z2 = false;
        }
        try {
            C4966e m20047q = m20047q(abstractC5478j, c5481l2);
            int i = 0;
            if (z2) {
                m20047q.mo21002h(this.f16500F);
                i = 0;
            }
            while (i == 0 && !this.f16502H) {
                i = this.f16497C.mo19970f(m20047q, f16493j);
            }
            this.f16500F = (int) (m20047q.mo20999k() - c5481l.f17750e);
        } finally {
            C5515h0.m18827j(abstractC5478j);
        }
    }

    /* renamed from: k */
    private static byte[] m20053k(String str) {
        String str2 = str;
        if (C5515h0.m18804u0(str).startsWith("0x")) {
            str2 = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str2, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @RequiresNonNull({"output"})
    /* renamed from: n */
    private void m20050n() {
        if (!this.f16510r) {
            this.f16512t.m18897j();
        } else if (this.f16512t.m18904c() == Long.MAX_VALUE) {
            this.f16512t.m18899h(this.f16401f);
        }
        m20054j(this.f16403h, this.f16396a, this.f16495A);
    }

    @RequiresNonNull({"output"})
    /* renamed from: o */
    private void m20049o() {
        if (!this.f16501G) {
            return;
        }
        C5508e.m18911e(this.f16507o);
        C5508e.m18911e(this.f16508p);
        m20054j(this.f16507o, this.f16508p, this.f16496B);
        this.f16500F = 0;
        this.f16501G = false;
    }

    /* renamed from: p */
    private long m20048p(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21003g();
        try {
            abstractC4979i.mo21000j(this.f16518z.f17941a, 0, 10);
            this.f16518z.m18684I(10);
            if (this.f16518z.m18690C() != 4801587) {
                return -9223372036854775807L;
            }
            this.f16518z.m18679N(3);
            int m18654y = this.f16518z.m18654y();
            int i = m18654y + 10;
            if (i > this.f16518z.m18677b()) {
                C5536v c5536v = this.f16518z;
                byte[] bArr = c5536v.f17941a;
                c5536v.m18684I(i);
                System.arraycopy(bArr, 0, this.f16518z.f17941a, 0, 10);
            }
            abstractC4979i.mo21000j(this.f16518z.f17941a, 10, m18654y);
            Metadata m20342c = this.f16517y.m20342c(this.f16518z.f17941a, m18654y);
            if (m20342c == null) {
                return -9223372036854775807L;
            }
            int m20392d = m20342c.m20392d();
            for (int i2 = 0; i2 < m20392d; i2++) {
                Metadata.Entry m20393c = m20342c.m20393c(i2);
                if (m20393c instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) m20393c;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.f16163e)) {
                        System.arraycopy(privFrame.f16164f, 0, this.f16518z.f17941a, 0, 8);
                        this.f16518z.m18684I(8);
                        return this.f16518z.m18660s() & 8589934591L;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException e) {
            return -9223372036854775807L;
        }
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @EnsuresNonNull({"extractor"})
    @RequiresNonNull({"output"})
    /* renamed from: q */
    private C4966e m20047q(AbstractC5478j abstractC5478j, C5481l c5481l) {
        C4966e c4966e = new C4966e(abstractC5478j, c5481l.f17750e, abstractC5478j.mo18949b(c5481l));
        if (this.f16497C == null) {
            long m20048p = m20048p(c4966e);
            c4966e.mo21003g();
            AbstractC5243i.C5244a mo20057a = this.f16514v.mo20057a(this.f16509q, c5481l.f17746a, this.f16398c, this.f16515w, this.f16512t, abstractC5478j.getResponseHeaders(), c4966e);
            this.f16497C = mo20057a.f16488a;
            this.f16498D = mo20057a.f16490c;
            if (mo20057a.f16489b) {
                this.f16499E.m20000i0(m20048p != -9223372036854775807L ? this.f16512t.m18905b(m20048p) : this.f16401f);
            } else {
                this.f16499E.m20000i0(0L);
            }
            this.f16499E.m20013V();
            this.f16497C.mo19969g(this.f16499E);
        }
        this.f16499E.m20003f0(this.f16516x);
        return c4966e;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: a */
    public void mo18957a() {
        AbstractC4978h abstractC4978h;
        C5508e.m18911e(this.f16499E);
        if (this.f16497C == null && (abstractC4978h = this.f16509q) != null) {
            this.f16497C = abstractC4978h;
            this.f16498D = true;
            this.f16501G = false;
        }
        m20049o();
        if (!this.f16502H) {
            if (!this.f16511s) {
                m20050n();
            }
            this.f16503I = true;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: c */
    public void mo18955c() {
        this.f16502H = true;
    }

    /* renamed from: l */
    public void m20052l(C5249n c5249n) {
        this.f16499E = c5249n;
        c5249n.m20026I(this.f16504l, this.f16513u);
    }

    /* renamed from: m */
    public boolean m20051m() {
        return this.f16503I;
    }
}
