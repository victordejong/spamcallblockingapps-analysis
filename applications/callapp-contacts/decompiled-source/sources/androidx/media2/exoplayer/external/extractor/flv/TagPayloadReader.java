package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader.class */
abstract class TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    protected final q f3292b;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(q qVar) {
        this.f3292b = qVar;
    }

    protected abstract boolean a(p pVar) throws ParserException;

    protected abstract boolean a(p pVar, long j) throws ParserException;

    public final boolean b(p pVar, long j) throws ParserException {
        return a(pVar) && a(pVar, j);
    }
}
