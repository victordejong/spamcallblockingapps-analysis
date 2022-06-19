package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxException.class */
public class DbxException extends Exception {

    /* renamed from: a */
    private final String f30410a;

    public DbxException(String str) {
        this((String) null, str);
    }

    public DbxException(String str, String str2) {
        super(str2);
        this.f30410a = str;
    }

    public DbxException(String str, String str2, Throwable th) {
        super(str2, th);
        this.f30410a = str;
    }

    public DbxException(String str, Throwable th) {
        this(null, str, th);
    }
}
