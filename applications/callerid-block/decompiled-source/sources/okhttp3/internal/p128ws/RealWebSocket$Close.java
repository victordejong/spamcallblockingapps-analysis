package okhttp3.internal.p128ws;

import okio.ByteString;
/* renamed from: okhttp3.internal.ws.RealWebSocket$Close */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/RealWebSocket$Close.class */
final class RealWebSocket$Close {
    final long cancelAfterCloseMillis;
    final int code;
    final ByteString reason;

    RealWebSocket$Close(int i, ByteString byteString, long j) {
        this.code = i;
        this.reason = byteString;
        this.cancelAfterCloseMillis = j;
    }
}
