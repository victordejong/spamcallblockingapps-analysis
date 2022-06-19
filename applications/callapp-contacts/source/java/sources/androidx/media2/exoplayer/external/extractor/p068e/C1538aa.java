package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.aa */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/aa.class */
public final class C1538aa implements AbstractC1548ah {

    /* renamed from: a */
    private final AbstractC1587z f5935a;

    /* renamed from: b */
    private final C2018p f5936b = new C2018p(32);

    /* renamed from: c */
    private int f5937c;

    /* renamed from: d */
    private int f5938d;

    /* renamed from: e */
    private boolean f5939e;

    /* renamed from: f */
    private boolean f5940f;

    public C1538aa(AbstractC1587z abstractC1587z) {
        this.f5935a = abstractC1587z;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    public final void mo42646a() {
        this.f5940f = true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    public final void mo42644a(C2018p c2018p, int i) {
        boolean z = (i & 1) != 0;
        int m41534c = z ? c2018p.f8132b + c2018p.m41534c() : 0;
        if (this.f5940f) {
            if (!z) {
                return;
            }
            this.f5940f = false;
            c2018p.m41533c(m41534c);
            this.f5938d = 0;
        }
        while (c2018p.m41536b() > 0) {
            int i2 = this.f5938d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m41534c2 = c2018p.m41534c();
                    c2018p.m41533c(c2018p.f8132b - 1);
                    if (m41534c2 == 255) {
                        this.f5940f = true;
                        return;
                    }
                }
                int min = Math.min(c2018p.m41536b(), 3 - this.f5938d);
                c2018p.m41537a(this.f5936b.f8131a, this.f5938d, min);
                int i3 = this.f5938d + min;
                this.f5938d = i3;
                if (i3 == 3) {
                    this.f5936b.m41541a(3);
                    this.f5936b.m41531d(1);
                    int m41534c3 = this.f5936b.m41534c();
                    int m41534c4 = this.f5936b.m41534c();
                    this.f5939e = (m41534c3 & 128) != 0;
                    this.f5937c = (((m41534c3 & 15) << 8) | m41534c4) + 3;
                    if (this.f5936b.f8131a.length < this.f5937c) {
                        byte[] bArr = this.f5936b.f8131a;
                        this.f5936b.m41541a(Math.min(4098, Math.max(this.f5937c, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f5936b.f8131a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(c2018p.m41536b(), this.f5937c - this.f5938d);
                c2018p.m41537a(this.f5936b.f8131a, this.f5938d, min2);
                int i4 = this.f5938d + min2;
                this.f5938d = i4;
                int i5 = this.f5937c;
                if (i4 != i5) {
                    continue;
                } else {
                    if (!this.f5939e) {
                        this.f5936b.m41541a(i5);
                    } else if (C1996ac.m41629b(this.f5936b.f8131a, this.f5937c, -1) != 0) {
                        this.f5940f = true;
                        return;
                    } else {
                        this.f5936b.m41541a(this.f5937c - 4);
                    }
                    this.f5935a.mo42632a(this.f5936b);
                    this.f5938d = 0;
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    public final void mo42642a(C2030z c2030z, AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        this.f5935a.mo42631a(c2030z, abstractC1601i, c1552d);
        this.f5940f = true;
    }
}
