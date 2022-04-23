package com.facebook;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookDialogException.class */
public class FacebookDialogException extends FacebookException {

    /* renamed from: a  reason: collision with root package name */
    private int f19362a;

    /* renamed from: b  reason: collision with root package name */
    private String f19363b;

    public FacebookDialogException(String str, int i, String str2) {
        super(str);
        this.f19362a = i;
        this.f19363b = str2;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + this.f19362a + ", message: " + getMessage() + ", url: " + this.f19363b + "}";
    }
}
