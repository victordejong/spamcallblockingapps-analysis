package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.C1693a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/l.class */
public final class C1604l {

    /* renamed from: a */
    private final C2018p f6318a = new C2018p(10);

    /* renamed from: a */
    public final Metadata m42596a(AbstractC1600h abstractC1600h, C1693a.AbstractC1694a abstractC1694a) throws IOException, InterruptedException {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                abstractC1600h.mo42601c(this.f6318a.f8131a, 0, 10);
                this.f6318a.m41533c(0);
                if (this.f6318a.m41528f() != 4801587) {
                    break;
                }
                this.f6318a.m41531d(3);
                int m41520m = this.f6318a.m41520m();
                int i3 = m41520m + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f6318a.f8131a, 0, bArr, 0, 10);
                    abstractC1600h.mo42601c(bArr, 10, m41520m);
                    metadata = new C1693a(abstractC1694a).m42393a(bArr, i3);
                } else {
                    abstractC1600h.mo42602c(m41520m);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        abstractC1600h.mo42612a();
        abstractC1600h.mo42602c(i);
        return metadata;
    }
}
