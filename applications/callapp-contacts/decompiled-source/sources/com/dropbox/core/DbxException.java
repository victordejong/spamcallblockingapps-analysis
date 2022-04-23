package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxException.class */
public class DbxException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final String f17680a;

    public DbxException(String str) {
        this((String) null, str);
    }

    public DbxException(String str, String str2) {
        super(str2);
        this.f17680a = str;
    }

    public DbxException(String str, String str2, Throwable th) {
        super(str2, th);
        this.f17680a = str;
    }

    public DbxException(String str, Throwable th) {
        this(null, str, th);
    }
}
