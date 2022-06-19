package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C4822h;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/i.class */
public final class C4938i implements AbstractC4946o {

    /* renamed from: a */
    private final C5535u f15183a;

    /* renamed from: b */
    private final C5536v f15184b;

    /* renamed from: c */
    private final String f15185c;

    /* renamed from: d */
    private String f15186d;

    /* renamed from: e */
    private AbstractC4996v f15187e;

    /* renamed from: f */
    private int f15188f;

    /* renamed from: g */
    private int f15189g;

    /* renamed from: h */
    private boolean f15190h;

    /* renamed from: i */
    private boolean f15191i;

    /* renamed from: j */
    private long f15192j;

    /* renamed from: k */
    private Format f15193k;

    /* renamed from: l */
    private int f15194l;

    /* renamed from: m */
    private long f15195m;

    public C4938i() {
        this(null);
    }

    public C4938i(String str) {
        C5535u c5535u = new C5535u(new byte[16]);
        this.f15183a = c5535u;
        this.f15184b = new C5536v(c5535u.f17937a);
        this.f15188f = 0;
        this.f15189g = 0;
        this.f15190h = false;
        this.f15191i = false;
        this.f15185c = str;
    }

    /* renamed from: a */
    private boolean m21155a(C5536v c5536v, byte[] bArr, int i) {
        int min = Math.min(c5536v.m18678a(), i - this.f15189g);
        c5536v.m18671h(bArr, this.f15189g, min);
        int i2 = this.f15189g + min;
        this.f15189g = i2;
        return i2 == i;
    }

    /* renamed from: g */
    private void m21154g() {
        this.f15183a.m18696o(0);
        C4822h.C4824b m21584d = C4822h.m21584d(this.f15183a);
        Format format = this.f15193k;
        if (format == null || m21584d.f14613c != format.f14474y || m21584d.f14612b != format.f14475z || !"audio/ac4".equals(format.f14461l)) {
            Format m21740o = Format.m21740o(this.f15186d, "audio/ac4", null, -1, -1, m21584d.f14613c, m21584d.f14612b, null, null, 0, this.f15185c);
            this.f15193k = m21740o;
            this.f15187e.mo19983d(m21740o);
        }
        this.f15194l = m21584d.f14614d;
        this.f15192j = (m21584d.f14615e * 1000000) / this.f15193k.f14475z;
    }

    /* renamed from: h */
    private boolean m21153h(C5536v c5536v) {
        int m18653z;
        while (true) {
            boolean z = false;
            if (c5536v.m18678a() <= 0) {
                return false;
            }
            if (!this.f15190h) {
                if (c5536v.m18653z() == 172) {
                    z = true;
                }
                this.f15190h = z;
            } else {
                m18653z = c5536v.m18653z();
                this.f15190h = m18653z == 172;
                if (m18653z == 64 || m18653z == 65) {
                    break;
                }
            }
        }
        boolean z2 = false;
        if (m18653z == 65) {
            z2 = true;
        }
        this.f15191i = z2;
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15188f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c5536v.m18678a(), this.f15194l - this.f15189g);
                        this.f15187e.mo19985b(c5536v, min);
                        int i2 = this.f15189g + min;
                        this.f15189g = i2;
                        int i3 = this.f15194l;
                        if (i2 == i3) {
                            this.f15187e.mo19984c(this.f15195m, 1, i3, 0, null);
                            this.f15195m += this.f15192j;
                            this.f15188f = 0;
                        }
                    }
                } else if (m21155a(c5536v, this.f15184b.f17941a, 16)) {
                    m21154g();
                    this.f15184b.m18680M(0);
                    this.f15187e.mo19985b(this.f15184b, 16);
                    this.f15188f = 2;
                }
            } else if (m21153h(c5536v)) {
                this.f15188f = 1;
                byte[] bArr = this.f15184b.f17941a;
                bArr[0] = (byte) (-84);
                bArr[1] = (byte) (this.f15191i ? 65 : 64);
                this.f15189g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15188f = 0;
        this.f15189g = 0;
        this.f15190h = false;
        this.f15191i = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15186d = c4937d.m21158b();
        this.f15187e = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15195m = j;
    }
}
