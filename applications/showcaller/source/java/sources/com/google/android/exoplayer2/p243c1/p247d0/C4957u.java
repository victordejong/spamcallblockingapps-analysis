package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4990r;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.u */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/u.class */
public final class C4957u implements AbstractC4946o {

    /* renamed from: a */
    private final C5536v f15376a;

    /* renamed from: b */
    private final C4990r f15377b;

    /* renamed from: c */
    private final String f15378c;

    /* renamed from: d */
    private String f15379d;

    /* renamed from: e */
    private AbstractC4996v f15380e;

    /* renamed from: f */
    private int f15381f;

    /* renamed from: g */
    private int f15382g;

    /* renamed from: h */
    private boolean f15383h;

    /* renamed from: i */
    private boolean f15384i;

    /* renamed from: j */
    private long f15385j;

    /* renamed from: k */
    private int f15386k;

    /* renamed from: l */
    private long f15387l;

    public C4957u() {
        this(null);
    }

    public C4957u(String str) {
        this.f15381f = 0;
        C5536v c5536v = new C5536v(4);
        this.f15376a = c5536v;
        c5536v.f17941a[0] = (byte) (-1);
        this.f15377b = new C4990r();
        this.f15378c = str;
    }

    /* renamed from: a */
    private void m21074a(C5536v c5536v) {
        byte[] bArr = c5536v.f17941a;
        int m18675d = c5536v.m18675d();
        for (int m18676c = c5536v.m18676c(); m18676c < m18675d; m18676c++) {
            boolean z = (bArr[m18676c] & 255) == 255;
            boolean z2 = this.f15384i && (bArr[m18676c] & 224) == 224;
            this.f15384i = z;
            if (z2) {
                c5536v.m18680M(m18676c + 1);
                this.f15384i = false;
                this.f15376a.f17941a[1] = bArr[m18676c];
                this.f15382g = 2;
                this.f15381f = 1;
                return;
            }
        }
        c5536v.m18680M(m18675d);
    }

    /* renamed from: g */
    private void m21068g(C5536v c5536v) {
        int min = Math.min(c5536v.m18678a(), this.f15386k - this.f15382g);
        this.f15380e.mo19985b(c5536v, min);
        int i = this.f15382g + min;
        this.f15382g = i;
        int i2 = this.f15386k;
        if (i < i2) {
            return;
        }
        this.f15380e.mo19984c(this.f15387l, 1, i2, 0, null);
        this.f15387l += this.f15385j;
        this.f15382g = 0;
        this.f15381f = 0;
    }

    /* renamed from: h */
    private void m21067h(C5536v c5536v) {
        int min = Math.min(c5536v.m18678a(), 4 - this.f15382g);
        c5536v.m18671h(this.f15376a.f17941a, this.f15382g, min);
        int i = this.f15382g + min;
        this.f15382g = i;
        if (i < 4) {
            return;
        }
        this.f15376a.m18680M(0);
        if (!C4990r.m20966e(this.f15376a.m18668k(), this.f15377b)) {
            this.f15382g = 0;
            this.f15381f = 1;
            return;
        }
        C4990r c4990r = this.f15377b;
        this.f15386k = c4990r.f15512j;
        if (!this.f15383h) {
            long j = c4990r.f15516n;
            int i2 = c4990r.f15513k;
            this.f15385j = (j * 1000000) / i2;
            this.f15380e.mo19983d(Format.m21740o(this.f15379d, c4990r.f15511i, null, -1, 4096, c4990r.f15514l, i2, null, null, 0, this.f15378c));
            this.f15383h = true;
        }
        this.f15376a.m18680M(0);
        this.f15380e.mo19985b(this.f15376a, 4);
        this.f15381f = 2;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15381f;
            if (i == 0) {
                m21074a(c5536v);
            } else if (i == 1) {
                m21067h(c5536v);
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                m21068g(c5536v);
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15381f = 0;
        this.f15382g = 0;
        this.f15384i = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15379d = c4937d.m21158b();
        this.f15380e = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15387l = j;
    }
}
