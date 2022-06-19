package okhttp3.internal.http2;

import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Listener$1.class */
class Http2Connection$Listener$1 extends Http2Connection.Listener {
    Http2Connection$Listener$1() {
    }

    public void onStream(Http2Stream http2Stream) {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }
}
