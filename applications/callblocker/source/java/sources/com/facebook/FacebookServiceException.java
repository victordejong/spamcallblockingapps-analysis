package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookServiceException.class */
public class FacebookServiceException extends FacebookException {

    /* renamed from: a */
    private final C1990i f5481a;

    public FacebookServiceException(C1990i c1990i, String str) {
        super(str);
        this.f5481a = c1990i;
    }

    /* renamed from: a */
    public final C1990i m16260a() {
        return this.f5481a;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f5481a.m15709a() + ", facebookErrorCode: " + this.f5481a.m15707b() + ", facebookErrorType: " + this.f5481a.m15705d() + ", message: " + this.f5481a.m15704e() + "}";
    }
}
