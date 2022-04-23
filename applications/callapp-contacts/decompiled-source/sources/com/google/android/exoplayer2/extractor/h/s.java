package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/s.class */
public final class s implements x {

    /* renamed from: a  reason: collision with root package name */
    private Format f21258a;

    /* renamed from: b  reason: collision with root package name */
    private ad f21259b;

    /* renamed from: c  reason: collision with root package name */
    private x f21260c;

    public s(String str) {
        Format.a aVar = new Format.a();
        aVar.k = str;
        this.f21258a = aVar.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h.x
    public final void a(ad adVar, j jVar, ad.d dVar) {
        this.f21259b = adVar;
        dVar.a();
        x a2 = jVar.a(dVar.b(), 5);
        this.f21260c = a2;
        a2.a(this.f21258a);
    }

    @Override // com.google.android.exoplayer2.extractor.h.x
    public final void a(u uVar) {
        a.a(this.f21259b);
        af.a(this.f21260c);
        long c2 = this.f21259b.c();
        if (c2 != -9223372036854775807L) {
            if (c2 != this.f21258a.subsampleOffsetUs) {
                Format.a buildUpon = this.f21258a.buildUpon();
                buildUpon.o = c2;
                Format a2 = buildUpon.a();
                this.f21258a = a2;
                this.f21260c.a(a2);
            }
            int a3 = uVar.a();
            this.f21260c.b(uVar, a3);
            this.f21260c.a(this.f21259b.b(), 1, a3, 0, null);
        }
    }
}
