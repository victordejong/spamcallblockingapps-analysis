package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10886c;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.h.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/d.class */
public final class C11088d implements AbstractC11094j {

    /* renamed from: a */
    long f36142a;

    /* renamed from: b */
    private final C11627t f36143b;

    /* renamed from: c */
    private final C11628u f36144c;

    /* renamed from: d */
    private final String f36145d;

    /* renamed from: e */
    private String f36146e;

    /* renamed from: f */
    private AbstractC11150x f36147f;

    /* renamed from: g */
    private int f36148g;

    /* renamed from: h */
    private int f36149h;

    /* renamed from: i */
    private boolean f36150i;

    /* renamed from: j */
    private boolean f36151j;

    /* renamed from: k */
    private long f36152k;

    /* renamed from: l */
    private Format f36153l;

    /* renamed from: m */
    private int f36154m;

    public C11088d() {
        this(null);
    }

    public C11088d(String str) {
        C11627t c11627t = new C11627t(new byte[16]);
        this.f36143b = c11627t;
        this.f36144c = new C11628u(c11627t.f38729a);
        this.f36148g = 0;
        this.f36149h = 0;
        this.f36150i = false;
        this.f36151j = false;
        this.f36145d = str;
    }

    /* renamed from: a */
    private boolean m21515a(C11628u c11628u, byte[] bArr) {
        int min = Math.min(c11628u.m19812a(), 16 - this.f36149h);
        c11628u.m19807a(bArr, this.f36149h, min);
        int i = this.f36149h + min;
        this.f36149h = i;
        return i == 16;
    }

    /* renamed from: b */
    private boolean m21514b(C11628u c11628u) {
        int m19804c;
        while (true) {
            boolean z = false;
            if (c11628u.m19812a() <= 0) {
                return false;
            }
            if (!this.f36150i) {
                if (c11628u.m19804c() == 172) {
                    z = true;
                }
                this.f36150i = z;
            } else {
                m19804c = c11628u.m19804c();
                this.f36150i = m19804c == 172;
                if (m19804c == 64 || m19804c == 65) {
                    break;
                }
            }
        }
        boolean z2 = false;
        if (m19804c == 65) {
            z2 = true;
        }
        this.f36151j = z2;
        return true;
    }

    @RequiresNonNull({"output"})
    /* renamed from: c */
    private void m21513c() {
        this.f36143b.m19826a(0);
        C10886c.C10888a m22074a = C10886c.m22074a(this.f36143b);
        if (this.f36153l == null || m22074a.f35134c != this.f36153l.channelCount || m22074a.f35133b != this.f36153l.sampleRate || !"audio/ac4".equals(this.f36153l.sampleMimeType)) {
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34782a = this.f36146e;
            c10828a.f34792k = "audio/ac4";
            c10828a.f34805x = m22074a.f35134c;
            c10828a.f34806y = m22074a.f35133b;
            c10828a.f34784c = this.f36145d;
            Format m22321a = c10828a.m22321a();
            this.f36153l = m22321a;
            this.f36147f.mo20831a(m22321a);
        }
        this.f36154m = m22074a.f35135d;
        this.f36152k = (m22074a.f35136e * 1000000) / this.f36153l.sampleRate;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36148g = 0;
        this.f36149h = 0;
        this.f36150i = false;
        this.f36151j = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36142a = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36146e = c11083d.m21526c();
        this.f36147f = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        C11593a.m20024a(this.f36147f);
        while (c11628u.m19812a() > 0) {
            int i = this.f36148g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c11628u.m19812a(), this.f36154m - this.f36149h);
                        this.f36147f.mo20819b(c11628u, min);
                        int i2 = this.f36149h + min;
                        this.f36149h = i2;
                        int i3 = this.f36154m;
                        if (i2 == i3) {
                            this.f36147f.mo20835a(this.f36142a, 1, i3, 0, null);
                            this.f36142a += this.f36152k;
                            this.f36148g = 0;
                        }
                    }
                } else if (m21515a(c11628u, this.f36144c.f38733a)) {
                    m21513c();
                    this.f36144c.m19801d(0);
                    this.f36147f.mo20819b(this.f36144c, 16);
                    this.f36148g = 2;
                }
            } else if (m21514b(c11628u)) {
                this.f36148g = 1;
                this.f36144c.f38733a[0] = (byte) (-84);
                this.f36144c.f38733a[1] = (byte) (this.f36151j ? 65 : 64);
                this.f36149h = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
