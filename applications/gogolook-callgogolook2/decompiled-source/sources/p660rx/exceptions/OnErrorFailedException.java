package p660rx.exceptions;
/* renamed from: rx.exceptions.OnErrorFailedException */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/OnErrorFailedException.class */
public class OnErrorFailedException extends RuntimeException {
    public OnErrorFailedException(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public OnErrorFailedException(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}
