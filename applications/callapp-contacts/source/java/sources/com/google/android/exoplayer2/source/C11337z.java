package com.google.android.exoplayer2.source;

import android.os.Looper;
import android.util.Log;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.AbstractC10958d;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11563e;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.util.C11628u;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z.class */
public final class C11337z implements AbstractC11150x {

    /* renamed from: A */
    private boolean f37267A;

    /* renamed from: B */
    private Format f37268B;

    /* renamed from: C */
    private Format f37269C;

    /* renamed from: D */
    private Format f37270D;

    /* renamed from: E */
    private int f37271E;

    /* renamed from: F */
    private boolean f37272F;

    /* renamed from: G */
    private boolean f37273G;

    /* renamed from: H */
    private long f37274H;

    /* renamed from: I */
    private boolean f37275I;

    /* renamed from: a */
    final C11335y f37276a;

    /* renamed from: c */
    AbstractC11339b f37278c;

    /* renamed from: d */
    DrmSession f37279d;

    /* renamed from: e */
    int f37280e;

    /* renamed from: f */
    int f37281f;

    /* renamed from: h */
    private final AbstractC10958d f37283h;

    /* renamed from: i */
    private final AbstractC10955c.C10956a f37284i;

    /* renamed from: j */
    private final Looper f37285j;

    /* renamed from: k */
    private Format f37286k;

    /* renamed from: t */
    private int f37295t;

    /* renamed from: u */
    private int f37296u;

    /* renamed from: x */
    private boolean f37299x;

    /* renamed from: b */
    final C11338a f37277b = new C11338a();

    /* renamed from: l */
    private int f37287l = 1000;

    /* renamed from: m */
    private int[] f37288m = new int[1000];

    /* renamed from: n */
    private long[] f37289n = new long[1000];

    /* renamed from: q */
    private long[] f37292q = new long[1000];

    /* renamed from: p */
    private int[] f37291p = new int[1000];

    /* renamed from: o */
    private int[] f37290o = new int[1000];

    /* renamed from: r */
    private AbstractC11150x.C11151a[] f37293r = new AbstractC11150x.C11151a[1000];

    /* renamed from: s */
    private Format[] f37294s = new Format[1000];

    /* renamed from: g */
    long f37282g = Long.MIN_VALUE;

    /* renamed from: v */
    private long f37297v = Long.MIN_VALUE;

    /* renamed from: w */
    private long f37298w = Long.MIN_VALUE;

    /* renamed from: z */
    private boolean f37301z = true;

    /* renamed from: y */
    private boolean f37300y = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.z$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z$a.class */
    public static final class C11338a {

        /* renamed from: a */
        public int f37302a;

        /* renamed from: b */
        public long f37303b;

        /* renamed from: c */
        public AbstractC11150x.C11151a f37304c;

