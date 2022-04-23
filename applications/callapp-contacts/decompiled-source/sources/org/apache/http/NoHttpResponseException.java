package org.apache.http;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/apache/http/NoHttpResponseException.class */
public class NoHttpResponseException extends IOException {
    public NoHttpResponseException(String str) {
        super(HttpException.a(str));
    }
}
