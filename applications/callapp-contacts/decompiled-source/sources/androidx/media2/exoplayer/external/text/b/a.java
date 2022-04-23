package androidx.media2.exoplayer.external.text.b;

import androidx.media2.exoplayer.external.text.b;
import androidx.media2.exoplayer.external.text.b.b;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.p;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final b f3817a;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        p pVar = new p(list.get(0));
        this.f3817a = new b(pVar.d(), pVar.d());
    }

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) {
        if (z) {
            b.h hVar = this.f3817a.f3821a;
            hVar.f3850c.clear();
            hVar.f3851d.clear();
            hVar.e.clear();
            hVar.f.clear();
            hVar.g.clear();
            hVar.h = null;
            hVar.i = null;
        }
        return new c(this.f3817a.a(bArr, i));
    }
}
