package okhttp3;
/* loaded from: classes2-dex2jar.jar:okhttp3/ConnectionPool$1.class */
class ConnectionPool$1 implements Runnable {
    final /* synthetic */ ConnectionPool this$0;

    ConnectionPool$1(ConnectionPool connectionPool) {
        this.this$0 = connectionPool;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            long cleanup = this.this$0.cleanup(System.nanoTime());
            if (cleanup == -1) {
                return;
            }
            if (cleanup > 0) {
                long j = cleanup / 1000000;
                synchronized (this.this$0) {
                    try {
                        try {
                            this.this$0.wait(j, (int) (cleanup - (1000000 * j)));
                        } catch (InterruptedException e) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }
}
