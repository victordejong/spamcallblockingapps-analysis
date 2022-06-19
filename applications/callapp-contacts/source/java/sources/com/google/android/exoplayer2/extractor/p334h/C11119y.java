package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/y.class */
public final class C11119y implements AbstractC11079ad {

    /* renamed from: a */
    private final AbstractC11118x f36422a;

    /* renamed from: b */
    private final C11628u f36423b = new C11628u(32);

    /* renamed from: c */
    private int f36424c;

    /* renamed from: d */
    private int f36425d;

    /* renamed from: e */
    private boolean f36426e;

    /* renamed from: f */
    private boolean f36427f;

    public C11119y(AbstractC11118x abstractC11118x) {
        this.f36422a = abstractC11118x;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    public final void mo21445a() {
        this.f36427f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    public final void mo21444a(C11597ad c11597ad, AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        this.f36422a.mo21447a(c11597ad, abstractC11130j, c11083d);
        this.f36427f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    public final void mo21443a(C11628u c11628u, int i) {
        boolean z = (i & 1) != 0;
        int m19804c = z ? c11628u.f38734b + c11628u.m19804c() : 0;
        if (this.f36427f) {
            if (!z) {
                return;
            }
            this.f36427f = false;
            c11628u.m19801d(m19804c);
            this.f36425d = 0;
        }
        while (c11628u.m19812a() > 0) {
            int i2 = this.f36425d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m19804c2 = c11628u.m19804c();
                    c11628u.m19801d(c11628u.f38734b - 1);
                    if (m19804c2 == 255) {
                        this.f36427f = true;
                        return;
                    }
                }
                int min = Math.min(c11628u.m19812a(), 3 - this.f36425d);
                c11628u.m19807a(this.f36423b.f38733a, this.f36425d, min);
                int i3 = this.f36425d + min;
                this.f36425d = i3;
                if (i3 == 3) {
                    this.f36423b.m19801d(0);
                    this.f36423b.m19803c(3);
                    this.f36423b.m19799e(1);
                    int m19804c3 = this.f36423b.m19804c();
                    int m19804c4 = this.f36423b.m19804c();
                    this.f36426e = (m19804c3 & 128) != 0;
                    this.f36424c = (((m19804c3 & 15) << 8) | m19804c4) + 3;
                    int length = this.f36423b.f38733a.length;
                    int i4 = this.f36424c;
                    if (length < i4) {
                        this.f36423b.m19805b(Math.min(4098, Math.max(i4, this.f36423b.f38733a.length * 2)));
                    }
                }
            } else {
                int min2 = Math.min(c11628u.m19812a(), this.f36424c - this.f36425d);
                c11628u.m19807a(this.f36423b.f38733a, this.f36425d, min2);
                int i5 = this.f36425d + min2;
                this.f36425d = i5;
                int i6 = this.f36424c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f36426e) {
                        this.f36423b.m19803c(i6);
                    } else if (C11599af.m19941b(this.f36423b.f38733a, this.f36424c, -1) != 0) {
                        this.f36427f = true;
                        return;
                    } else {
                        this.f36423b.m19803c(this.f36424c - 4);
                    }
                    this.f36423b.m19801d(0);
                    this.f36422a.mo21446a(this.f36423b);
                    this.f36425d = 0;
                }
            }
        }
    }
}
