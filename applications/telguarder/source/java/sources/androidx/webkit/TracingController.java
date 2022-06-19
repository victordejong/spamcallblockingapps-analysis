package androidx.webkit;

import androidx.webkit.internal.TracingControllerImpl;
import java.io.OutputStream;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/webkit/TracingController.class */
public abstract class TracingController {

    /* loaded from: classes-dex2jar.jar:androidx/webkit/TracingController$LAZY_HOLDER.class */
    private static class LAZY_HOLDER {
        static final TracingController INSTANCE = new TracingControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static TracingController getInstance() {
        return LAZY_HOLDER.INSTANCE;
    }

    public abstract boolean isTracing();

    public abstract void start(TracingConfig tracingConfig);

    public abstract boolean stop(OutputStream outputStream, Executor executor);
}
