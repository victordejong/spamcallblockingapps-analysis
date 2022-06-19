package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f.class */
public final class C1588f implements AbstractC1641q {
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final int mo42308a(AbstractC1600h abstractC1600h, int i, boolean z) throws IOException, InterruptedException {
        int mo42611a = abstractC1600h.mo42611a(i);
        if (mo42611a == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return mo42611a;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final void mo42313a(long j, int i, int i2, int i3, AbstractC1641q.C1642a c1642a) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final void mo42192a(Format format) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final void mo42306a(C2018p c2018p, int i) {
        c2018p.m41531d(i);
    }
}
