package androidx.media2.exoplayer.external.source.ads;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.o;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/f.class */
public final class f extends o {

    /* renamed from: c  reason: collision with root package name */
    private final a f3538c;

    public f(al alVar, a aVar) {
        super(alVar);
        boolean z = false;
        a.b(alVar.c() == 1);
        a.b(alVar.b() == 1 ? true : z);
        this.f3538c = aVar;
    }

    @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
    public final al.a a(int i, al.a aVar, boolean z) {
        this.f3732b.a(i, aVar, z);
        aVar.a(aVar.f2830a, aVar.f2831b, aVar.f2832c, aVar.f2833d, aVar.e, this.f3538c);
        return aVar;
    }

    @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
    public final al.b a(int i, al.b bVar, long j) {
        al.b a2 = super.a(i, bVar, j);
        if (a2.j == -9223372036854775807L) {
            a2.j = this.f3538c.f;
        }
        return a2;
    }
}
