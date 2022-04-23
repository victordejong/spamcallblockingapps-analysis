package androidx.media2.exoplayer.external.extractor.flv;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.c;
import androidx.media2.exoplayer.external.util.p;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/a.class */
final class a extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3293a = {5512, 11025, 22050, 44100};

    /* renamed from: c  reason: collision with root package name */
    private boolean f3294c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3295d;
    private int e;

    public a(q qVar) {
        super(qVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f3294c) {
            int c2 = pVar.c();
            int i = (c2 >> 4) & 15;
            this.e = i;
            if (i == 2) {
                this.f3292b.a(Format.createAudioSampleFormat(null, "audio/mpeg", null, -1, -1, 1, f3293a[(c2 >> 2) & 3], null, null, 0, null));
                this.f3295d = true;
            } else if (i == 7 || i == 8) {
                this.f3292b.a(Format.createAudioSampleFormat(null, i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, 8000, (c2 & 1) == 1 ? 2 : 3, null, null, 0, null));
                this.f3295d = true;
            } else if (i != 10) {
                int i2 = this.e;
                StringBuilder sb = new StringBuilder(39);
                sb.append("Audio format not supported: ");
                sb.append(i2);
                throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
            }
            this.f3294c = true;
            return true;
        }
        pVar.d(1);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    protected final boolean a(p pVar, long j) throws ParserException {
        if (this.e == 2) {
            int b2 = pVar.b();
            this.f3292b.a(pVar, b2);
            this.f3292b.a(j, 1, b2, 0, null);
            return true;
        }
        int c2 = pVar.c();
        if (c2 == 0 && !this.f3295d) {
            int b3 = pVar.b();
            byte[] bArr = new byte[b3];
            pVar.a(bArr, 0, b3);
            Pair<Integer, Integer> a2 = c.a(bArr);
            this.f3292b.a(Format.createAudioSampleFormat(null, "audio/mp4a-latm", null, -1, -1, ((Integer) a2.second).intValue(), ((Integer) a2.first).intValue(), Collections.singletonList(bArr), null, 0, null));
            this.f3295d = true;
            return false;
        } else if (this.e == 10 && c2 != 1) {
            return false;
        } else {
            int b4 = pVar.b();
            this.f3292b.a(pVar, b4);
            this.f3292b.a(j, 1, b4, 0, null);
            return true;
        }
    }
}
