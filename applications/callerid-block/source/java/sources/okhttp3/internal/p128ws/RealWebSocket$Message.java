package okhttp3.internal.p128ws;

import okio.ByteString;
/* renamed from: okhttp3.internal.ws.RealWebSocket$Message */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/RealWebSocket$Message.class */
final class RealWebSocket$Message {
    final ByteString data;
    final int formatOpcode;

    RealWebSocket$Message(int i, ByteString byteString) {
        this.formatOpcode = i;
        this.data = byteString;
    }
}
