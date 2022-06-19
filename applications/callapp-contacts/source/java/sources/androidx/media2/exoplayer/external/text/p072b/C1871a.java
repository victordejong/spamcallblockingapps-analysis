package androidx.media2.exoplayer.external.text.p072b;

import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.p072b.C1872b;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.b.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/a.class */
public final class C1871a extends AbstractC1870b {

    /* renamed from: a */
    private final C1872b f7506a;

    public C1871a(List<byte[]> list) {
        super("DvbDecoder");
        C2018p c2018p = new C2018p(list.get(0));
        this.f7506a = new C1872b(c2018p.m41532d(), c2018p.m41532d());
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) {
        if (z) {
            C1872b.C1880h c1880h = this.f7506a.f7510a;
            c1880h.f7556c.clear();
            c1880h.f7557d.clear();
            c1880h.f7558e.clear();
            c1880h.f7559f.clear();
            c1880h.f7560g.clear();
            c1880h.f7561h = null;
            c1880h.f7562i = null;
        }
        return new C1881c(this.f7506a.m41964a(bArr, i));
    }
}