        C11338a() {
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.z$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z$b.class */
    public interface AbstractC11339b {
        /* renamed from: j */
        void mo20806j();
    }

    protected C11337z(AbstractC11533b abstractC11533b, Looper looper, AbstractC10958d abstractC10958d, AbstractC10955c.C10956a c10956a) {
        this.f37285j = looper;
        this.f37283h = abstractC10958d;
        this.f37284i = c10956a;
        this.f37276a = new C11335y(abstractC11533b);
    }

    /* renamed from: a */
    private int m20837a(int i, int i2, long j, boolean z) {
        int i3;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (true) {
            i3 = i4;
            if (i6 >= i2) {
                break;
            }
            long[] jArr = this.f37292q;
            i3 = i4;
            if (jArr[i5] > j) {
                break;
            }
            if (!z || (this.f37291p[i5] & 1) != 0) {
                if (jArr[i5] == j) {
                    i3 = i6;
                    break;
                }
                i4 = i6;
            }
            int i7 = i5 + 1;
            i5 = i7;
            if (i7 == this.f37287l) {
                i5 = 0;
            }
            i6++;
        }
        return i3;
    }

    /* renamed from: a */
    public static C11337z m20828a(AbstractC11533b abstractC11533b, Looper looper, AbstractC10958d abstractC10958d, AbstractC10955c.C10956a c10956a) {
        return new C11337z(abstractC11533b, (Looper) C11593a.m20020b(looper), (AbstractC10958d) C11593a.m20020b(abstractC10958d), (AbstractC10955c.C10956a) C11593a.m20020b(c10956a));
    }

    /* renamed from: a */
    private void m20834a(long j, int i, long j2, int i2, AbstractC11150x.C11151a c11151a) {
        synchronized (this) {
            int i3 = this.f37295t;
            if (i3 > 0) {
                int m20812e = m20812e(i3 - 1);
                C11593a.m20022a(this.f37289n[m20812e] + ((long) this.f37290o[m20812e]) <= j2);
            }
            this.f37299x = (536870912 & i) != 0;
            this.f37298w = Math.max(this.f37298w, j);
            int m20812e2 = m20812e(this.f37295t);
            this.f37292q[m20812e2] = j;
            long[] jArr = this.f37289n;
            jArr[m20812e2] = j2;
            this.f37290o[m20812e2] = i2;
            this.f37291p[m20812e2] = i;
            this.f37293r[m20812e2] = c11151a;
            Format[] formatArr = this.f37294s;
            Format format = this.f37269C;
            formatArr[m20812e2] = format;
            this.f37288m[m20812e2] = this.f37271E;
            this.f37270D = format;
            int i4 = this.f37295t + 1;
            this.f37295t = i4;
            int i5 = this.f37287l;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                AbstractC11150x.C11151a[] c11151aArr = new AbstractC11150x.C11151a[i6];
                Format[] formatArr2 = new Format[i6];
                int i7 = this.f37296u;
                int i8 = i5 - i7;
                System.arraycopy(jArr, i7, jArr2, 0, i8);
                System.arraycopy(this.f37292q, this.f37296u, jArr3, 0, i8);
                System.arraycopy(this.f37291p, this.f37296u, iArr2, 0, i8);
                System.arraycopy(this.f37290o, this.f37296u, iArr3, 0, i8);
                System.arraycopy(this.f37293r, this.f37296u, c11151aArr, 0, i8);
                System.arraycopy(this.f37294s, this.f37296u, formatArr2, 0, i8);
                System.arraycopy(this.f37288m, this.f37296u, iArr, 0, i8);
                int i9 = this.f37296u;
                System.arraycopy(this.f37289n, 0, jArr2, i8, i9);
                System.arraycopy(this.f37292q, 0, jArr3, i8, i9);
                System.arraycopy(this.f37291p, 0, iArr2, i8, i9);
                System.arraycopy(this.f37290o, 0, iArr3, i8, i9);
                System.arraycopy(this.f37293r, 0, c11151aArr, i8, i9);
                System.arraycopy(this.f37294s, 0, formatArr2, i8, i9);
                System.arraycopy(this.f37288m, 0, iArr, i8, i9);
                this.f37289n = jArr2;
                this.f37292q = jArr3;
                this.f37291p = iArr2;
                this.f37290o = iArr3;
                this.f37293r = c11151aArr;
                this.f37294s = formatArr2;
                this.f37288m = iArr;
                this.f37296u = 0;
                this.f37287l = i6;
            }
        }
    }

    /* renamed from: a */
    private void m20830a(Format format, C11258q c11258q) {
        Format format2 = this.f37286k;
        boolean z = format2 == null;
        DrmInitData drmInitData = z ? null : format2.drmInitData;
        this.f37286k = format;
        DrmInitData drmInitData2 = format.drmInitData;
        AbstractC10958d abstractC10958d = this.f37283h;
        c11258q.f36928b = abstractC10958d != null ? format.copyWithExoMediaCryptoType(abstractC10958d.mo21848a(format)) : format;
        c11258q.f36927a = this.f37279d;
        if (this.f37283h == null) {
            return;
        }
        if (!z && C11599af.m19973a(drmInitData, drmInitData2)) {
            return;
        }
        DrmSession drmSession = this.f37279d;
        DrmSession mo21849a = this.f37283h.mo21849a((Looper) C11593a.m20020b(this.f37285j), this.f37284i, format);
        this.f37279d = mo21849a;
        c11258q.f36927a = mo21849a;
        if (drmSession == null) {
            return;
        }
        drmSession.mo21844b(this.f37284i);
    }

