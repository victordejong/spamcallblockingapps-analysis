package okhttp3.internal.p128ws;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
/* renamed from: okhttp3.internal.ws.RealWebSocket$2 */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/RealWebSocket$2.class */
class RealWebSocket$2 implements Callback {
    final /* synthetic */ RealWebSocket this$0;
    final /* synthetic */ Request val$request;

    RealWebSocket$2(RealWebSocket realWebSocket, Request request) {
        this.this$0 = realWebSocket;
        this.val$request = request;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        this.this$0.failWebSocket(iOException, (Response) null);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        try {
            this.this$0.checkResponse(response);
            StreamAllocation streamAllocation = Internal.instance.streamAllocation(call);
            streamAllocation.noNewStreams();
            RealWebSocket$Streams newWebSocketStreams = streamAllocation.connection().newWebSocketStreams(streamAllocation);
            try {
                RealWebSocket realWebSocket = this.this$0;
                realWebSocket.listener.onOpen(realWebSocket, response);
                this.this$0.initReaderAndWriter("OkHttp WebSocket " + this.val$request.url().redact(), newWebSocketStreams);
                streamAllocation.connection().socket().setSoTimeout(0);
                this.this$0.loopReader();
            } catch (Exception e) {
                this.this$0.failWebSocket(e, (Response) null);
            }
        } catch (ProtocolException e2) {
            this.this$0.failWebSocket(e2, response);
            Util.closeQuietly(response);
        }
    }
}
