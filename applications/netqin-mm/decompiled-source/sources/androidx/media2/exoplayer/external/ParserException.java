package androidx.media2.exoplayer.external;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ParserException.class */
public class ParserException extends IOException {
    public ParserException() {
    }

    public ParserException(String str) {
        super(str);
    }

    public ParserException(String str, Throwable th) {
        super(str, th);
    }

    public ParserException(Throwable th) {
        super(th);
    }
}
