package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookDialogException.class */
public class FacebookDialogException extends FacebookException {

    /* renamed from: a */
    private int f5476a;

    /* renamed from: b */
    private String f5477b;

    public FacebookDialogException(String str, int i, String str2) {
        super(str);
        this.f5476a = i;
        this.f5477b = str2;
    }

    /* renamed from: a */
    public int m16262a() {
        return this.f5476a;
    }

    /* renamed from: b */
    public String m16261b() {
        return this.f5477b;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + m16262a() + ", message: " + getMessage() + ", url: " + m16261b() + "}";
    }
}
