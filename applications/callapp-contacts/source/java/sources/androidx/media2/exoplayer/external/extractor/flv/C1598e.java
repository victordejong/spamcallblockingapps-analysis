package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.video.C2038a;
/* renamed from: androidx.media2.exoplayer.external.extractor.flv.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/e.class */
final class C1598e extends TagPayloadReader {

    /* renamed from: a */
    private final C2018p f6309a = new C2018p(C2014n.f8107a);

    /* renamed from: c */
    private final C2018p f6310c = new C2018p(4);

    /* renamed from: d */
    private int f6311d;

    /* renamed from: e */
    private boolean f6312e;

    /* renamed from: f */
    private boolean f6313f;

    /* renamed from: g */
    private int f6314g;

    public C1598e(AbstractC1641q abstractC1641q) {
        super(abstractC1641q);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42614a(C2018p c2018p) throws TagPayloadReader.UnsupportedFormatException {
        int m41534c = c2018p.m41534c();
        int i = (m41534c >> 4) & 15;
        int i2 = m41534c & 15;
        if (i2 == 7) {
            this.f6314g = i;
            return i != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42613a(C2018p c2018p, long j) throws ParserException {
        int m41534c = c2018p.m41534c();
        byte[] bArr = c2018p.f8131a;
        int i = c2018p.f8132b;
        c2018p.f8132b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = c2018p.f8131a;
        int i2 = c2018p.f8132b;
        c2018p.f8132b = i2 + 1;
        byte b2 = bArr2[i2];
        byte[] bArr3 = c2018p.f8131a;
        int i3 = c2018p.f8132b;
        c2018p.f8132b = i3 + 1;
        long j2 = (((b & 255) << 24) >> 8) | ((b2 & 255) << 8) | (bArr3[i3] & 255);
        if (m41534c == 0 && !this.f6312e) {
            C2018p c2018p2 = new C2018p(new byte[c2018p.m41536b()]);
            c2018p.m41537a(c2018p2.f8131a, 0, c2018p.m41536b());
            C2038a m41432a = C2038a.m41432a(c2018p2);
            this.f6311d = m41432a.f8221b;
            this.f6285b.mo42192a(Format.createVideoSampleFormat(null, "video/avc", null, -1, -1, m41432a.f8222c, m41432a.f8223d, -1.0f, m41432a.f8220a, -1, m41432a.f8224e, null));
            this.f6312e = true;
            return false;
        } else if (m41534c != 1 || !this.f6312e) {
            return false;
        } else {
            int i4 = this.f6314g == 1 ? 1 : 0;
            if (!this.f6313f && i4 == 0) {
                return false;
            }
            byte[] bArr4 = this.f6310c.f8131a;
            bArr4[0] = (byte) 0;
            bArr4[1] = (byte) 0;
            bArr4[2] = (byte) 0;
            int i5 = this.f6311d;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (c2018p.m41536b() <= 0) {
                    this.f6285b.mo42313a(j + (j2 * 1000), i4, i7, 0, null);
                    this.f6313f = true;
                    return true;
                }
                c2018p.m41537a(this.f6310c.f8131a, 4 - i5, this.f6311d);
                this.f6310c.m41533c(0);
                int m41519n = this.f6310c.m41519n();
                this.f6309a.m41533c(0);
                this.f6285b.mo42306a(this.f6309a, 4);
                this.f6285b.mo42306a(c2018p, m41519n);
                i6 = i7 + 4 + m41519n;
            }
        }
    }
}
