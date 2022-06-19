package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1588f;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2000c;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/i.class */
public final class C1562i implements AbstractC1566m {

    /* renamed from: c */
    private static final byte[] f6043c = {73, 68, 51};

    /* renamed from: a */
    long f6044a;

    /* renamed from: b */
    long f6045b;

    /* renamed from: d */
    private final boolean f6046d;

    /* renamed from: e */
    private final C2017o f6047e;

    /* renamed from: f */
    private final C2018p f6048f;

    /* renamed from: g */
    private final String f6049g;

    /* renamed from: h */
    private String f6050h;

    /* renamed from: i */
    private AbstractC1641q f6051i;

    /* renamed from: j */
    private AbstractC1641q f6052j;

    /* renamed from: k */
    private int f6053k;

    /* renamed from: l */
    private int f6054l;

    /* renamed from: m */
    private int f6055m;

    /* renamed from: n */
    private boolean f6056n;

    /* renamed from: o */
    private boolean f6057o;

    /* renamed from: p */
    private int f6058p;

    /* renamed from: q */
    private int f6059q;

    /* renamed from: r */
    private int f6060r;

    /* renamed from: s */
    private boolean f6061s;

    /* renamed from: t */
    private int f6062t;

    /* renamed from: u */
    private AbstractC1641q f6063u;

    /* renamed from: v */
    private long f6064v;

    public C1562i(boolean z) {
        this(z, null);
    }

    public C1562i(boolean z, String str) {
        this.f6047e = new C2017o(new byte[7]);
        this.f6048f = new C2018p(Arrays.copyOf(f6043c, 10));
        m42683d();
        this.f6058p = -1;
        this.f6059q = -1;
        this.f6044a = -9223372036854775807L;
        this.f6046d = z;
        this.f6049g = str;
    }

    /* renamed from: a */
    private void m42690a(AbstractC1641q abstractC1641q, long j, int i, int i2) {
        this.f6053k = 4;
        this.f6054l = i;
        this.f6063u = abstractC1641q;
        this.f6064v = j;
        this.f6062t = i2;
    }

    /* renamed from: a */
    private static boolean m42692a(byte b, byte b2) {
        return m42691a(((b & 255) << 8) | (b2 & 255));
    }

    /* renamed from: a */
    public static boolean m42691a(int i) {
        return (i & 65526) == 65520;
    }

    /* renamed from: a */
    private boolean m42689a(C2018p c2018p, int i) {
        c2018p.m41533c(i + 1);
        if (!m42686b(c2018p, this.f6047e.f8127a, 1)) {
            return false;
        }
        this.f6047e.m41554a(4);
        int m41548c = this.f6047e.m41548c(1);
        int i2 = this.f6058p;
        if (i2 != -1 && m41548c != i2) {
            return false;
        }
        if (this.f6059q != -1) {
            if (!m42686b(c2018p, this.f6047e.f8127a, 1)) {
                return true;
            }
            this.f6047e.m41554a(2);
            if (this.f6047e.m41548c(4) != this.f6059q) {
                return false;
            }
            c2018p.m41533c(i + 2);
        }
        if (!m42686b(c2018p, this.f6047e.f8127a, 4)) {
            return true;
        }
        this.f6047e.m41554a(14);
        int m41548c2 = this.f6047e.m41548c(13);
        if (m41548c2 <= 6) {
            return false;
        }
        int i3 = i + m41548c2;
        int i4 = i3 + 1;
        if (i4 >= c2018p.f8133c) {
            return true;
        }
        if (!m42692a(c2018p.f8131a[i3], c2018p.f8131a[i4])) {
            return false;
        }
        return this.f6058p == -1 || ((c2018p.f8131a[i4] & 8) >> 3) == m41548c;
    }

    /* renamed from: a */
    private boolean m42688a(C2018p c2018p, byte[] bArr, int i) {
        int min = Math.min(c2018p.m41536b(), i - this.f6054l);
        c2018p.m41537a(bArr, this.f6054l, min);
        int i2 = this.f6054l + min;
        this.f6054l = i2;
        return i2 == i;
    }

    /* renamed from: b */
    private void m42687b(C2018p c2018p) {
        byte[] bArr = c2018p.f8131a;
        int i = c2018p.f8132b;
        int i2 = c2018p.f8133c;
        while (i < i2) {
            int i3 = i + 1;
            int i4 = bArr[i] & 255;
            if (this.f6055m == 512 && m42692a((byte) -1, (byte) i4) && (this.f6057o || m42689a(c2018p, i3 - 2))) {
                this.f6060r = (i4 & 8) >> 3;
                boolean z = true;
                if ((i4 & 1) != 0) {
                    z = false;
                }
                this.f6056n = z;
                if (!this.f6057o) {
                    m42679g();
                } else {
                    m42680f();
                }
                c2018p.m41533c(i3);
                return;
            }
            int i5 = this.f6055m;
            int i6 = i4 | i5;
            if (i6 == 329) {
                this.f6055m = 768;
                i = i3;
            } else if (i6 == 511) {
                this.f6055m = 512;
                i = i3;
            } else if (i6 == 836) {
                this.f6055m = 1024;
                i = i3;
            } else if (i6 == 1075) {
                m42681e();
                c2018p.m41533c(i3);
                return;
            } else {
                i = i3;
                if (i5 != 256) {
                    this.f6055m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                    i = i3 - 1;
                }
            }
        }
        c2018p.m41533c(i);
    }

