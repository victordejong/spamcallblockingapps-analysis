package com.google.api.client.googleapis.auth.clientlogin;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.a.q;
import com.google.api.client.http.i;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/clientlogin/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public i f31731a = new i("https://www.google.com");
    @q
    public String accountType;
    @q(a = Payload.SOURCE)
    public String applicationName;
    @q(a = "service")
    public String authTokenType;
    @q(a = "logincaptcha")
    public String captchaAnswer;
    @q(a = "logintoken")
    public String captchaToken;
    @q(a = "Passwd")
    public String password;
    @q(a = "Email")
    public String username;

    /* renamed from: com.google.api.client.googleapis.auth.clientlogin.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/clientlogin/a$a.class */
    public static final class C0502a {
        @q(a = "CaptchaToken")
        public String captchaToken;
        @q(a = "CaptchaUrl")
        public String captchaUrl;
        @q(a = "Error")
        public String error;
        @q(a = "Url")
        public String url;
    }
}
