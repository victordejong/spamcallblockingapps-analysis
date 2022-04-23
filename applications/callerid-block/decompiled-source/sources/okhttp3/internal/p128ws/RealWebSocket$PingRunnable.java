package okhttp3.internal.p128ws;
/* renamed from: okhttp3.internal.ws.RealWebSocket$PingRunnable */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/RealWebSocket$PingRunnable.class */
final class RealWebSocket$PingRunnable implements Runnable {
    final /* synthetic */ RealWebSocket this$0;

    RealWebSocket$PingRunnable(RealWebSocket realWebSocket) {
        this.this$0 = realWebSocket;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.writePingFrame();
    }
}
