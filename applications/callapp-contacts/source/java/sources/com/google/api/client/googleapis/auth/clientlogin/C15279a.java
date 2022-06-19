package com.google.api.client.googleapis.auth.clientlogin;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.http.C15330i;
import com.google.api.client.p379a.AbstractC15247q;
/* renamed from: com.google.api.client.googleapis.auth.clientlogin.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/clientlogin/a.class */
public final class C15279a {

    /* renamed from: a */
    public C15330i f55236a = new C15330i("https://www.google.com");
    @AbstractC15247q
    public String accountType;
    @AbstractC15247q(m9209a = Payload.SOURCE)
    public String applicationName;
    @AbstractC15247q(m9209a = "service")
    public String authTokenType;
    @AbstractC15247q(m9209a = "logincaptcha")
    public String captchaAnswer;
    @AbstractC15247q(m9209a = "logintoken")
    public String captchaToken;
    @AbstractC15247q(m9209a = "Passwd")
    public String password;
    @AbstractC15247q(m9209a = "Email")
    public String username;

    /* renamed from: com.google.api.client.googleapis.auth.clientlogin.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/clientlogin/a$a.class */
    public static final class C15280a {
        @AbstractC15247q(m9209a = "CaptchaToken")
        public String captchaToken;
        @AbstractC15247q(m9209a = "CaptchaUrl")
        public String captchaUrl;
        @AbstractC15247q(m9209a = "Error")
        public String error;
        @AbstractC15247q(m9209a = "Url")
        public String url;
    }
}
