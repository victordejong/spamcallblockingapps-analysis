package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.util.C2018p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader.class */
abstract class TagPayloadReader {

    /* renamed from: b */
    protected final AbstractC1641q f6285b;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(AbstractC1641q abstractC1641q) {
        this.f6285b = abstractC1641q;
    }

    /* renamed from: a */
    protected abstract boolean mo42614a(C2018p c2018p) throws ParserException;

    /* renamed from: a */
    protected abstract boolean mo42613a(C2018p c2018p, long j) throws ParserException;

    /* renamed from: b */
    public final boolean m42626b(C2018p c2018p, long j) throws ParserException {
        return mo42614a(c2018p) && mo42613a(c2018p, j);
    }
}
