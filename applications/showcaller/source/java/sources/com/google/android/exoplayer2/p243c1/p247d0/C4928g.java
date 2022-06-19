package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C4819g;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/g.class */
public final class C4928g implements AbstractC4946o {

    /* renamed from: a */
    private final C5535u f15129a;

    /* renamed from: b */
    private final C5536v f15130b;

    /* renamed from: c */
    private final String f15131c;

    /* renamed from: d */
    private String f15132d;

    /* renamed from: e */
    private AbstractC4996v f15133e;

    /* renamed from: f */
    private int f15134f;

    /* renamed from: g */
    private int f15135g;

    /* renamed from: h */
    private boolean f15136h;

    /* renamed from: i */
    private long f15137i;

    /* renamed from: j */
    private Format f15138j;

    /* renamed from: k */
    private int f15139k;

    /* renamed from: l */
    private long f15140l;

    public C4928g() {
        this(null);
    }

    public C4928g(String str) {
        C5535u c5535u = new C5535u(new byte[128]);
        this.f15129a = c5535u;
        this.f15130b = new C5536v(c5535u.f17937a);
        this.f15134f = 0;
        this.f15131c = str;
    }

    /* renamed from: a */
    private boolean m21187a(C5536v c5536v, byte[] bArr, int i) {
        int min = Math.min(c5536v.m18678a(), i - this.f15135g);
        c5536v.m18671h(bArr, this.f15135g, min);
        int i2 = this.f15135g + min;
        this.f15135g = i2;
        return i2 == i;
    }

    /* renamed from: g */
    private void m21186g() {
        this.f15129a.m18696o(0);
        C4819g.C4821b m21592e = C4819g.m21592e(this.f15129a);
        Format format = this.f15138j;
        if (format == null || m21592e.f14607d != format.f14474y || m21592e.f14606c != format.f14475z || m21592e.f14604a != format.f14461l) {
            Format m21740o = Format.m21740o(this.f15132d, m21592e.f14604a, null, -1, -1, m21592e.f14607d, m21592e.f14606c, null, null, 0, this.f15131c);
            this.f15138j = m21740o;
            this.f15133e.mo19983d(m21740o);
        }
        this.f15139k = m21592e.f14608e;
        this.f15137i = (m21592e.f14609f * 1000000) / this.f15138j.f14475z;
    }

    /* renamed from: h */
    private boolean m21185h(C5536v c5536v) {
        while (true) {
            boolean z = false;
            if (c5536v.m18678a() > 0) {
                if (!this.f15136h) {
                    if (c5536v.m18653z() == 11) {
                        z = true;
                    }
                    this.f15136h = z;
                } else {
                    int m18653z = c5536v.m18653z();
                    if (m18653z == 119) {
                        this.f15136h = false;
                        return true;
                    }
                    boolean z2 = false;
                    if (m18653z == 11) {
                        z2 = true;
                    }
                    this.f15136h = z2;
                }
            } else {
                return false;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15134f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c5536v.m18678a(), this.f15139k - this.f15135g);
                        this.f15133e.mo19985b(c5536v, min);
                        int i2 = this.f15135g + min;
                        this.f15135g = i2;
                        int i3 = this.f15139k;
                        if (i2 == i3) {
                            this.f15133e.mo19984c(this.f15140l, 1, i3, 0, null);
                            this.f15140l += this.f15137i;
                            this.f15134f = 0;
                        }
                    }
                } else if (m21187a(c5536v, this.f15130b.f17941a, 128)) {
                    m21186g();
                    this.f15130b.m18680M(0);
                    this.f15133e.mo19985b(this.f15130b, 128);
                    this.f15134f = 2;
                }
            } else if (m21185h(c5536v)) {
                this.f15134f = 1;
                byte[] bArr = this.f15130b.f17941a;
                bArr[0] = (byte) 11;
                bArr[1] = (byte) 119;
                this.f15135g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15134f = 0;
        this.f15135g = 0;
        this.f15136h = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15132d = c4937d.m21158b();
        this.f15133e = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15140l = j;
    }
}
