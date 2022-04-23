package zendesk.suas;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Executors.class */
class Executors {

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/Executors$AndroidExecutor.class */
    public static class AndroidExecutor implements Executor {
        private final Handler handler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnable.run();
            } else {
                this.handler.post(runnable);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/Executors$DefaultCurrentThreadExecutor.class */
    public static class DefaultCurrentThreadExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    Executors() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor getAndroidExecutor() {
        return new AndroidExecutor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor getDefaultExecutor() {
        return new DefaultCurrentThreadExecutor();
    }
}
