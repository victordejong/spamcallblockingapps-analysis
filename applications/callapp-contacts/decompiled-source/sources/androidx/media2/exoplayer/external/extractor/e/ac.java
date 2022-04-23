package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ac.class */
public final class ac implements z {

    /* renamed from: a  reason: collision with root package name */
    private z f3151a;

    /* renamed from: b  reason: collision with root package name */
    private q f3152b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3153c;

    @Override // androidx.media2.exoplayer.external.extractor.e.z
    public final void a(p pVar) {
        long j = -9223372036854775807L;
        if (!this.f3153c) {
            if (this.f3151a.a() != -9223372036854775807L) {
                this.f3152b.a(Format.createSampleFormat(null, "application/x-scte35", this.f3151a.a()));
                this.f3153c = true;
            } else {
                return;
            }
        }
        int b2 = pVar.b();
        this.f3152b.a(pVar, b2);
        q qVar = this.f3152b;
        z zVar = this.f3151a;
        if (zVar.f4193c != -9223372036854775807L) {
            j = zVar.f4193c + zVar.f4192b;
        } else if (zVar.f4191a != Long.MAX_VALUE) {
            j = zVar.f4191a;
        }
        qVar.a(j, 1, b2, 0, null);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.z
    public final void a(z zVar, i iVar, ah.d dVar) {
        this.f3151a = zVar;
        dVar.a();
        q a2 = iVar.a(dVar.b(), 4);
        this.f3152b = a2;
        a2.a(Format.createSampleFormat(dVar.c(), "application/x-scte35", null, -1, null));
    }
}
