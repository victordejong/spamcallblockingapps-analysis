package org.jsoup;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/jsoup/UncheckedIOException.class */
public class UncheckedIOException extends RuntimeException {
    public UncheckedIOException(IOException iOException) {
        super(iOException);
    }

    public UncheckedIOException(String str) {
        super(new IOException(str));
    }
}
