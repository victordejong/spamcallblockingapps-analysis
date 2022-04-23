package com.facebook;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookGraphResponseException.class */
public class FacebookGraphResponseException extends FacebookException {

    /* renamed from: a  reason: collision with root package name */
    private final j f19366a;

    public FacebookGraphResponseException(j jVar, String str) {
        super(str);
        this.f19366a = jVar;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        j jVar = this.f19366a;
        FacebookRequestError facebookRequestError = jVar != null ? jVar.f20037b : null;
        StringBuilder sb = new StringBuilder("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(StringUtils.SPACE);
        }
        if (facebookRequestError != null) {
            sb.append("httpResponseCode: ");
            sb.append(facebookRequestError.getRequestStatusCode());
            sb.append(", facebookErrorCode: ");
            sb.append(facebookRequestError.getErrorCode());
            sb.append(", facebookErrorType: ");
            sb.append(facebookRequestError.getErrorType());
            sb.append(", message: ");
            sb.append(facebookRequestError.getErrorMessage());
            sb.append("}");
        }
        return sb.toString();
    }
}
