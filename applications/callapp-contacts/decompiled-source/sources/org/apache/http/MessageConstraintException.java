package org.apache.http;

import java.nio.charset.CharacterCodingException;
/* loaded from: classes5-dex2jar.jar:org/apache/http/MessageConstraintException.class */
public class MessageConstraintException extends CharacterCodingException {

    /* renamed from: a  reason: collision with root package name */
    private final String f39189a;

    public MessageConstraintException(String str) {
        this.f39189a = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f39189a;
    }
}
