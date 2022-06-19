package com.google.android.exoplayer2.extractor.p334h;

import android.support.p008v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.h.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/w.class */
public final class C11116w implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36402a = _$$Lambda$w$GIQAk8KOsCi70_XJWBYDc7aUCIs.INSTANCE;

    /* renamed from: b */
    private final C11597ad f36403b;

    /* renamed from: c */
    private final SparseArray<C11117a> f36404c;

    /* renamed from: d */
    private final C11628u f36405d;

    /* renamed from: e */
    private final C11115v f36406e;

    /* renamed from: f */
    private boolean f36407f;

    /* renamed from: g */
    private boolean f36408g;

    /* renamed from: h */
    private boolean f36409h;

    /* renamed from: i */
    private long f36410i;

    /* renamed from: j */
    private C11112u f36411j;

    /* renamed from: k */
    private AbstractC11130j f36412k;

    /* renamed from: l */
    private boolean f36413l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.h.w$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/w$a.class */
    public static final class C11117a {

        /* renamed from: a */
        final AbstractC11094j f36414a;

        /* renamed from: b */
        final C11597ad f36415b;

        /* renamed from: c */
        final C11627t f36416c = new C11627t(new byte[64]);

        /* renamed from: d */
        boolean f36417d;

        /* renamed from: e */
        boolean f36418e;

        /* renamed from: f */
        boolean f36419f;

        /* renamed from: g */
        int f36420g;

        /* renamed from: h */
        long f36421h;

        public C11117a(AbstractC11094j abstractC11094j, C11597ad c11597ad) {
            this.f36414a = abstractC11094j;
            this.f36415b = c11597ad;
        }
    }

    public C11116w() {
        this(new C11597ad(0L));
    }

    public C11116w(C11597ad c11597ad) {
        this.f36403b = c11597ad;
        this.f36405d = new C11628u(4096);
        this.f36404c = new SparseArray<>();
        this.f36406e = new C11115v();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21448a() {
        return new AbstractC11071h[]{new C11116w()};
    }

    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r0v259, types: [long] */
    /* JADX WARN: Type inference failed for: r0v297, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        char c;
        char c2;
        C11593a.m20024a(this.f36412k);
        long mo21395d = abstractC11121i.mo21395d();
        int i = (mo21395d > (-1L) ? 1 : (mo21395d == (-1L) ? 0 : -1));
        if ((i != 0) && !this.f36406e.f36396c) {
            C11115v c11115v = this.f36406e;
            if (!c11115v.f36398e) {
                long mo21395d2 = abstractC11121i.mo21395d();
                int min = (int) Math.min(20000L, mo21395d2);
                long j = mo21395d2 - min;
                if (abstractC11121i.mo21398c() != j) {
                    c11145u.f36501a = j;
                    return 1;
                }
                c11115v.f36395b.m19811a(min);
                abstractC11121i.mo21406a();
                abstractC11121i.mo21394d(c11115v.f36395b.f38733a, 0, min);
                C11628u c11628u = c11115v.f36395b;
                int i2 = c11628u.f38734b;
                int i3 = c11628u.f38735c - 4;
                while (true) {
                    if (i3 < i2) {
                        c2 = 1;
                        break;
                    }
                    if (C11115v.m21450a(c11628u.f38733a, i3) == 442) {
                        c11628u.m19801d(i3 + 4);
                        c2 = C11115v.m21452a(c11628u);
                        if (c2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    i3--;
                }
                c11115v.f36400g = c2;
                c11115v.f36398e = true;
                return 0;
            } else if (c11115v.f36400g == -9223372036854775807L) {
                return c11115v.m21453a(abstractC11121i);
            } else {
                if (c11115v.f36397d) {
                    if (c11115v.f36399f == -9223372036854775807L) {
                        return c11115v.m21453a(abstractC11121i);
                    }
                    c11115v.f36401h = c11115v.f36394a.m20006b(c11115v.f36400g) - c11115v.f36394a.m20006b(c11115v.f36399f);
                    return c11115v.m21453a(abstractC11121i);
                }
                int min2 = (int) Math.min(20000L, abstractC11121i.mo21395d());
                if (abstractC11121i.mo21398c() != 0) {
                    c11145u.f36501a = 0L;
                    return 1;
                }
                c11115v.f36395b.m19811a(min2);
                abstractC11121i.mo21406a();
                abstractC11121i.mo21394d(c11115v.f36395b.f38733a, 0, min2);
                C11628u c11628u2 = c11115v.f36395b;
                int i4 = c11628u2.f38734b;
                int i5 = c11628u2.f38735c;
                while (true) {
                    if (i4 >= i5 - 3) {
                        c = 1;
                        break;
                    }
                    if (C11115v.m21450a(c11628u2.f38733a, i4) == 442) {
                        c11628u2.m19801d(i4 + 4);
                        c = C11115v.m21452a(c11628u2);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    i4++;
                }
                c11115v.f36399f = c;
                c11115v.f36397d = true;
                return 0;
            }
        }
        if (!this.f36413l) {
            this.f36413l = true;
            if (this.f36406e.f36401h != -9223372036854775807L) {
                C11112u c11112u = new C11112u(this.f36406e.f36394a, this.f36406e.f36401h, mo21395d);
                this.f36411j = c11112u;
                this.f36412k.mo20901a(c11112u.m21787a());
            } else {
                this.f36412k.mo20901a(new AbstractC11146v.C11148b(this.f36406e.f36401h));
            }
        }
        C11112u c11112u2 = this.f36411j;
        if (c11112u2 != null && c11112u2.m21782b()) {
            return this.f36411j.m21783a(abstractC11121i, c11145u);
        }
        abstractC11121i.mo21406a();
        char mo21402b = i != 0 ? mo21395d - abstractC11121i.mo21402b() : (char) 65535;
        if ((mo21402b != -1 && mo21402b < 4) || !abstractC11121i.mo21399b(this.f36405d.f38733a, 0, 4, true)) {
            return -1;
        }
        this.f36405d.m19801d(0);
        int m19792j = this.f36405d.m19792j();
        if (m19792j == 441) {
            return -1;
        }
        if (m19792j == 442) {
            abstractC11121i.mo21394d(this.f36405d.f38733a, 0, 10);
            this.f36405d.m19801d(9);
            abstractC11121i.mo21401b((this.f36405d.m19804c() & 7) + 14);
            return 0;
        } else if (m19792j == 443) {
            abstractC11121i.mo21394d(this.f36405d.f38733a, 0, 2);
            this.f36405d.m19801d(0);
            abstractC11121i.mo21401b(this.f36405d.m19802d() + 6);
            return 0;
        } else if (((m19792j & (-256)) >> 8) != 1) {
            abstractC11121i.mo21401b(1);
            return 0;
        } else {
            int i6 = m19792j & 255;
            C11117a c11117a = this.f36404c.get(i6);
            C11117a c11117a2 = c11117a;
            if (!this.f36407f) {
                C11117a c11117a3 = c11117a;
                if (c11117a == null) {
                    C11086b c11086b = null;
                    if (i6 == 189) {
                        c11086b = new C11086b();
                        this.f36408g = true;
                        this.f36410i = abstractC11121i.mo21398c();
                    } else if ((i6 & 224) == 192) {
                        c11086b = new C11108q();
                        this.f36408g = true;
                        this.f36410i = abstractC11121i.mo21398c();
                    } else if ((i6 & 240) == 224) {
                        c11086b = new C11095k();
                        this.f36409h = true;
                        this.f36410i = abstractC11121i.mo21398c();
                    }
                    c11117a3 = c11117a;
                    if (c11086b != null) {
                        c11086b.mo21465a(this.f36412k, new AbstractC11079ad.C11083d(i6, PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
                        c11117a3 = new C11117a(c11086b, this.f36403b);
                        this.f36404c.put(i6, c11117a3);
                    }
                }
                c11117a2 = c11117a3;
                if (abstractC11121i.mo21398c() > ((!this.f36408g || !this.f36409h) ? (char) 0 : this.f36410i + PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
                    this.f36407f = true;
                    this.f36412k.mo20907a();
                    c11117a2 = c11117a3;
                }
            }
            abstractC11121i.mo21394d(this.f36405d.f38733a, 0, 2);
            this.f36405d.m19801d(0);
            int m19802d = this.f36405d.m19802d() + 6;
            if (c11117a2 == null) {
                abstractC11121i.mo21401b(m19802d);
                return 0;
            }
            this.f36405d.m19811a(m19802d);
            abstractC11121i.mo21400b(this.f36405d.f38733a, 0, m19802d);
            this.f36405d.m19801d(6);
            C11628u c11628u3 = this.f36405d;
            c11628u3.m19807a(c11117a2.f36416c.f38729a, 0, 3);
            c11117a2.f36416c.m19826a(0);
            c11117a2.f36416c.m19822b(8);
            c11117a2.f36417d = c11117a2.f36416c.m19815e();
            c11117a2.f36418e = c11117a2.f36416c.m19815e();
            c11117a2.f36416c.m19822b(6);
            c11117a2.f36420g = c11117a2.f36416c.m19819c(8);
            c11628u3.m19807a(c11117a2.f36416c.f38729a, 0, c11117a2.f36420g);
            c11117a2.f36416c.m19826a(0);
            c11117a2.f36421h = 0L;
            if (c11117a2.f36417d) {
                c11117a2.f36416c.m19822b(4);
                long m19819c = c11117a2.f36416c.m19819c(3);
                c11117a2.f36416c.m19822b(1);
                long m19819c2 = c11117a2.f36416c.m19819c(15) << 15;
                c11117a2.f36416c.m19822b(1);
                long m19819c3 = c11117a2.f36416c.m19819c(15);
                c11117a2.f36416c.m19822b(1);
                if (!c11117a2.f36419f && c11117a2.f36418e) {
                    c11117a2.f36416c.m19822b(4);
                    long m19819c4 = c11117a2.f36416c.m19819c(3);
                    c11117a2.f36416c.m19822b(1);
                    long m19819c5 = c11117a2.f36416c.m19819c(15) << 15;
                    c11117a2.f36416c.m19822b(1);
                    long m19819c6 = c11117a2.f36416c.m19819c(15);
                    c11117a2.f36416c.m19822b(1);
                    c11117a2.f36415b.m20006b((m19819c4 << 30) | m19819c5 | m19819c6);
                    c11117a2.f36419f = true;
                }
                c11117a2.f36421h = c11117a2.f36415b.m20006b((m19819c << 30) | m19819c2 | m19819c3);
            }
            c11117a2.f36414a.mo21466a(c11117a2.f36421h, 4);
            c11117a2.f36414a.mo21464a(c11628u3);
            c11117a2.f36414a.mo21463b();
            C11628u c11628u4 = this.f36405d;
            c11628u4.m19803c(c11628u4.f38733a.length);
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        if ((this.f36403b.m20005c() == -9223372036854775807L) || (this.f36403b.m20009a() != 0 && this.f36403b.m20009a() != j2)) {
            this.f36403b.m20008a(j2);
        }
        C11112u c11112u = this.f36411j;
        if (c11112u != null) {
            c11112u.m21786a(j2);
        }
        for (int i = 0; i < this.f36404c.size(); i++) {
            C11117a valueAt = this.f36404c.valueAt(i);
            valueAt.f36419f = false;
            valueAt.f36414a.mo21467a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36412k = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        byte[] bArr = new byte[14];
        abstractC11121i.mo21394d(bArr, 0, 14);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            abstractC11121i.mo21397c(bArr[13] & 7);
            abstractC11121i.mo21394d(bArr, 0, 3);
            return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
        }
        return false;
    }
}
