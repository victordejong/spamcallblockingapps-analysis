package org.apache.commons.lang3.exception;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/CloneFailedException.class */
public class CloneFailedException extends RuntimeException {
    public CloneFailedException(String str) {
        super(str);
    }

    public CloneFailedException(String str, Throwable th) {
        super(str, th);
    }

    public CloneFailedException(Throwable th) {
        super(th);
    }
}
