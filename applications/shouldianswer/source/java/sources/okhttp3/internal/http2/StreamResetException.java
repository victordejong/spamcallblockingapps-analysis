package okhttp3.internal.http2;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/StreamResetException.class */
public final class StreamResetException extends IOException {

    /* renamed from: a */
    public final EnumC2036a f5107a;

    public StreamResetException(EnumC2036a enumC2036a) {
        super("stream was reset: " + enumC2036a);
        this.f5107a = enumC2036a;
    }
}
