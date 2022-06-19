package okhttp3.internal.http2;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/StreamResetException.class */
public final class StreamResetException extends IOException {

    /* renamed from: a */
    public final EnumC5486a f22881a;

    public StreamResetException(EnumC5486a enumC5486a) {
        super("stream was reset: " + enumC5486a);
        this.f22881a = enumC5486a;
    }
}
