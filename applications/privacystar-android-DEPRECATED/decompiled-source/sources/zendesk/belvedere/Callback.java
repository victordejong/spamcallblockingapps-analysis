package zendesk.belvedere;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Callback.class */
public abstract class Callback<E> {
    private boolean canceled = false;

    public void cancel() {
        this.canceled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void internalSuccess(final E e) {
        if (!this.canceled) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: zendesk.belvedere.Callback.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    Callback.this.success(e);
                }
            });
        }
    }

    public abstract void success(E e);
}
