package p660rx.exceptions;
/* renamed from: rx.exceptions.OnErrorNotImplementedException */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/OnErrorNotImplementedException.class */
public class OnErrorNotImplementedException extends RuntimeException {
    public OnErrorNotImplementedException(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public OnErrorNotImplementedException(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}