    /* renamed from: b */
    private static boolean m42686b(C2018p c2018p, byte[] bArr, int i) {
        if (c2018p.m41536b() < i) {
            return false;
        }
        c2018p.m41537a(bArr, 0, i);
        return true;
    }

    /* renamed from: c */
    private void m42684c(C2018p c2018p) {
        if (c2018p.m41536b() == 0) {
            return;
        }
        this.f6047e.f8127a[0] = c2018p.f8131a[c2018p.f8132b];
        this.f6047e.m41554a(2);
        int m41548c = this.f6047e.m41548c(4);
        int i = this.f6059q;
        if (i != -1 && m41548c != i) {
            m42685c();
            return;
        }
        if (!this.f6057o) {
            this.f6057o = true;
            this.f6058p = this.f6060r;
            this.f6059q = m41548c;
        }
        m42680f();
    }

    /* renamed from: d */
    private void m42683d() {
        this.f6053k = 0;
        this.f6054l = 0;
        this.f6055m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* renamed from: d */
    private void m42682d(C2018p c2018p) {
        int min = Math.min(c2018p.m41536b(), this.f6062t - this.f6054l);
        this.f6063u.mo42306a(c2018p, min);
        int i = this.f6054l + min;
        this.f6054l = i;
        int i2 = this.f6062t;
        if (i == i2) {
            this.f6063u.mo42313a(this.f6045b, 1, i2, 0, null);
            this.f6045b += this.f6064v;
            m42683d();
        }
    }

    /* renamed from: e */
    private void m42681e() {
        this.f6053k = 2;
        this.f6054l = f6043c.length;
        this.f6062t = 0;
        this.f6048f.m41533c(0);
    }

    /* renamed from: f */
    private void m42680f() {
        this.f6053k = 3;
        this.f6054l = 0;
    }

    /* renamed from: g */
    private void m42679g() {
        this.f6053k = 1;
        this.f6054l = 0;
    }

    /* renamed from: h */
    private void m42678h() {
        this.f6052j.mo42306a(this.f6048f, 10);
        this.f6048f.m41533c(6);
        m42690a(this.f6052j, 0L, 10, this.f6048f.m41520m() + 10);
    }

    /* renamed from: i */
    private void m42677i() throws ParserException {
        this.f6047e.m41554a(0);
        if (!this.f6061s) {
            int m41548c = this.f6047e.m41548c(2) + 1;
            int i = m41548c;
            if (m41548c != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(m41548c);
                sb.append(", but assuming AAC LC.");
                C2009j.m41584a("AdtsReader", sb.toString());
                i = 2;
            }
            this.f6047e.m41551b(5);
            byte[] m41607a = C2000c.m41607a(i, this.f6059q, this.f6047e.m41548c(3));
            Pair<Integer, Integer> m41603a = C2000c.m41603a(m41607a);
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.f6050h, "audio/mp4a-latm", null, -1, -1, ((Integer) m41603a.second).intValue(), ((Integer) m41603a.first).intValue(), Collections.singletonList(m41607a), null, 0, this.f6049g);
            this.f6044a = 1024000000 / createAudioSampleFormat.sampleRate;
            this.f6051i.mo42192a(createAudioSampleFormat);
            this.f6061s = true;
        } else {
            this.f6047e.m41551b(10);
        }
        this.f6047e.m41551b(4);
        int m41548c2 = (this.f6047e.m41548c(13) - 2) - 5;
        int i2 = m41548c2;
        if (this.f6056n) {
            i2 = m41548c2 - 2;
        }
        m42690a(this.f6051i, this.f6044a, 0, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        m42685c();
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6045b = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6050h = c1552d.m42706c();
        this.f6051i = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
        if (!this.f6046d) {
            this.f6052j = new C1588f();
            return;
        }
        c1552d.m42708a();
        AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 4);
        this.f6052j = mo42213a;
        mo42213a.mo42192a(Format.createSampleFormat(c1552d.m42706c(), "application/id3", null, -1, null));
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) throws ParserException {
        while (c2018p.m41536b() > 0) {
            int i = this.f6053k;
            if (i == 0) {
                m42687b(c2018p);
            } else if (i == 1) {
                m42684c(c2018p);
            } else if (i != 2) {
                if (i == 3) {
                    if (m42688a(c2018p, this.f6047e.f8127a, this.f6056n ? 7 : 5)) {
                        m42677i();
                    }
                } else if (i != 4) {
                    throw new IllegalStateException();
                } else {
                    m42682d(c2018p);
                }
            } else if (m42688a(c2018p, this.f6048f.f8131a, 10)) {
                m42678h();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }

    /* renamed from: c */
    public final void m42685c() {
        this.f6057o = false;
        m42683d();
    }
}
