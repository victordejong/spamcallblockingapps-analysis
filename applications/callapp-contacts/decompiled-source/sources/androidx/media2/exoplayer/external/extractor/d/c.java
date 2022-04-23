package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/c.class */
public final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3091a = d.f3095a;

    /* renamed from: b  reason: collision with root package name */
    private i f3092b;

    /* renamed from: c  reason: collision with root package name */
    private i f3093c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3094d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new c()};
    }

    private boolean b(h hVar) throws IOException, InterruptedException {
        f fVar = new f();
        if (!fVar.a(hVar, true) || (fVar.f3101b & 2) != 2) {
            return false;
        }
        int min = Math.min(fVar.i, 8);
        p pVar = new p(min);
        hVar.c(pVar.f4166a, 0, min);
        pVar.c(0);
        if (b.a(pVar)) {
            this.f3093c = new b();
            return true;
        }
        pVar.c(0);
        if (k.a(pVar)) {
            this.f3093c = new k();
            return true;
        }
        pVar.c(0);
        if (!h.a(pVar)) {
            return false;
        }
        this.f3093c = new h();
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        if (this.f3093c == null) {
            if (b(hVar)) {
                hVar.a();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f3094d) {
            q a2 = this.f3092b.a(0, 1);
            this.f3092b.a();
            this.f3093c.a(this.f3092b, a2);
            this.f3094d = true;
        }
        i iVar = this.f3093c;
        int i = iVar.f3108c;
        if (i == 0) {
            return iVar.a(hVar);
        }
        if (i == 1) {
            hVar.b((int) iVar.f3107b);
            iVar.f3108c = 2;
            return 0;
        } else if (i == 2) {
            return iVar.a(hVar, nVar);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        i iVar = this.f3093c;
        if (iVar != null) {
            iVar.a(j, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.f3092b = iVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        try {
            return b(hVar);
        } catch (ParserException e) {
            return false;
        }
    }
}
