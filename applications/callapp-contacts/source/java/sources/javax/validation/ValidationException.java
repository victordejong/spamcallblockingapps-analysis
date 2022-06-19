package javax.validation;
/* loaded from: classes5-dex2jar.jar:javax/validation/ValidationException.class */
public class ValidationException extends RuntimeException {
    public ValidationException() {
    }

    public ValidationException(String str) {
        super(str);
    }

    public ValidationException(String str, Throwable th) {
        super(str, th);
    }

    public ValidationException(Throwable th) {
        super(th);
    }
}
