package okhttp3.internal;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/Util$2.class */
class Util$2 implements ThreadFactory {
    final /* synthetic */ boolean val$daemon;
    final /* synthetic */ String val$name;

    Util$2(String str, boolean z) {
        this.val$name = str;
        this.val$daemon = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.val$name);
        thread.setDaemon(this.val$daemon);
        return thread;
    }
}
