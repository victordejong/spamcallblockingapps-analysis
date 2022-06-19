package org.apache.http;

import java.nio.charset.CharacterCodingException;
/* loaded from: classes5-dex2jar.jar:org/apache/http/MessageConstraintException.class */
public class MessageConstraintException extends CharacterCodingException {

    /* renamed from: a */
    private final String f67279a;

    public MessageConstraintException(String str) {
        this.f67279a = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f67279a;
    }
}
