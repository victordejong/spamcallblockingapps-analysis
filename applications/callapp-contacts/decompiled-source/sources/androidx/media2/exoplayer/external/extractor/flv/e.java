package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.video.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/e.class */
final class e extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    private final p f3302a = new p(n.f4151a);

    /* renamed from: c  reason: collision with root package name */
    private final p f3303c = new p(4);

    /* renamed from: d  reason: collision with root package name */
    private int f3304d;
    private boolean e;
    private boolean f;
    private int g;

    public e(q qVar) {
        super(qVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar) throws TagPayloadReader.UnsupportedFormatException {
        int c2 = pVar.c();
        int i = (c2 >> 4) & 15;
        int i2 = c2 & 15;
        if (i2 == 7) {
            this.g = i;
            return i != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar, long j) throws ParserException {
        int c2 = pVar.c();
        byte[] bArr = pVar.f4166a;
        int i = pVar.f4167b;
        pVar.f4167b = i + 1;
        byte b2 = bArr[i];
        byte[] bArr2 = pVar.f4166a;
        int i2 = pVar.f4167b;
        pVar.f4167b = i2 + 1;
        byte b3 = bArr2[i2];
        byte[] bArr3 = pVar.f4166a;
        int i3 = pVar.f4167b;
        pVar.f4167b = i3 + 1;
        long j2 = (((b2 & 255) << 24) >> 8) | ((b3 & 255) << 8) | (bArr3[i3] & 255);
        if (c2 == 0 && !this.e) {
            p pVar2 = new p(new byte[pVar.b()]);
            pVar.a(pVar2.f4166a, 0, pVar.b());
            a a2 = a.a(pVar2);
            this.f3304d = a2.f4210b;
            this.f3292b.a(Format.createVideoSampleFormat(null, "video/avc", null, -1, -1, a2.f4211c, a2.f4212d, -1.0f, a2.f4209a, -1, a2.e, null));
            this.e = true;
            return false;
        } else if (c2 != 1 || !this.e) {
            return false;
        } else {
            int i4 = this.g == 1 ? 1 : 0;
            if (!this.f && i4 == 0) {
                return false;
            }
            byte[] bArr4 = this.f3303c.f4166a;
            bArr4[0] = (byte) 0;
            bArr4[1] = (byte) 0;
            bArr4[2] = (byte) 0;
            int i5 = this.f3304d;
            int i6 = 0;
            while (pVar.b() > 0) {
                pVar.a(this.f3303c.f4166a, 4 - i5, this.f3304d);
                this.f3303c.c(0);
                int n = this.f3303c.n();
                this.f3302a.c(0);
                this.f3292b.a(this.f3302a, 4);
                this.f3292b.a(pVar, n);
                i6 = i6 + 4 + n;
            }
            this.f3292b.a(j + (j2 * 1000), i4, i6, 0, null);
            this.f = true;
            return true;
        }
    }
}
