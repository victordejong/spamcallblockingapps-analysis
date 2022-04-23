package org.apache.http;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/apache/http/ConnectionClosedException.class */
public class ConnectionClosedException extends IOException {
    public ConnectionClosedException() {
        super("Connection is closed");
    }

    public ConnectionClosedException(String str) {
        super(HttpException.a(str));
    }

    public ConnectionClosedException(String str, Object... objArr) {
        super(HttpException.a(String.format(str, objArr)));
    }
}