    /* renamed from: a */
    private boolean m20836a(long j) {
        synchronized (this) {
            if (this.f37295t == 0) {
                return j > this.f37297v;
            } else if (m20810g() >= j) {
                return false;
            } else {
                int i = this.f37295t;
                int m20812e = m20812e(i - 1);
                while (i > this.f37281f && this.f37292q[m20812e] >= j) {
                    int i2 = i - 1;
                    int i3 = m20812e - 1;
                    i = i2;
                    m20812e = i3;
                    if (i3 == -1) {
                        m20812e = this.f37287l - 1;
                        i = i2;
                    }
                }
                int m20839a = m20839a() - (this.f37280e + i);
                C11593a.m20022a(m20839a >= 0 && m20839a <= this.f37295t - this.f37281f);
                int i4 = this.f37295t - m20839a;
                this.f37295t = i4;
                this.f37298w = Math.max(this.f37297v, m20814d(i4));
                boolean z = false;
                if (m20839a == 0) {
                    z = false;
                    if (this.f37299x) {
                        z = true;
                    }
                }
                this.f37299x = z;
                int i5 = this.f37295t;
                if (i5 != 0) {
                    m20812e(i5 - 1);
                }
                return true;
            }
        }
    }

    /* renamed from: b */
    private boolean m20823b(int i) {
        DrmSession drmSession = this.f37279d;
        if (drmSession == null || drmSession.mo21843c() == 4) {
            return true;
        }
        return (this.f37291p[i] & 1073741824) == 0 && this.f37279d.mo21842d();
    }

    /* renamed from: b */
    private boolean m20821b(Format format) {
        synchronized (this) {
            this.f37301z = false;
            if (C11599af.m19973a(format, this.f37269C)) {
                return false;
            }
            if (C11599af.m19973a(format, this.f37270D)) {
                this.f37269C = this.f37270D;
            } else {
                this.f37269C = format;
            }
            this.f37272F = C11620q.m19852a(this.f37269C.sampleMimeType, this.f37269C.codecs);
            this.f37273G = false;
            return true;
        }
    }

    /* renamed from: c */
    private long m20816c(int i) {
        int i2;
        this.f37297v = Math.max(this.f37297v, m20814d(i));
        int i3 = this.f37295t - i;
        this.f37295t = i3;
        this.f37280e += i;
        int i4 = this.f37296u + i;
        this.f37296u = i4;
        int i5 = this.f37287l;
        if (i4 >= i5) {
            this.f37296u = i4 - i5;
        }
        int i6 = this.f37281f - i;
        this.f37281f = i6;
        if (i6 < 0) {
            this.f37281f = 0;
        }
        if (i3 == 0) {
            int i7 = this.f37296u;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.f37289n[i7 - 1] + this.f37290o[i2];
        }
        return this.f37289n[this.f37296u];
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: d */
    private long m20814d(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m20812e = m20812e(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.f37292q[m20812e]);
            c = c2;
            if ((this.f37291p[m20812e] & 1) != 0) {
                break;
            }
            int i3 = m20812e - 1;
            m20812e = i3;
            if (i3 == -1) {
                m20812e = this.f37287l - 1;
            }
            i2++;
        }
        return c;
    }

