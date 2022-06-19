package com.facebook;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookGraphResponseException.class */
public class FacebookGraphResponseException extends FacebookException {

    /* renamed from: a */
    private final C10351j f33067a;

    public FacebookGraphResponseException(C10351j c10351j, String str) {
        super(str);
        this.f33067a = c10351j;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        C10351j c10351j = this.f33067a;
        FacebookRequestError facebookRequestError = c10351j != null ? c10351j.f33960b : null;
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
