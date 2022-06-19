package com.facebook;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookDialogException.class */
public class FacebookDialogException extends FacebookException {

    /* renamed from: a */
    private int f33063a;

    /* renamed from: b */
    private String f33064b;

    public FacebookDialogException(String str, int i, String str2) {
        super(str);
        this.f33063a = i;
        this.f33064b = str2;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + this.f33063a + ", message: " + getMessage() + ", url: " + this.f33064b + "}";
    }
}
