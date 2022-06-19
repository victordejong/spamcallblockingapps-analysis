package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/n.class */
final class C5087n {

    /* renamed from: a */
    public C5072e f15900a;

    /* renamed from: b */
    public long f15901b;

    /* renamed from: c */
    public long f15902c;

    /* renamed from: d */
    public long f15903d;

    /* renamed from: e */
    public int f15904e;

    /* renamed from: f */
    public int f15905f;

    /* renamed from: g */
    public long[] f15906g;

    /* renamed from: h */
    public int[] f15907h;

    /* renamed from: i */
    public int[] f15908i;

    /* renamed from: j */
    public int[] f15909j;

    /* renamed from: k */
    public long[] f15910k;

    /* renamed from: l */
    public boolean[] f15911l;

    /* renamed from: m */
    public boolean f15912m;

    /* renamed from: n */
    public boolean[] f15913n;

    /* renamed from: o */
    public C5086m f15914o;

    /* renamed from: p */
    public int f15915p;

    /* renamed from: q */
    public C5536v f15916q;

    /* renamed from: r */
    public boolean f15917r;

    /* renamed from: s */
    public long f15918s;

    /* renamed from: a */
    public void m20592a(AbstractC4979i abstractC4979i) {
        abstractC4979i.readFully(this.f15916q.f17941a, 0, this.f15915p);
        this.f15916q.m18680M(0);
        this.f15917r = false;
    }

    /* renamed from: b */
    public void m20591b(C5536v c5536v) {
        c5536v.m18671h(this.f15916q.f17941a, 0, this.f15915p);
        this.f15916q.m18680M(0);
        this.f15917r = false;
    }

    /* renamed from: c */
    public long m20590c(int i) {
        return this.f15910k[i] + this.f15909j[i];
    }

    /* renamed from: d */
    public void m20589d(int i) {
        C5536v c5536v = this.f15916q;
        if (c5536v == null || c5536v.m18675d() < i) {
            this.f15916q = new C5536v(i);
        }
        this.f15915p = i;
        this.f15912m = true;
        this.f15917r = true;
    }

    /* renamed from: e */
    public void m20588e(int i, int i2) {
        this.f15904e = i;
        this.f15905f = i2;
        int[] iArr = this.f15907h;
        if (iArr == null || iArr.length < i) {
            this.f15906g = new long[i];
            this.f15907h = new int[i];
        }
        int[] iArr2 = this.f15908i;
        if (iArr2 == null || iArr2.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.f15908i = new int[i3];
            this.f15909j = new int[i3];
            this.f15910k = new long[i3];
            this.f15911l = new boolean[i3];
            this.f15913n = new boolean[i3];
        }
    }

    /* renamed from: f */
    public void m20587f() {
        this.f15904e = 0;
        this.f15918s = 0L;
        this.f15912m = false;
        this.f15917r = false;
        this.f15914o = null;
    }

    /* renamed from: g */
    public boolean m20586g(int i) {
        return this.f15912m && this.f15913n[i];
    }
}
