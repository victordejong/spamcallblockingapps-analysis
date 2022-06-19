package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/s.class */
public final class C4955s implements AbstractC4946o {

    /* renamed from: a */
    private final C5536v f15350a = new C5536v(10);

    /* renamed from: b */
    private AbstractC4996v f15351b;

    /* renamed from: c */
    private boolean f15352c;

    /* renamed from: d */
    private long f15353d;

    /* renamed from: e */
    private int f15354e;

    /* renamed from: f */
    private int f15355f;

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        if (!this.f15352c) {
            return;
        }
        int m18678a = c5536v.m18678a();
        int i = this.f15355f;
        if (i < 10) {
            int min = Math.min(m18678a, 10 - i);
            System.arraycopy(c5536v.f17941a, c5536v.m18676c(), this.f15350a.f17941a, this.f15355f, min);
            if (this.f15355f + min == 10) {
                this.f15350a.m18680M(0);
                if (73 != this.f15350a.m18653z() || 68 != this.f15350a.m18653z() || 51 != this.f15350a.m18653z()) {
                    C5526o.m18742f("Id3Reader", "Discarding invalid ID3 tag");
                    this.f15352c = false;
                    return;
                }
                this.f15350a.m18679N(3);
                this.f15354e = this.f15350a.m18654y() + 10;
            }
        }
        int min2 = Math.min(m18678a, this.f15354e - this.f15355f);
        this.f15351b.mo19985b(c5536v, min2);
        this.f15355f += min2;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15352c = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
        int i;
        if (!this.f15352c || (i = this.f15354e) == 0 || this.f15355f != i) {
            return;
        }
        this.f15351b.mo19984c(this.f15353d, 1, i, 0, null);
        this.f15352c = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 4);
        this.f15351b = mo19748t;
        mo19748t.mo19983d(Format.m21736u(c4937d.m21158b(), "application/id3", null, -1, null));
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f15352c = true;
        this.f15353d = j;
        this.f15354e = 0;
        this.f15355f = 0;
    }
}
