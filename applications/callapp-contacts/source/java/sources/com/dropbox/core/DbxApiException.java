package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxApiException.class */
public class DbxApiException extends DbxException {

    /* renamed from: a */
    private final C8621n f30409a;

    public DbxApiException(String str, C8621n c8621n, String str2) {
        super(str, str2);
        this.f30409a = c8621n;
    }

    public DbxApiException(String str, C8621n c8621n, String str2, Throwable th) {
        super(str, str2, th);
        this.f30409a = c8621n;
    }

    /* renamed from: a */
    public static String m25359a(String str, C8621n c8621n, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("Exception in ");
        sb.append(str);
        if (obj != null) {
            sb.append(": ");
            sb.append(obj);
        }
        if (c8621n != null) {
            sb.append(" (user message: ");
            sb.append(c8621n);
            sb.append(")");
        }
        return sb.toString();
    }
}
