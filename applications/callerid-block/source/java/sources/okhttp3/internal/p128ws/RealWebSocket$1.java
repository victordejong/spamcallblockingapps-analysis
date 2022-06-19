package okhttp3.internal.p128ws;

import java.io.IOException;
import okhttp3.Response;
/* renamed from: okhttp3.internal.ws.RealWebSocket$1 */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/RealWebSocket$1.class */
class RealWebSocket$1 implements Runnable {
    final /* synthetic */ RealWebSocket this$0;

    RealWebSocket$1(RealWebSocket realWebSocket) {
        this.this$0 = realWebSocket;
    }

    @Override // java.lang.Runnable
    public void run() {
        do {
            try {
            } catch (IOException e) {
                this.this$0.failWebSocket(e, (Response) null);
                return;
            }
        } while (this.this$0.writeOneFrame());
    }
}
