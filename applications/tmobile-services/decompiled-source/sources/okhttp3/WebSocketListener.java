package okhttp3;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018��B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ'\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ)\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0012\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lokhttp3/WebSocketListener;", "Lokhttp3/WebSocket;", "webSocket", "", "code", "", "reason", "", "onClosed", "(Lokhttp3/WebSocket;ILjava/lang/String;)V", "onClosing", "", "t", "Lokhttp3/Response;", "response", "onFailure", "(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V", "text", "onMessage", "(Lokhttp3/WebSocket;Ljava/lang/String;)V", "Lokio/ByteString;", "bytes", "(Lokhttp3/WebSocket;Lokio/ByteString;)V", "onOpen", "(Lokhttp3/WebSocket;Lokhttp3/Response;)V", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/WebSocketListener.class */
public abstract class WebSocketListener {
    public void onClosed(@NotNull WebSocket webSocket, int i, @NotNull String reason) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(reason, "reason");
    }

    public void onClosing(@NotNull WebSocket webSocket, int i, @NotNull String reason) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(reason, "reason");
    }

    public void onFailure(@NotNull WebSocket webSocket, @NotNull Throwable t, @Nullable Response response) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(t, "t");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull String text) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(text, "text");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull ByteString bytes) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(bytes, "bytes");
    }

    public void onOpen(@NotNull WebSocket webSocket, @NotNull Response response) {
        Intrinsics.m1830e(webSocket, "webSocket");
        Intrinsics.m1830e(response, "response");
    }
}
