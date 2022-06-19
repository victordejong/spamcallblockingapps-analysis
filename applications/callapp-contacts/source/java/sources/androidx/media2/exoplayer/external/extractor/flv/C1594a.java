package androidx.media2.exoplayer.external.extractor.flv;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import androidx.media2.exoplayer.external.util.C2000c;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.Collections;
/* renamed from: androidx.media2.exoplayer.external.extractor.flv.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/a.class */
final class C1594a extends TagPayloadReader {

    /* renamed from: a */
    private static final int[] f6286a = {5512, 11025, 22050, 44100};

    /* renamed from: c */
    private boolean f6287c;

    /* renamed from: d */
    private boolean f6288d;

    /* renamed from: e */
    private int f6289e;

    public C1594a(AbstractC1641q abstractC1641q) {
        super(abstractC1641q);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42614a(C2018p c2018p) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f6287c) {
            c2018p.m41531d(1);
            return true;
        }
        int m41534c = c2018p.m41534c();
        int i = (m41534c >> 4) & 15;
        this.f6289e = i;
        if (i == 2) {
            this.f6285b.mo42192a(Format.createAudioSampleFormat(null, "audio/mpeg", null, -1, -1, 1, f6286a[(m41534c >> 2) & 3], null, null, 0, null));
            this.f6288d = true;
        } else if (i == 7 || i == 8) {
            this.f6285b.mo42192a(Format.createAudioSampleFormat(null, i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, 8000, (m41534c & 1) == 1 ? 2 : 3, null, null, 0, null));
            this.f6288d = true;
        } else if (i != 10) {
            int i2 = this.f6289e;
            StringBuilder sb = new StringBuilder(39);
            sb.append("Audio format not supported: ");
            sb.append(i2);
            throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
        }
        this.f6287c = true;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo42613a(C2018p c2018p, long j) throws ParserException {
        if (this.f6289e == 2) {
            int m41536b = c2018p.m41536b();
            this.f6285b.mo42306a(c2018p, m41536b);
            this.f6285b.mo42313a(j, 1, m41536b, 0, null);
            return true;
        }
        int m41534c = c2018p.m41534c();
        if (m41534c != 0 || this.f6288d) {
            if (this.f6289e == 10 && m41534c != 1) {
                return false;
            }
            int m41536b2 = c2018p.m41536b();
            this.f6285b.mo42306a(c2018p, m41536b2);
            this.f6285b.mo42313a(j, 1, m41536b2, 0, null);
            return true;
        }
        int m41536b3 = c2018p.m41536b();
        byte[] bArr = new byte[m41536b3];
        c2018p.m41537a(bArr, 0, m41536b3);
        Pair<Integer, Integer> m41603a = C2000c.m41603a(bArr);
        this.f6285b.mo42192a(Format.createAudioSampleFormat(null, "audio/mp4a-latm", null, -1, -1, ((Integer) m41603a.second).intValue(), ((Integer) m41603a.first).intValue(), Collections.singletonList(bArr), null, 0, null));
        this.f6288d = true;
        return false;
    }
}
