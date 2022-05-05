package p660rx.plugins;

import p660rx.exceptions.Exceptions;
/* renamed from: rx.plugins.RxJavaErrorHandler */
/* loaded from: classes3-dex2jar.jar:rx/plugins/RxJavaErrorHandler.class */
public abstract class RxJavaErrorHandler {
    @Deprecated
    public void handleError(Throwable th) {
    }

    public final String handleOnNextValueRendering(Object obj) {
        try {
            return render(obj);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return obj.getClass().getName() + ".errorRendering";
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            return obj.getClass().getName() + ".errorRendering";
        }
    }

    public String render(Object obj) throws InterruptedException {
        return null;
    }
}
