package p660rx.exceptions;
/* renamed from: rx.exceptions.OnCompletedFailedException */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/OnCompletedFailedException.class */
public final class OnCompletedFailedException extends RuntimeException {
    public OnCompletedFailedException(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }
}
