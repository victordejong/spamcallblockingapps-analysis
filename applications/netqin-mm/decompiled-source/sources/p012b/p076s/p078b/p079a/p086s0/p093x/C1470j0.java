package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
import p012b.p076s.p078b.p079a.p107x0.p108c.C1649b;
/* renamed from: b.s.b.a.s0.x.j0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/j0.class */
public final class C1470j0 {

    /* renamed from: a */
    public final List<Format> f5940a;

    /* renamed from: b */
    public final AbstractC1362q[] f5941b;

    public C1470j0(List<Format> list) {
        this.f5940a = list;
        this.f5941b = new AbstractC1362q[list.size()];
    }

    /* renamed from: a */
    public void m33216a(long j, C1184p pVar) {
        if (pVar.m34372a() >= 9) {
            int f = pVar.m34357f();
            int f2 = pVar.m34357f();
            int r = pVar.m34344r();
            if (f == 434 && f2 == 1195456820 && r == 3) {
                C1649b.m32487b(j, pVar, this.f5941b);
            }
        }
    }

    /* renamed from: a */
    public void m33215a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        for (int i = 0; i < this.f5941b.length; i++) {
            dVar.m33246a();
            AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 3);
            Format format = this.f5940a.get(i);
            String str = format.f1562i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            String valueOf = String.valueOf(str);
            C1160a.m34519a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            a.mo32623a(Format.m38179a(dVar.m33245b(), str, (String) null, -1, format.f1556c, format.f1551A, format.f1552B, (DrmInitData) null, Long.MAX_VALUE, format.f1564k));
            this.f5941b[i] = a;
        }
    }
}
