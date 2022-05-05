package zendesk.commonui;

import android.os.Handler;
import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/Timer.class */
public class Timer {
    private final Handler handler;
    private final Runnable runnable;
    private final int timeout;
    private boolean isEnabled = true;
    private boolean isCompleted = false;

    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/Timer$Factory.class */
    public static class Factory {
        private final Handler handler;

        public Factory(@NonNull Handler handler) {
            this.handler = handler;
        }

        public Timer create(@NonNull Runnable runnable, int i) {
            return new Timer(this.handler, runnable, i);
        }
    }

    Timer(@NonNull Handler handler, @NonNull final Runnable runnable, int i) {
        this.handler = handler;
        this.runnable = new Runnable() { // from class: zendesk.commonui.Timer.1
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                Timer.this.isCompleted = true;
            }
        };
        this.timeout = i;
    }

    public void disable() {
        this.handler.removeCallbacks(this.runnable);
        this.isEnabled = false;
    }

    public void start() {
        if (this.isEnabled && !this.isCompleted) {
            this.handler.removeCallbacks(this.runnable);
            this.handler.postDelayed(this.runnable, this.timeout);
        }
    }
}
