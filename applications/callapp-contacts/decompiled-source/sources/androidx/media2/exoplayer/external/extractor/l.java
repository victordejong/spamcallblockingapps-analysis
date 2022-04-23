package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.a;
import androidx.media2.exoplayer.external.util.p;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final p f3308a = new p(10);

    public final Metadata a(h hVar, a.AbstractC0083a aVar) throws IOException, InterruptedException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                hVar.c(this.f3308a.f4166a, 0, 10);
                this.f3308a.c(0);
                if (this.f3308a.f() != 4801587) {
                    break;
                }
                this.f3308a.d(3);
                int m = this.f3308a.m();
                int i2 = m + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f3308a.f4166a, 0, bArr, 0, 10);
                    hVar.c(bArr, 10, m);
                    metadata = new a(aVar).a(bArr, i2);
                } else {
                    hVar.c(m);
                }
                i += i2;
            } catch (EOFException e) {
            }
        }
        hVar.a();
        hVar.c(i);
        return metadata;
    }
}
