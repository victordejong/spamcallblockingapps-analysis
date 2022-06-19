package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.text.p252l.C5341g;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/c0.class */
public final class C4920c0 {

    /* renamed from: a */
    private final List<Format> f15107a;

    /* renamed from: b */
    private final AbstractC4996v[] f15108b;

    public C4920c0(List<Format> list) {
        this.f15107a = list;
        this.f15108b = new AbstractC4996v[list.size()];
    }

    /* renamed from: a */
    public void m21200a(long j, C5536v c5536v) {
        C5341g.m19575a(j, c5536v, this.f15108b);
    }

    /* renamed from: b */
    public void m21199b(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        for (int i = 0; i < this.f15108b.length; i++) {
            c4937d.m21159a();
            AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 3);
            Format format = this.f15107a.get(i);
            String str = format.f14461l;
            C5508e.m18914b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String str2 = format.f14453d;
            if (str2 == null) {
                str2 = c4937d.m21158b();
            }
            mo19748t.mo19983d(Format.m21761A(str2, str, null, -1, format.f14455f, format.f14449D, format.f14450E, null, Long.MAX_VALUE, format.f14463n));
            this.f15108b[i] = mo19748t;
        }
    }
}
