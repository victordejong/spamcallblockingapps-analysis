package org.apache.http;
/* loaded from: classes5-dex2jar.jar:org/apache/http/TruncatedChunkException.class */
public class TruncatedChunkException extends MalformedChunkCodingException {
    public TruncatedChunkException(String str) {
        super(str);
    }

    public TruncatedChunkException(String str, Object... objArr) {
        super(HttpException.m511a(String.format(str, objArr)));
    }
}
