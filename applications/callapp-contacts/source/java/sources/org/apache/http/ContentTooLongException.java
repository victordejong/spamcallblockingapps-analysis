package org.apache.http;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/apache/http/ContentTooLongException.class */
public class ContentTooLongException extends IOException {
    public ContentTooLongException(String str) {
        super(str);
    }

    public ContentTooLongException(String str, Object... objArr) {
        super(HttpException.m511a(String.format(str, objArr)));
    }
}
