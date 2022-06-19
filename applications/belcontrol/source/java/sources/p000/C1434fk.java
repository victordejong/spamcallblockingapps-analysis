package p000;

import androidx.media2.exoplayer.external.metadata.Metadata;
import java.io.EOFException;
import lo;
/* renamed from: fk */
/* loaded from: classes-dex2jar.jar:fk.class */
public final class C1434fk {

    /* renamed from: a */
    public final yt f6642a = new yt(10);

    /* renamed from: a */
    public Metadata m1720a(AbstractC0251bk abstractC0251bk, lo.a aVar) {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                abstractC0251bk.peekFully(this.f6642a.a, 0, 10);
                this.f6642a.J(0);
                if (this.f6642a.z() != 4801587) {
                    break;
                }
                this.f6642a.K(3);
                int v = this.f6642a.v();
                int i3 = v + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f6642a.a, 0, bArr, 0, 10);
                    abstractC0251bk.peekFully(bArr, 10, v);
                    metadata = new lo(aVar).c(bArr, i3);
                } else {
                    abstractC0251bk.advancePeekPosition(v);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        abstractC0251bk.resetPeekPosition();
        abstractC0251bk.advancePeekPosition(i);
        return metadata;
    }
}
