package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10880a;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11054g;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.h.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/f.class */
public final class C11090f implements AbstractC11094j {

    /* renamed from: c */
    private static final byte[] f36168c = {73, 68, 51};

    /* renamed from: a */
    long f36169a;

    /* renamed from: b */
    long f36170b;

    /* renamed from: d */
    private final boolean f36171d;

    /* renamed from: e */
    private final C11627t f36172e;

    /* renamed from: f */
    private final C11628u f36173f;

    /* renamed from: g */
    private final String f36174g;

    /* renamed from: h */
    private String f36175h;

    /* renamed from: i */
    private AbstractC11150x f36176i;

    /* renamed from: j */
    private AbstractC11150x f36177j;

    /* renamed from: k */
    private int f36178k;

    /* renamed from: l */
    private int f36179l;

    /* renamed from: m */
    private int f36180m;

    /* renamed from: n */
    private boolean f36181n;

    /* renamed from: o */
    private boolean f36182o;

    /* renamed from: p */
    private int f36183p;

    /* renamed from: q */
    private int f36184q;

    /* renamed from: r */
    private int f36185r;

    /* renamed from: s */
    private boolean f36186s;

    /* renamed from: t */
    private int f36187t;

    /* renamed from: u */
    private AbstractC11150x f36188u;

    /* renamed from: v */
    private long f36189v;

    public C11090f(boolean z) {
        this(z, null);
    }

    public C11090f(boolean z, String str) {
        this.f36172e = new C11627t(new byte[7]);
        this.f36173f = new C11628u(Arrays.copyOf(f36168c, 10));
        m21501d();
        this.f36183p = -1;
        this.f36184q = -1;
        this.f36169a = -9223372036854775807L;
        this.f36171d = z;
        this.f36174g = str;
    }

    /* renamed from: a */
    private void m21508a(AbstractC11150x abstractC11150x, long j, int i, int i2) {
        this.f36178k = 4;
        this.f36179l = i;
        this.f36188u = abstractC11150x;
        this.f36189v = j;
        this.f36187t = i2;
    }

    /* renamed from: a */
    private static boolean m21510a(byte b) {
        return m21509a((b & 255) | 65280);
    }

    /* renamed from: a */
    public static boolean m21509a(int i) {
        return (i & 65526) == 65520;
    }

    /* renamed from: a */
    private boolean m21507a(C11628u c11628u, int i) {
        c11628u.m19801d(i + 1);
        if (!m21504b(c11628u, this.f36172e.f38729a, 1)) {
            return false;
        }
        this.f36172e.m19826a(4);
        int m19819c = this.f36172e.m19819c(1);
        int i2 = this.f36183p;
        if (i2 != -1 && m19819c != i2) {
            return false;
        }
        if (this.f36184q != -1) {
            if (!m21504b(c11628u, this.f36172e.f38729a, 1)) {
                return true;
            }
            this.f36172e.m19826a(2);
            if (this.f36172e.m19819c(4) != this.f36184q) {
                return false;
            }
            c11628u.m19801d(i + 2);
        }
        if (!m21504b(c11628u, this.f36172e.f38729a, 4)) {
            return true;
        }
        this.f36172e.m19826a(14);
        int m19819c2 = this.f36172e.m19819c(13);
        if (m19819c2 < 7) {
            return false;
        }
        byte[] bArr = c11628u.f38733a;
        int i3 = c11628u.f38735c;
        int i4 = i + m19819c2;
        if (i4 >= i3) {
            return true;
        }
        if (bArr[i4] == -1) {
            int i5 = i4 + 1;
            if (i5 == i3) {
                return true;
            }
            return m21510a(bArr[i5]) && ((bArr[i5] & 8) >> 3) == m19819c;
        } else if (bArr[i4] != 73) {
            return false;
        } else {
            int i6 = i4 + 1;
            if (i6 == i3) {
                return true;
            }
            if (bArr[i6] != 68) {
                return false;
            }
            int i7 = i4 + 2;
            return i7 == i3 || bArr[i7] == 51;
        }
    }

    /* renamed from: a */
    private boolean m21506a(C11628u c11628u, byte[] bArr, int i) {
        int min = Math.min(c11628u.m19812a(), i - this.f36179l);
        c11628u.m19807a(bArr, this.f36179l, min);
        int i2 = this.f36179l + min;
        this.f36179l = i2;
        return i2 == i;
    }

    /* renamed from: b */
    private void m21505b(C11628u c11628u) {
        byte[] bArr = c11628u.f38733a;
        int i = c11628u.f38734b;
        int i2 = c11628u.f38735c;
        while (i < i2) {
            int i3 = i + 1;
            int i4 = bArr[i] & 255;
            if (this.f36180m == 512 && m21510a((byte) i4) && (this.f36182o || m21507a(c11628u, i3 - 2))) {
                this.f36185r = (i4 & 8) >> 3;
                boolean z = true;
                if ((i4 & 1) != 0) {
                    z = false;
                }
                this.f36181n = z;
                if (!this.f36182o) {
                    m21497g();
                } else {
                    m21498f();
                }
                c11628u.m19801d(i3);
                return;
            }
            int i5 = this.f36180m;
            int i6 = i4 | i5;
            if (i6 == 329) {
                this.f36180m = 768;
                i = i3;
            } else if (i6 == 511) {
                this.f36180m = 512;
                i = i3;
            } else if (i6 == 836) {
                this.f36180m = 1024;
                i = i3;
            } else if (i6 == 1075) {
                m21499e();
                c11628u.m19801d(i3);
                return;
            } else {
                i = i3;
                if (i5 != 256) {
                    this.f36180m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                    i = i3 - 1;
                }
            }
        }
        c11628u.m19801d(i);
    }

