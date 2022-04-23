package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/c.class */
public final class c extends j {

    /* renamed from: c  reason: collision with root package name */
    private final a f21568c;

    public c(al alVar, a aVar) {
        super(alVar);
        boolean z = false;
        a.b(alVar.b() == 1);
        a.b(alVar.a() == 1 ? true : z);
        this.f21568c = aVar;
    }

    @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
    public final al.a a(int i, al.a aVar, boolean z) {
        this.f21613a.a(i, aVar, z);
        aVar.a(aVar.f20675a, aVar.f20676b, aVar.f20677c, aVar.f20678d == -9223372036854775807L ? this.f21568c.g : aVar.f20678d, aVar.e, this.f21568c);
        return aVar;
    }
}
