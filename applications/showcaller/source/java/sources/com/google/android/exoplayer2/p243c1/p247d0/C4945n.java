package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/n.class */
public final class C4945n implements AbstractC4946o {

    /* renamed from: a */
    private final List<AbstractC4933h0.C4934a> f15246a;

    /* renamed from: b */
    private final AbstractC4996v[] f15247b;

    /* renamed from: c */
    private boolean f15248c;

    /* renamed from: d */
    private int f15249d;

    /* renamed from: e */
    private int f15250e;

    /* renamed from: f */
    private long f15251f;

    public C4945n(List<AbstractC4933h0.C4934a> list) {
        this.f15246a = list;
        this.f15247b = new AbstractC4996v[list.size()];
    }

    /* renamed from: a */
    private boolean m21115a(C5536v c5536v, int i) {
        if (c5536v.m18678a() == 0) {
            return false;
        }
        if (c5536v.m18653z() != i) {
            this.f15248c = false;
        }
        this.f15249d--;
        return this.f15248c;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        AbstractC4996v[] abstractC4996vArr;
        if (this.f15248c) {
            if (this.f15249d == 2 && !m21115a(c5536v, 32)) {
                return;
            }
            if (this.f15249d == 1 && !m21115a(c5536v, 0)) {
                return;
            }
            int m18676c = c5536v.m18676c();
            int m18678a = c5536v.m18678a();
            for (AbstractC4996v abstractC4996v : this.f15247b) {
                c5536v.m18680M(m18676c);
                abstractC4996v.mo19985b(c5536v, m18678a);
            }
            this.f15250e += m18678a;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15248c = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
        if (this.f15248c) {
            for (AbstractC4996v abstractC4996v : this.f15247b) {
                abstractC4996v.mo19984c(this.f15251f, 1, this.f15250e, 0, null);
            }
            this.f15248c = false;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        for (int i = 0; i < this.f15247b.length; i++) {
            AbstractC4933h0.C4934a c4934a = this.f15246a.get(i);
            c4937d.m21159a();
            AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 3);
            mo19748t.mo19983d(Format.m21738s(c4937d.m21158b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(c4934a.f15173c), c4934a.f15171a, null));
            this.f15247b[i] = mo19748t;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f15248c = true;
        this.f15251f = j;
        this.f15250e = 0;
        this.f15249d = 2;
    }
}
