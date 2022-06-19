package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C4839r;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/m.class */
public final class C4944m implements AbstractC4946o {

    /* renamed from: b */
    private final String f15236b;

    /* renamed from: c */
    private String f15237c;

    /* renamed from: d */
    private AbstractC4996v f15238d;

    /* renamed from: f */
    private int f15240f;

    /* renamed from: g */
    private int f15241g;

    /* renamed from: h */
    private long f15242h;

    /* renamed from: i */
    private Format f15243i;

    /* renamed from: j */
    private int f15244j;

    /* renamed from: k */
    private long f15245k;

    /* renamed from: a */
    private final C5536v f15235a = new C5536v(new byte[18]);

    /* renamed from: e */
    private int f15239e = 0;

    public C4944m(String str) {
        this.f15236b = str;
    }

    /* renamed from: a */
    private boolean m21118a(C5536v c5536v, byte[] bArr, int i) {
        int min = Math.min(c5536v.m18678a(), i - this.f15240f);
        c5536v.m18671h(bArr, this.f15240f, min);
        int i2 = this.f15240f + min;
        this.f15240f = i2;
        return i2 == i;
    }

    /* renamed from: g */
    private void m21117g() {
        byte[] bArr = this.f15235a.f17941a;
        if (this.f15243i == null) {
            Format m21510g = C4839r.m21510g(bArr, this.f15237c, this.f15236b, null);
            this.f15243i = m21510g;
            this.f15238d.mo19983d(m21510g);
        }
        this.f15244j = C4839r.m21516a(bArr);
        this.f15242h = (int) ((C4839r.m21511f(bArr) * 1000000) / this.f15243i.f14475z);
    }

    /* renamed from: h */
    private boolean m21116h(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15241g << 8;
            this.f15241g = i;
            int m18653z = i | c5536v.m18653z();
            this.f15241g = m18653z;
            if (C4839r.m21513d(m18653z)) {
                byte[] bArr = this.f15235a.f17941a;
                int i2 = this.f15241g;
                bArr[0] = (byte) ((i2 >> 24) & 255);
                bArr[1] = (byte) ((i2 >> 16) & 255);
                bArr[2] = (byte) ((i2 >> 8) & 255);
                bArr[3] = (byte) (i2 & 255);
                this.f15240f = 4;
                this.f15241g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15239e;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    int min = Math.min(c5536v.m18678a(), this.f15244j - this.f15240f);
                    this.f15238d.mo19985b(c5536v, min);
                    int i2 = this.f15240f + min;
                    this.f15240f = i2;
                    int i3 = this.f15244j;
                    if (i2 == i3) {
                        this.f15238d.mo19984c(this.f15245k, 1, i3, 0, null);
                        this.f15245k += this.f15242h;
                        this.f15239e = 0;
                    }
                } else if (m21118a(c5536v, this.f15235a.f17941a, 18)) {
                    m21117g();
                    this.f15235a.m18680M(0);
                    this.f15238d.mo19985b(this.f15235a, 18);
                    this.f15239e = 2;
                }
            } else if (m21116h(c5536v)) {
                this.f15239e = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15239e = 0;
        this.f15240f = 0;
        this.f15241g = 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15237c = c4937d.m21158b();
        this.f15238d = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15245k = j;
    }
}
