package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10902l;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/h.class */
public final class C11092h implements AbstractC11094j {

    /* renamed from: b */
    private final String f36193b;

    /* renamed from: c */
    private String f36194c;

    /* renamed from: d */
    private AbstractC11150x f36195d;

    /* renamed from: f */
    private int f36197f;

    /* renamed from: g */
    private int f36198g;

    /* renamed from: h */
    private long f36199h;

    /* renamed from: i */
    private Format f36200i;

    /* renamed from: j */
    private int f36201j;

    /* renamed from: k */
    private long f36202k;

    /* renamed from: a */
    private final C11628u f36192a = new C11628u(new byte[18]);

    /* renamed from: e */
    private int f36196e = 0;

    public C11092h(String str) {
        this.f36193b = str;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36196e = 0;
        this.f36197f = 0;
        this.f36198g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36202k = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36194c = c11083d.m21526c();
        this.f36195d = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        boolean z;
        C11593a.m20024a(this.f36195d);
        while (c11628u.m19812a() > 0) {
            int i = this.f36196e;
            boolean z2 = true;
            if (i == 0) {
                while (true) {
                    z = false;
                    if (c11628u.m19812a() <= 0) {
                        break;
                    }
                    int i2 = this.f36198g << 8;
                    this.f36198g = i2;
                    int m19804c = i2 | c11628u.m19804c();
                    this.f36198g = m19804c;
                    if (C10902l.m22014a(m19804c)) {
                        byte[] bArr = this.f36192a.f38733a;
                        int i3 = this.f36198g;
                        bArr[0] = (byte) ((i3 >> 24) & 255);
                        bArr[1] = (byte) ((i3 >> 16) & 255);
                        bArr[2] = (byte) ((i3 >> 8) & 255);
                        bArr[3] = (byte) (i3 & 255);
                        this.f36197f = 4;
                        this.f36198g = 0;
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.f36196e = 1;
                }
            } else if (i == 1) {
                byte[] bArr2 = this.f36192a.f38733a;
                int min = Math.min(c11628u.m19812a(), 18 - this.f36197f);
                c11628u.m19807a(bArr2, this.f36197f, min);
                int i4 = this.f36197f + min;
                this.f36197f = i4;
                if (i4 != 18) {
                    z2 = false;
                }
                if (z2) {
                    byte[] bArr3 = this.f36192a.f38733a;
                    if (this.f36200i == null) {
                        Format m22011a = C10902l.m22011a(bArr3, this.f36194c, this.f36193b);
                        this.f36200i = m22011a;
                        this.f36195d.mo20831a(m22011a);
                    }
                    this.f36201j = C10902l.m22010b(bArr3);
                    this.f36199h = (int) ((C10902l.m22012a(bArr3) * 1000000) / this.f36200i.sampleRate);
                    this.f36192a.m19801d(0);
                    this.f36195d.mo20819b(this.f36192a, 18);
                    this.f36196e = 2;
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c11628u.m19812a(), this.f36201j - this.f36197f);
                this.f36195d.mo20819b(c11628u, min2);
                int i5 = this.f36197f + min2;
                this.f36197f = i5;
                int i6 = this.f36201j;
                if (i5 == i6) {
                    this.f36195d.mo20835a(this.f36202k, 1, i6, 0, null);
                    this.f36202k += this.f36199h;
                    this.f36196e = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
