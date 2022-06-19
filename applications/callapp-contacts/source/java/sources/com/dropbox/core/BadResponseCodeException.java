package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/BadResponseCodeException.class */
public class BadResponseCodeException extends BadResponseException {

    /* renamed from: a */
    private final int f30408a;

    public BadResponseCodeException(String str, String str2, int i) {
        super(str, str2);
        this.f30408a = i;
    }

    public BadResponseCodeException(String str, String str2, int i, Throwable th) {
        super(str, str2, th);
        this.f30408a = i;
    }
}
