package okhttp3.internal.http2;

import java.io.IOException;
import p007a6.C0033h;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/StreamResetException.class */
public final class StreamResetException extends IOException {

    /* renamed from: a */
    public final int f12490a;

    public StreamResetException(int i) {
        super("stream was reset: " + C0033h.m8879r(i));
        this.f12490a = i;
    }
}
