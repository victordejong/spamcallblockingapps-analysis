package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookGraphResponseException.class */
public class FacebookGraphResponseException extends FacebookException {

    /* renamed from: a */
    private final C2194n f5480a;

    public FacebookGraphResponseException(C2194n c2194n, String str) {
        super(str);
        this.f5480a = c2194n;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        C1990i m14987a = this.f5480a != null ? this.f5480a.m14987a() : null;
        StringBuilder append = new StringBuilder().append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            append.append(message);
            append.append(" ");
        }
        if (m14987a != null) {
            append.append("httpResponseCode: ").append(m14987a.m15709a()).append(", facebookErrorCode: ").append(m14987a.m15707b()).append(", facebookErrorType: ").append(m14987a.m15705d()).append(", message: ").append(m14987a.m15704e()).append("}");
        }
        return append.toString();
    }
}
