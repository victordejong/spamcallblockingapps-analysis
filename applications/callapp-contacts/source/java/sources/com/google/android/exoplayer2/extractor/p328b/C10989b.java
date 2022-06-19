package com.google.android.exoplayer2.extractor.p328b;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11134m;
import com.google.android.exoplayer2.extractor.C11136n;
import com.google.android.exoplayer2.extractor.C11138o;
import com.google.android.exoplayer2.extractor.C11139p;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.C11153z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import com.google.common.base.C15374d;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.extractor.b.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/b.class */
public final class C10989b implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f35551a = _$$Lambda$b$qJdK1mPYJfLgJaqXq_DRPz_o3ho.INSTANCE;

    /* renamed from: b */
    private final byte[] f35552b;

    /* renamed from: c */
    private final C11628u f35553c;

    /* renamed from: d */
    private final boolean f35554d;

    /* renamed from: e */
    private final C11134m.C11135a f35555e;

    /* renamed from: f */
    private AbstractC11130j f35556f;

    /* renamed from: g */
    private AbstractC11150x f35557g;

    /* renamed from: h */
    private int f35558h;

    /* renamed from: i */
    private Metadata f35559i;

    /* renamed from: j */
    private C11139p f35560j;

    /* renamed from: k */
    private int f35561k;

    /* renamed from: l */
    private int f35562l;

    /* renamed from: m */
    private C10986a f35563m;

    /* renamed from: n */
    private int f35564n;

    /* renamed from: o */
    private long f35565o;

    public C10989b() {
        this(0);
    }

    public C10989b(int i) {
        this.f35552b = new byte[42];
        this.f35553c = new C11628u(new byte[32768], 0);
        this.f35554d = (i & 1) == 0 ? false : true;
        this.f35555e = new C11134m.C11135a();
        this.f35558h = 0;
    }

    /* renamed from: a */
    private long m21763a(C11628u c11628u, boolean z) {
        boolean z2;
        C11593a.m20020b(this.f35560j);
        int i = c11628u.f38734b;
        while (i <= c11628u.f38735c - 16) {
            c11628u.m19801d(i);
            if (C11134m.m21419a(c11628u, this.f35560j, this.f35562l, this.f35555e)) {
                c11628u.m19801d(i);
                return this.f35555e.f36474a;
            }
            i++;
        }
        if (!z) {
            c11628u.m19801d(i);
            return -1L;
        }
        while (i <= c11628u.f38735c - this.f35561k) {
            c11628u.m19801d(i);
            try {
                z2 = C11134m.m21419a(c11628u, this.f35560j, this.f35562l, this.f35555e);
            } catch (IndexOutOfBoundsException e) {
                z2 = false;
            }
            if (c11628u.f38734b > c11628u.f38735c) {
                z2 = false;
            }
            if (z2) {
                c11628u.m19801d(i);
                return this.f35555e.f36474a;
            }
            i++;
        }
        c11628u.m19801d(c11628u.f38735c);
        return -1L;
    }

    /* renamed from: a */
    private void m21764a() {
        ((AbstractC11150x) C11599af.m19974a(this.f35557g)).mo20835a((this.f35565o * 1000000) / ((C11139p) C11599af.m19974a(this.f35560j)).f36482e, 1, this.f35564n, 0, null);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC11071h[] m21762b() {
        return new AbstractC11071h[]{new C10989b()};
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        C11138o c11138o;
        int i = this.f35558h;
        boolean z = true;
        if (i == 0) {
            boolean z2 = this.f35554d;
            abstractC11121i.mo21406a();
            long mo21402b = abstractC11121i.mo21402b();
            Metadata m21417a = C11136n.m21417a(abstractC11121i, !z2);
            abstractC11121i.mo21401b((int) (abstractC11121i.mo21402b() - mo21402b));
            this.f35559i = m21417a;
            this.f35558h = 1;
            return 0;
        } else if (i == 1) {
            byte[] bArr = this.f35552b;
            abstractC11121i.mo21394d(bArr, 0, bArr.length);
            abstractC11121i.mo21406a();
            this.f35558h = 2;
            return 0;
        } else if (i == 2) {
            C11628u c11628u = new C11628u(4);
            abstractC11121i.mo21400b(c11628u.f38733a, 0, 4);
            if (c11628u.m19794h() != 1716281667) {
                throw new ParserException("Failed to read FLAC stream marker.");
            }
            this.f35558h = 3;
            return 0;
        } else if (i == 3) {
            C11136n.C11137a c11137a = new C11136n.C11137a(this.f35560j);
            boolean z3 = false;
            while (!z3) {
                abstractC11121i.mo21406a();
                C11627t c11627t = new C11627t(new byte[4]);
                abstractC11121i.mo21394d(c11627t.f38729a, 0, 4);
                z3 = c11627t.m19815e();
                int m19819c = c11627t.m19819c(7);
                int m19819c2 = c11627t.m19819c(24) + 4;
                if (m19819c == 0) {
                    byte[] bArr2 = new byte[38];
                    abstractC11121i.mo21400b(bArr2, 0, 38);
                    c11137a.f36475a = new C11139p(bArr2, 4);
                } else {
                    C11139p c11139p = c11137a.f36475a;
                    if (c11139p == null) {
                        throw new IllegalArgumentException();
                    }
                    if (m19819c == 3) {
                        C11628u c11628u2 = new C11628u(m19819c2);
                        abstractC11121i.mo21400b(c11628u2.f38733a, 0, m19819c2);
                        c11137a.f36475a = c11139p.m21411a(C11136n.m21416a(c11628u2));
                    } else if (m19819c == 4) {
                        C11628u c11628u3 = new C11628u(m19819c2);
                        abstractC11121i.mo21400b(c11628u3.f38733a, 0, m19819c2);
                        c11628u3.m19799e(4);
                        c11137a.f36475a = new C11139p(c11139p.f36478a, c11139p.f36479b, c11139p.f36480c, c11139p.f36481d, c11139p.f36482e, c11139p.f36484g, c11139p.f36485h, c11139p.f36487j, c11139p.f36488k, c11139p.m21410a(C11139p.m21409a(Arrays.asList(C11153z.m21378a(c11628u3, false, false).f36523b), Collections.emptyList())));
                    } else if (m19819c == 6) {
                        C11628u c11628u4 = new C11628u(m19819c2);
                        abstractC11121i.mo21400b(c11628u4.f38733a, 0, m19819c2);
                        c11628u4.m19799e(4);
                        int m19792j = c11628u4.m19792j();
                        String m19810a = c11628u4.m19810a(c11628u4.m19792j(), C15374d.f55618a);
                        String m19797f = c11628u4.m19797f(c11628u4.m19792j());
                        int m19792j2 = c11628u4.m19792j();
                        int m19792j3 = c11628u4.m19792j();
                        int m19792j4 = c11628u4.m19792j();
                        int m19792j5 = c11628u4.m19792j();
                        int m19792j6 = c11628u4.m19792j();
                        byte[] bArr3 = new byte[m19792j6];
                        c11628u4.m19807a(bArr3, 0, m19792j6);
                        c11137a.f36475a = new C11139p(c11139p.f36478a, c11139p.f36479b, c11139p.f36480c, c11139p.f36481d, c11139p.f36482e, c11139p.f36484g, c11139p.f36485h, c11139p.f36487j, c11139p.f36488k, c11139p.m21410a(C11139p.m21409a(Collections.emptyList(), Collections.singletonList(new PictureFrame(m19792j, m19810a, m19797f, m19792j2, m19792j3, m19792j4, m19792j5, bArr3)))));
                    } else {
                        abstractC11121i.mo21401b(m19819c2);
                    }
                }
                this.f35560j = (C11139p) C11599af.m19974a(c11137a.f36475a);
            }
            C11593a.m20020b(this.f35560j);
            this.f35561k = Math.max(this.f35560j.f36480c, 6);
            ((AbstractC11150x) C11599af.m19974a(this.f35557g)).mo20831a(this.f35560j.m21408a(this.f35552b, this.f35559i));
            this.f35558h = 4;
            return 0;
        } else if (i == 4) {
            abstractC11121i.mo21406a();
            C11628u c11628u5 = new C11628u(2);
            abstractC11121i.mo21394d(c11628u5.f38733a, 0, 2);
            int m19802d = c11628u5.m19802d();
            if ((m19802d >> 2) != 16382) {
                abstractC11121i.mo21406a();
                throw new ParserException("First frame does not start with sync code.");
            }
            abstractC11121i.mo21406a();
            this.f35562l = m19802d;
            AbstractC11130j abstractC11130j = (AbstractC11130j) C11599af.m19974a(this.f35556f);
            long mo21398c = abstractC11121i.mo21398c();
            long mo21395d = abstractC11121i.mo21395d();
            C11593a.m20020b(this.f35560j);
            if (this.f35560j.f36488k != null) {
                c11138o = new C11138o(this.f35560j, mo21398c);
            } else if (mo21395d == -1 || this.f35560j.f36487j <= 0) {
                c11138o = new AbstractC11146v.C11148b(this.f35560j.m21414a());
            } else {
                C10986a c10986a = new C10986a(this.f35560j, this.f35562l, mo21398c, mo21395d);
                this.f35563m = c10986a;
                c11138o = c10986a.m21787a();
            }
            abstractC11130j.mo20901a(c11138o);
            this.f35558h = 5;
            return 0;
        } else if (i != 5) {
            throw new IllegalStateException();
        } else {
            C11593a.m20020b(this.f35557g);
            C11593a.m20020b(this.f35560j);
            C10986a c10986a2 = this.f35563m;
            if (c10986a2 != null && c10986a2.m21782b()) {
                return this.f35563m.m21783a(abstractC11121i, c11145u);
            }
            if (this.f35565o == -1) {
                this.f35565o = C11134m.m21422a(abstractC11121i, this.f35560j);
                return 0;
            }
            int i2 = this.f35553c.f38735c;
            if (i2 < 32768) {
                int mo20033a = abstractC11121i.mo20033a(this.f35553c.f38733a, i2, 32768 - i2);
                if (mo20033a != -1) {
                    z = false;
                }
                if (!z) {
                    this.f35553c.m19803c(i2 + mo20033a);
                } else if (this.f35553c.m19812a() == 0) {
                    m21764a();
                    return -1;
                }
            } else {
                z = false;
            }
            int i3 = this.f35553c.f38734b;
            int i4 = this.f35564n;
            int i5 = this.f35561k;
            if (i4 < i5) {
                C11628u c11628u6 = this.f35553c;
                c11628u6.m19799e(Math.min(i5 - i4, c11628u6.m19812a()));
            }
            long m21763a = m21763a(this.f35553c, z);
            int i6 = this.f35553c.f38734b - i3;
            this.f35553c.m19801d(i3);
            this.f35557g.mo20819b(this.f35553c, i6);
            this.f35564n += i6;
            if (m21763a != -1) {
                m21764a();
                this.f35564n = 0;
                this.f35565o = m21763a;
            }
            if (this.f35553c.m19812a() >= 16) {
                return 0;
            }
            int m19812a = this.f35553c.m19812a();
            System.arraycopy(this.f35553c.f38733a, this.f35553c.f38734b, this.f35553c.f38733a, 0, m19812a);
            this.f35553c.m19801d(0);
            this.f35553c.m19803c(m19812a);
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        if (j == 0) {
            this.f35558h = 0;
        } else {
            C10986a c10986a = this.f35563m;
            if (c10986a != null) {
                c10986a.m21786a(j2);
            }
        }
        this.f35565o = j2 == 0 ? (char) 0 : (char) 65535;
        this.f35564n = 0;
        this.f35553c.m19811a(0);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35556f = abstractC11130j;
        this.f35557g = abstractC11130j.mo20905a(0, 1);
        abstractC11130j.mo20907a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        C11136n.m21417a(abstractC11121i, false);
        C11628u c11628u = new C11628u(4);
        abstractC11121i.mo21394d(c11628u.f38733a, 0, 4);
        return c11628u.m19794h() == 1716281667;
    }
}
