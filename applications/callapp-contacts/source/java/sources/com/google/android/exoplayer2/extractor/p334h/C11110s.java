package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/s.class */
public final class C11110s implements AbstractC11118x {

    /* renamed from: a */
    private Format f36377a;

    /* renamed from: b */
    private C11597ad f36378b;

    /* renamed from: c */
    private AbstractC11150x f36379c;

    public C11110s(String str) {
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = str;
        this.f36377a = c10828a.m22321a();
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
    /* renamed from: a */
    public final void mo21447a(C11597ad c11597ad, AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        this.f36378b = c11597ad;
        c11083d.m21528a();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 5);
        this.f36379c = mo20905a;
        mo20905a.mo20831a(this.f36377a);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
    /* renamed from: a */
    public final void mo21446a(C11628u c11628u) {
        C11593a.m20024a(this.f36378b);
        C11599af.m19974a(this.f36379c);
        long m20005c = this.f36378b.m20005c();
        if (m20005c == -9223372036854775807L) {
            return;
        }
        if (m20005c != this.f36377a.subsampleOffsetUs) {
            Format.C10828a buildUpon = this.f36377a.buildUpon();
            buildUpon.f34796o = m20005c;
            Format m22321a = buildUpon.m22321a();
            this.f36377a = m22321a;
            this.f36379c.mo20831a(m22321a);
        }
        int m19812a = c11628u.m19812a();
        this.f36379c.mo20819b(c11628u, m19812a);
        this.f36379c.mo20835a(this.f36378b.m20007b(), 1, m19812a, 0, null);
    }
}
