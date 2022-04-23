package okhttp3;

import c.i;
import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¨\u0006\u0016"}, d2 = {"Lokhttp3/WebSocketListener;", "", "()V", "onClosed", "", "webSocket", "Lokhttp3/WebSocket;", "code", "", "reason", "", "onClosing", "onFailure", "t", "", Payload.RESPONSE, "Lokhttp3/Response;", "onMessage", "text", "bytes", "Lokio/ByteString;", "onOpen", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/WebSocketListener.class */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i, String reason) {
        p.d(webSocket, "webSocket");
        p.d(reason, "reason");
    }

    public void onClosing(WebSocket webSocket, int i, String reason) {
        p.d(webSocket, "webSocket");
        p.d(reason, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable t, Response response) {
        p.d(webSocket, "webSocket");
        p.d(t, "t");
    }

    public void onMessage(WebSocket webSocket, i bytes) {
        p.d(webSocket, "webSocket");
        p.d(bytes, "bytes");
    }

    public void onMessage(WebSocket webSocket, String text) {
        p.d(webSocket, "webSocket");
        p.d(text, "text");
    }

    public void onOpen(WebSocket webSocket, Response response) {
        p.d(webSocket, "webSocket");
        p.d(response, "response");
    }
}
