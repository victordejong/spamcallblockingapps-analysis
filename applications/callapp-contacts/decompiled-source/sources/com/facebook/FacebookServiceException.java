package com.facebook;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookServiceException.class */
public class FacebookServiceException extends FacebookException {

    /* renamed from: a  reason: collision with root package name */
    public final FacebookRequestError f19369a;

    public FacebookServiceException(FacebookRequestError facebookRequestError, String str) {
        super(str);
        this.f19369a = facebookRequestError;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f19369a.getRequestStatusCode() + ", facebookErrorCode: " + this.f19369a.getErrorCode() + ", facebookErrorType: " + this.f19369a.getErrorType() + ", message: " + this.f19369a.getErrorMessage() + "}";
    }
}
