package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10907o;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/q.class */
public final class C11108q implements AbstractC11094j {

    /* renamed from: a */
    private final C11628u f36360a;

    /* renamed from: b */
    private final C10907o.C10908a f36361b;

    /* renamed from: c */
    private final String f36362c;

    /* renamed from: d */
    private AbstractC11150x f36363d;

    /* renamed from: e */
    private String f36364e;

    /* renamed from: f */
    private int f36365f;

    /* renamed from: g */
    private int f36366g;

    /* renamed from: h */
    private boolean f36367h;

    /* renamed from: i */
    private boolean f36368i;

    /* renamed from: j */
    private long f36369j;

    /* renamed from: k */
    private int f36370k;

    /* renamed from: l */
    private long f36371l;

    public C11108q() {
        this(null);
    }

    public C11108q(String str) {
        this.f36365f = 0;
        C11628u c11628u = new C11628u(4);
        this.f36360a = c11628u;
        c11628u.f38733a[0] = (byte) (-1);
        this.f36361b = new C10907o.C10908a();
        this.f36362c = str;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36365f = 0;
        this.f36366g = 0;
        this.f36368i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36371l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36364e = c11083d.m21526c();
        this.f36363d = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        C11593a.m20024a(this.f36363d);
        while (c11628u.m19812a() > 0) {
            int i = this.f36365f;
            if (i == 0) {
                byte[] bArr = c11628u.f38733a;
                int i2 = c11628u.f38734b;
                int i3 = c11628u.f38735c;
                while (true) {
                    if (i2 >= i3) {
                        c11628u.m19801d(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.f36368i && (bArr[i2] & 224) == 224;
                    this.f36368i = z;
                    if (z2) {
                        c11628u.m19801d(i2 + 1);
                        this.f36368i = false;
                        this.f36360a.f38733a[1] = bArr[i2];
                        this.f36366g = 2;
                        this.f36365f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(c11628u.m19812a(), 4 - this.f36366g);
                c11628u.m19807a(this.f36360a.f38733a, this.f36366g, min);
                int i4 = this.f36366g + min;
                this.f36366g = i4;
                if (i4 >= 4) {
                    this.f36360a.m19801d(0);
                    if (!this.f36361b.m21984a(this.f36360a.m19792j())) {
                        this.f36366g = 0;
                        this.f36365f = 1;
                    } else {
                        this.f36370k = this.f36361b.f35233c;
                        if (!this.f36367h) {
                            this.f36369j = (this.f36361b.f35237g * 1000000) / this.f36361b.f35234d;
                            Format.C10828a c10828a = new Format.C10828a();
                            c10828a.f34782a = this.f36364e;
                            c10828a.f34792k = this.f36361b.f35232b;
                            c10828a.f34793l = 4096;
                            c10828a.f34805x = this.f36361b.f35235e;
                            c10828a.f34806y = this.f36361b.f35234d;
                            c10828a.f34784c = this.f36362c;
                            this.f36363d.mo20831a(c10828a.m22321a());
                            this.f36367h = true;
                        }
                        this.f36360a.m19801d(0);
                        this.f36363d.mo20819b(this.f36360a, 4);
                        this.f36365f = 2;
                    }
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c11628u.m19812a(), this.f36370k - this.f36366g);
                this.f36363d.mo20819b(c11628u, min2);
                int i5 = this.f36366g + min2;
                this.f36366g = i5;
                int i6 = this.f36370k;
                if (i5 >= i6) {
                    this.f36363d.mo20835a(this.f36371l, 1, i6, 0, null);
                    this.f36371l += this.f36369j;
                    this.f36366g = 0;
                    this.f36365f = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
