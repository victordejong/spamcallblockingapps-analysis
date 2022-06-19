package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.text.p252l.C5341g;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/j0.class */
public final class C4941j0 {

    /* renamed from: a */
    private final List<Format> f15209a;

    /* renamed from: b */
    private final AbstractC4996v[] f15210b;

    public C4941j0(List<Format> list) {
        this.f15209a = list;
        this.f15210b = new AbstractC4996v[list.size()];
    }

    /* renamed from: a */
    public void m21143a(long j, C5536v c5536v) {
        if (c5536v.m18678a() < 9) {
            return;
        }
        int m18668k = c5536v.m18668k();
        int m18668k2 = c5536v.m18668k();
        int m18653z = c5536v.m18653z();
        if (m18668k != 434 || m18668k2 != 1195456820 || m18653z != 3) {
            return;
        }
        C5341g.m19574b(j, c5536v, this.f15210b);
    }

    /* renamed from: b */
    public void m21142b(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        for (int i = 0; i < this.f15210b.length; i++) {
            c4937d.m21159a();
            AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 3);
            Format format = this.f15209a.get(i);
            String str = format.f14461l;
            C5508e.m18914b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            mo19748t.mo19983d(Format.m21761A(c4937d.m21158b(), str, null, -1, format.f14455f, format.f14449D, format.f14450E, null, Long.MAX_VALUE, format.f14463n));
            this.f15210b[i] = mo19748t;
        }
    }
}
