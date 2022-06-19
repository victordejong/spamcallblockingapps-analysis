package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/d0.class */
public final class C4922d0 implements AbstractC4916a0 {

    /* renamed from: a */
    private C5509e0 f15110a;

    /* renamed from: b */
    private AbstractC4996v f15111b;

    /* renamed from: c */
    private boolean f15112c;

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
    /* renamed from: a */
    public void mo21163a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        this.f15110a = c5509e0;
        c4937d.m21159a();
        AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 4);
        this.f15111b = mo19748t;
        mo19748t.mo19983d(Format.m21736u(c4937d.m21158b(), "application/x-scte35", null, -1, null));
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
    /* renamed from: b */
    public void mo21162b(C5536v c5536v) {
        if (!this.f15112c) {
            if (this.f15110a.m18902e() == -9223372036854775807L) {
                return;
            }
            this.f15111b.mo19983d(Format.m21737t(null, "application/x-scte35", this.f15110a.m18902e()));
            this.f15112c = true;
        }
        int m18678a = c5536v.m18678a();
        this.f15111b.mo19985b(c5536v, m18678a);
        this.f15111b.mo19984c(this.f15110a.m18903d(), 1, m18678a, 0, null);
    }
}
