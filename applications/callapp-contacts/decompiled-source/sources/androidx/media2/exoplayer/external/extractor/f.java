package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f.class */
public final class f implements q {
    @Override // androidx.media2.exoplayer.external.extractor.q
    public final int a(h hVar, int i, boolean z) throws IOException, InterruptedException {
        int a2 = hVar.a(i);
        if (a2 != -1) {
            return a2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final void a(long j, int i, int i2, int i3, q.a aVar) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final void a(Format format) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final void a(p pVar, int i) {
        pVar.d(i);
    }
}
