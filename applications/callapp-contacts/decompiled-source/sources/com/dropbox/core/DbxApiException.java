package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxApiException.class */
public class DbxApiException extends DbxException {

    /* renamed from: a  reason: collision with root package name */
    private final n f17679a;

    public DbxApiException(String str, n nVar, String str2) {
        super(str, str2);
        this.f17679a = nVar;
    }

    public DbxApiException(String str, n nVar, String str2, Throwable th) {
        super(str, str2, th);
        this.f17679a = nVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str, n nVar, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("Exception in ");
        sb.append(str);
        if (obj != null) {
            sb.append(": ");
            sb.append(obj);
        }
        if (nVar != null) {
            sb.append(" (user message: ");
            sb.append(nVar);
            sb.append(")");
        }
        return sb.toString();
    }
}
