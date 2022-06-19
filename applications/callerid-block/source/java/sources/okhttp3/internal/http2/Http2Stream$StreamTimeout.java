package okhttp3.internal.http2;

import java.io.IOException;
import java.net.SocketTimeoutException;
import okio.AsyncTimeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$StreamTimeout.class */
class Http2Stream$StreamTimeout extends AsyncTimeout {
    final /* synthetic */ Http2Stream this$0;

    Http2Stream$StreamTimeout(Http2Stream http2Stream) {
        this.this$0 = http2Stream;
    }

    public void exitAndThrowIfTimedOut() {
        if (!exit()) {
            return;
        }
        throw newTimeoutException(null);
    }

    protected IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    protected void timedOut() {
        this.this$0.closeLater(ErrorCode.CANCEL);
    }
}