    /* renamed from: b */
    private static boolean m21504b(C11628u c11628u, byte[] bArr, int i) {
        if (c11628u.m19812a() < i) {
            return false;
        }
        c11628u.m19807a(bArr, 0, i);
        return true;
    }

    /* renamed from: c */
    private void m21502c(C11628u c11628u) {
        if (c11628u.m19812a() == 0) {
            return;
        }
        this.f36172e.f38729a[0] = c11628u.f38733a[c11628u.f38734b];
        this.f36172e.m19826a(2);
        int m19819c = this.f36172e.m19819c(4);
        int i = this.f36184q;
        if (i != -1 && m19819c != i) {
            m21503c();
            return;
        }
        if (!this.f36182o) {
            this.f36182o = true;
            this.f36183p = this.f36185r;
            this.f36184q = m19819c;
        }
        m21498f();
    }

    /* renamed from: d */
    private void m21501d() {
        this.f36178k = 0;
        this.f36179l = 0;
        this.f36180m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    @RequiresNonNull({"currentOutput"})
    /* renamed from: d */
    private void m21500d(C11628u c11628u) {
        int min = Math.min(c11628u.m19812a(), this.f36187t - this.f36179l);
        this.f36188u.mo20819b(c11628u, min);
        int i = this.f36179l + min;
        this.f36179l = i;
        int i2 = this.f36187t;
        if (i == i2) {
            this.f36188u.mo20835a(this.f36170b, 1, i2, 0, null);
            this.f36170b += this.f36189v;
            m21501d();
        }
    }

    /* renamed from: e */
    private void m21499e() {
        this.f36178k = 2;
        this.f36179l = f36168c.length;
        this.f36187t = 0;
        this.f36173f.m19801d(0);
    }

    /* renamed from: f */
    private void m21498f() {
        this.f36178k = 3;
        this.f36179l = 0;
    }

    /* renamed from: g */
    private void m21497g() {
        this.f36178k = 1;
        this.f36179l = 0;
    }

    @RequiresNonNull({"id3Output"})
    /* renamed from: h */
    private void m21496h() {
        this.f36177j.mo20819b(this.f36173f, 10);
        this.f36173f.m19801d(6);
        m21508a(this.f36177j, 0L, 10, this.f36173f.m19788n() + 10);
    }

    @RequiresNonNull({"output"})
    /* renamed from: i */
    private void m21495i() throws ParserException {
        this.f36172e.m19826a(0);
        if (!this.f36186s) {
            int m19819c = this.f36172e.m19819c(2) + 1;
            int i = m19819c;
            if (m19819c != 2) {
                C11617n.m19863a("AdtsReader", "Detected audio object type: " + m19819c + ", but assuming AAC LC.");
                i = 2;
            }
            this.f36172e.m19822b(5);
            byte[] m22090a = C10880a.m22090a(i, this.f36184q, this.f36172e.m19819c(3));
            C10880a.C10882a m22086a = C10880a.m22086a(m22090a);
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34782a = this.f36175h;
            c10828a.f34792k = "audio/mp4a-latm";
            c10828a.f34789h = m22086a.f35118c;
            c10828a.f34805x = m22086a.f35117b;
            c10828a.f34806y = m22086a.f35116a;
            c10828a.f34794m = Collections.singletonList(m22090a);
            c10828a.f34784c = this.f36174g;
            Format m22321a = c10828a.m22321a();
            this.f36169a = 1024000000 / m22321a.sampleRate;
            this.f36176i.mo20831a(m22321a);
            this.f36186s = true;
        } else {
            this.f36172e.m19822b(10);
        }
        this.f36172e.m19822b(4);
        int m19819c2 = (this.f36172e.m19819c(13) - 2) - 5;
        int i2 = m19819c2;
        if (this.f36181n) {
            i2 = m19819c2 - 2;
        }
        m21508a(this.f36176i, this.f36169a, 0, i2);
    }

    @EnsuresNonNull({"output", "currentOutput", "id3Output"})
    /* renamed from: j */
    private void m21494j() {
        C11593a.m20020b(this.f36176i);
        C11599af.m19974a(this.f36188u);
        C11599af.m19974a(this.f36177j);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        m21503c();
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36170b = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36175h = c11083d.m21526c();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
        this.f36176i = mo20905a;
        this.f36188u = mo20905a;
        if (!this.f36171d) {
            this.f36177j = new C11054g();
            return;
        }
        c11083d.m21528a();
        AbstractC11150x mo20905a2 = abstractC11130j.mo20905a(c11083d.m21527b(), 5);
        this.f36177j = mo20905a2;
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = c11083d.m21526c();
        c10828a.f34792k = "application/id3";
        mo20905a2.mo20831a(c10828a.m22321a());
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) throws ParserException {
        m21494j();
        while (c11628u.m19812a() > 0) {
            int i = this.f36178k;
            if (i == 0) {
                m21505b(c11628u);
            } else if (i == 1) {
                m21502c(c11628u);
            } else if (i != 2) {
                if (i == 3) {
                    if (m21506a(c11628u, this.f36172e.f38729a, this.f36181n ? 7 : 5)) {
                        m21495i();
                    }
                } else if (i != 4) {
                    throw new IllegalStateException();
                } else {
                    m21500d(c11628u);
                }
            } else if (m21506a(c11628u, this.f36173f.f38733a, 10)) {
                m21496h();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }

    /* renamed from: c */
    public final void m21503c() {
        this.f36182o = false;
        m21501d();
    }
}