    /* renamed from: e */
    private int m20812e(int i) {
        int i2 = this.f37296u + i;
        int i3 = this.f37287l;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: g */
    private long m20810g() {
        long max;
        synchronized (this) {
            max = Math.max(this.f37297v, m20814d(this.f37281f));
        }
        return max;
    }

    /* renamed from: h */
    private void m20809h() {
        synchronized (this) {
            this.f37281f = 0;
            C11335y c11335y = this.f37276a;
            c11335y.f37257c = c11335y.f37256b;
        }
    }

    /* renamed from: i */
    private long m20808i() {
        synchronized (this) {
            int i = this.f37295t;
            if (i == 0) {
                return -1L;
            }
            return m20816c(i);
        }
    }

    /* renamed from: j */
    private boolean m20807j() {
        return this.f37281f != this.f37295t;
    }

    /* renamed from: a */
    public final int m20839a() {
        return this.f37280e + this.f37295t;
    }

    /* renamed from: a */
    public final int m20829a(C11258q c11258q, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, C11338a c11338a) {
        synchronized (this) {
            decoderInputBuffer.f35337d = false;
            if (!m20807j()) {
                if (!z2 && !this.f37299x) {
                    Format format = this.f37269C;
                    if (format == null || (!z && format == this.f37286k)) {
                        return -3;
                    }
                    m20830a((Format) C11593a.m20020b(format), c11258q);
                    return -5;
                }
                decoderInputBuffer.f35344a = 4;
                return -4;
            }
            int m20812e = m20812e(this.f37281f);
            if (!z && this.f37294s[m20812e] == this.f37286k) {
                if (!m20823b(m20812e)) {
                    decoderInputBuffer.f35337d = true;
                    return -3;
                }
                decoderInputBuffer.f35344a = this.f37291p[m20812e];
                decoderInputBuffer.f35338e = this.f37292q[m20812e];
                if (decoderInputBuffer.f35338e < this.f37282g) {
                    decoderInputBuffer.m21919a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                c11338a.f37302a = this.f37290o[m20812e];
                c11338a.f37303b = this.f37289n[m20812e];
                c11338a.f37304c = this.f37293r[m20812e];
                return -4;
            }
            m20830a(this.f37294s[m20812e], c11258q);
            return -5;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final int mo20827a(AbstractC11563e abstractC11563e, int i, boolean z) throws IOException {
        C11335y c11335y = this.f37276a;
        int mo20033a = abstractC11563e.mo20033a(c11335y.f37258d.f37265d.f38390a, c11335y.f37258d.m20840a(c11335y.f37259e), c11335y.m20847a(i));
        if (mo20033a != -1) {
            c11335y.m20842b(mo20033a);
            return mo20033a;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    /* renamed from: a */
    public final long m20832a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f37295t;
            if (i != 0) {
                long[] jArr = this.f37292q;
                int i2 = this.f37296u;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f37281f;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int m20837a = m20837a(i2, i3, j, z);
                    if (m20837a == -1) {
                        return -1L;
                    }
                    return m20816c(m20837a);
                }
            }
            return -1L;
        }
    }

    /* renamed from: a */
    public final void m20838a(int i) {
        boolean z;
        synchronized (this) {
            if (i >= 0) {
                if (this.f37281f + i <= this.f37295t) {
                    z = true;
                    C11593a.m20022a(z);
                    this.f37281f += i;
                }
            }
            z = false;
            C11593a.m20022a(z);
            this.f37281f += i;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20835a(long j, int i, int i2, int i3, AbstractC11150x.C11151a c11151a) {
        if (this.f37267A) {
            mo20831a((Format) C11593a.m20024a(this.f37268B));
        }
        int i4 = i & 1;
        boolean z = i4 != 0;
        if (this.f37300y) {
            if (!z) {
                return;
            }
            this.f37300y = false;
        }
        long j2 = this.f37274H + j;
        if (this.f37272F) {
            if (j2 < this.f37282g) {
                return;
            }
            if (i4 == 0) {
                if (!this.f37273G) {
                    Log.w("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.f37269C);
                    this.f37273G = true;
                }
                i |= 1;
            }
        }
        if (this.f37275I) {
            if (!z || !m20836a(j2)) {
                return;
            }
            this.f37275I = false;
        }
        m20834a(j2, i, (this.f37276a.f37259e - i2) - i3, i2, c11151a);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20831a(Format format) {
        Format format2;
        if (this.f37274H == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) {
            format2 = format;
        } else {
            Format.C10828a buildUpon = format.buildUpon();
            buildUpon.f34796o = format.subsampleOffsetUs + this.f37274H;
            format2 = buildUpon.m22321a();
        }
        this.f37267A = false;
        this.f37268B = format;
        boolean m20821b = m20821b(format2);
        AbstractC11339b abstractC11339b = this.f37278c;
        if (abstractC11339b == null || !m20821b) {
            return;
        }
        abstractC11339b.mo20806j();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20826a(C11628u c11628u, int i) {
        C11335y c11335y = this.f37276a;
        while (i > 0) {
            int m20847a = c11335y.m20847a(i);
            c11628u.m19807a(c11335y.f37258d.f37265d.f38390a, c11335y.f37258d.m20840a(c11335y.f37259e), m20847a);
            i -= m20847a;
            c11335y.m20842b(m20847a);
        }
    }

    /* renamed from: a */
    public final void m20825a(boolean z) {
        this.f37276a.m20848a();
        this.f37295t = 0;
        this.f37280e = 0;
        this.f37296u = 0;
        this.f37281f = 0;
        this.f37300y = true;
        this.f37282g = Long.MIN_VALUE;
        this.f37297v = Long.MIN_VALUE;
        this.f37298w = Long.MIN_VALUE;
        this.f37299x = false;
        this.f37270D = null;
        if (z) {
            this.f37268B = null;
            this.f37269C = null;
            this.f37301z = true;
        }
    }

    /* renamed from: a */
    public final boolean m20833a(long j, boolean z) {
        synchronized (this) {
            m20809h();
            int m20812e = m20812e(this.f37281f);
            if (!m20807j() || j < this.f37292q[m20812e] || (j > this.f37298w && !z)) {
                return false;
            }
            int m20837a = m20837a(m20812e, this.f37295t - this.f37281f, j, true);
            if (m20837a == -1) {
                return false;
            }
            this.f37282g = j;
            this.f37281f += m20837a;
            return true;
        }
    }

    /* renamed from: b */
    public final int m20822b(long j, boolean z) {
        synchronized (this) {
            int m20812e = m20812e(this.f37281f);
            if (m20807j() && j >= this.f37292q[m20812e]) {
                if (j > this.f37298w && z) {
                    return this.f37295t - this.f37281f;
                }
                int m20837a = m20837a(m20812e, this.f37295t - this.f37281f, j, true);
                if (m20837a != -1) {
                    return m20837a;
                }
                return 0;
            }
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: b */
    public /* synthetic */ int mo20820b(AbstractC11563e abstractC11563e, int i, boolean z) {
        int mo20827a;
        mo20827a = mo20827a(abstractC11563e, i, z);
        return mo20827a;
    }

    /* renamed from: b */
    public final Format m20824b() {
        synchronized (this) {
            if (this.f37301z) {
                return null;
            }
            return this.f37269C;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: b */
    public /* synthetic */ void mo20819b(C11628u c11628u, int i) {
        mo20826a(c11628u, i);
    }

    /* renamed from: b */
    public final boolean m20818b(boolean z) {
        Format format;
        synchronized (this) {
            if (!m20807j()) {
                return z || this.f37299x || !((format = this.f37269C) == null || format == this.f37286k);
            }
            int m20812e = m20812e(this.f37281f);
            if (this.f37294s[m20812e] == this.f37286k) {
                return m20823b(m20812e);
            }
            return true;
        }
    }

    /* renamed from: c */
    public final long m20817c() {
        long j;
        synchronized (this) {
            j = this.f37298w;
        }
        return j;
    }

    /* renamed from: d */
    public final boolean m20815d() {
        boolean z;
        synchronized (this) {
            z = this.f37299x;
        }
        return z;
    }

    /* renamed from: e */
    public final void m20813e() {
        this.f37276a.m20846a(m20808i());
    }

    /* renamed from: f */
    public final void m20811f() {
        DrmSession drmSession = this.f37279d;
        if (drmSession != null) {
            drmSession.mo21844b(this.f37284i);
            this.f37279d = null;
            this.f37286k = null;
        }
    }
}
