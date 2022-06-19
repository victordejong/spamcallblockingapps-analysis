package com.facebook;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookServiceException.class */
public class FacebookServiceException extends FacebookException {

    /* renamed from: a */
    public final FacebookRequestError f33070a;

    public FacebookServiceException(FacebookRequestError facebookRequestError, String str) {
        super(str);
        this.f33070a = facebookRequestError;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f33070a.getRequestStatusCode() + ", facebookErrorCode: " + this.f33070a.getErrorCode() + ", facebookErrorType: " + this.f33070a.getErrorType() + ", message: " + this.f33070a.getErrorMessage() + "}";
    }
}
