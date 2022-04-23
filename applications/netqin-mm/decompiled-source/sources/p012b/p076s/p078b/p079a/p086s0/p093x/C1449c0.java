package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.c0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/c0.class */
public final class C1449c0 implements AbstractC1494z {

    /* renamed from: a */
    public C1196z f5833a;

    /* renamed from: b */
    public AbstractC1362q f5834b;

    /* renamed from: c */
    public boolean f5835c;

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
    /* renamed from: a */
    public void mo33125a(C1184p pVar) {
        if (!this.f5835c) {
            if (this.f5833a.m34291c() != -9223372036854775807L) {
                this.f5834b.mo32623a(Format.m38185a(null, "application/x-scte35", this.f5833a.m34291c()));
                this.f5835c = true;
            } else {
                return;
            }
        }
        int a = pVar.m34372a();
        this.f5834b.mo32827a(pVar, a);
        this.f5834b.mo32832a(this.f5833a.m34293b(), 1, a, 0, null);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
    /* renamed from: a */
    public void mo33124a(C1196z zVar, AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        this.f5833a = zVar;
        dVar.m33246a();
        AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 4);
        this.f5834b = a;
        a.mo32623a(Format.m38176a(dVar.m33245b(), "application/x-scte35", (String) null, -1, (DrmInitData) null));
    }
}
