package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10883b;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.h.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/b.class */
public final class C11086b implements AbstractC11094j {

    /* renamed from: a */
    long f36126a;

    /* renamed from: b */
    private final C11627t f36127b;

    /* renamed from: c */
    private final C11628u f36128c;

    /* renamed from: d */
    private final String f36129d;

    /* renamed from: e */
    private String f36130e;

    /* renamed from: f */
    private AbstractC11150x f36131f;

    /* renamed from: g */
    private int f36132g;

    /* renamed from: h */
    private int f36133h;

    /* renamed from: i */
    private boolean f36134i;

    /* renamed from: j */
    private long f36135j;

    /* renamed from: k */
    private Format f36136k;

    /* renamed from: l */
    private int f36137l;

    public C11086b() {
        this(null);
    }

    public C11086b(String str) {
        C11627t c11627t = new C11627t(new byte[128]);
        this.f36127b = c11627t;
        this.f36128c = new C11628u(c11627t.f38729a);
        this.f36132g = 0;
        this.f36129d = str;
    }

    /* renamed from: a */
    private boolean m21519a(C11628u c11628u, byte[] bArr) {
        int min = Math.min(c11628u.m19812a(), 128 - this.f36133h);
        c11628u.m19807a(bArr, this.f36133h, min);
        int i = this.f36133h + min;
        this.f36133h = i;
        return i == 128;
    }

    /* renamed from: b */
    private boolean m21518b(C11628u c11628u) {
        while (true) {
            boolean z = false;
            if (c11628u.m19812a() > 0) {
                if (!this.f36134i) {
                    if (c11628u.m19804c() == 11) {
                        z = true;
                    }
                    this.f36134i = z;
                } else {
                    int m19804c = c11628u.m19804c();
                    if (m19804c == 119) {
                        this.f36134i = false;
                        return true;
                    }
                    boolean z2 = false;
                    if (m19804c == 11) {
                        z2 = true;
                    }
                    this.f36134i = z2;
                }
            } else {
                return false;
            }
        }
    }

    @RequiresNonNull({"output"})
    /* renamed from: c */
    private void m21517c() {
        this.f36127b.m19826a(0);
        C10883b.C10885a m22083a = C10883b.m22083a(this.f36127b);
        if (this.f36136k == null || m22083a.f35128d != this.f36136k.channelCount || m22083a.f35127c != this.f36136k.sampleRate || !C11599af.m19973a((Object) m22083a.f35125a, (Object) this.f36136k.sampleMimeType)) {
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34782a = this.f36130e;
            c10828a.f34792k = m22083a.f35125a;
            c10828a.f34805x = m22083a.f35128d;
            c10828a.f34806y = m22083a.f35127c;
            c10828a.f34784c = this.f36129d;
            Format m22321a = c10828a.m22321a();
            this.f36136k = m22321a;
            this.f36131f.mo20831a(m22321a);
        }
        this.f36137l = m22083a.f35129e;
        this.f36135j = (m22083a.f35130f * 1000000) / this.f36136k.sampleRate;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36132g = 0;
        this.f36133h = 0;
        this.f36134i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36126a = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36130e = c11083d.m21526c();
        this.f36131f = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        C11593a.m20024a(this.f36131f);
        while (c11628u.m19812a() > 0) {
            int i = this.f36132g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c11628u.m19812a(), this.f36137l - this.f36133h);
                        this.f36131f.mo20819b(c11628u, min);
                        int i2 = this.f36133h + min;
                        this.f36133h = i2;
                        int i3 = this.f36137l;
                        if (i2 == i3) {
                            this.f36131f.mo20835a(this.f36126a, 1, i3, 0, null);
                            this.f36126a += this.f36135j;
                            this.f36132g = 0;
                        }
                    }
                } else if (m21519a(c11628u, this.f36128c.f38733a)) {
                    m21517c();
                    this.f36128c.m19801d(0);
                    this.f36131f.mo20819b(this.f36128c, 128);
                    this.f36132g = 2;
                }
            } else if (m21518b(c11628u)) {
                this.f36132g = 1;
                this.f36128c.f38733a[0] = (byte) 11;
                this.f36128c.f38733a[1] = (byte) 119;
                this.f36133h = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
