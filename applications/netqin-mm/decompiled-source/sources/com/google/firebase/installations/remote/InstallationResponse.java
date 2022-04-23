package com.google.firebase.installations.remote;

import p131c.p161d.p282e.p335s.p337p.C5913a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse.class */
public abstract class InstallationResponse {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse$ResponseCode.class */
    public enum ResponseCode {
        OK,
        BAD_CONFIG
    }

    /* renamed from: com.google.firebase.installations.remote.InstallationResponse$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse$a.class */
    public static abstract class AbstractC7846a {
        /* renamed from: a */
        public abstract AbstractC7846a mo7285a(ResponseCode responseCode);

        /* renamed from: a */
        public abstract AbstractC7846a mo7284a(TokenResult tokenResult);

        /* renamed from: a */
        public abstract AbstractC7846a mo7283a(String str);

        /* renamed from: a */
        public abstract InstallationResponse mo7286a();

        /* renamed from: b */
        public abstract AbstractC7846a mo7282b(String str);

        /* renamed from: c */
        public abstract AbstractC7846a mo7281c(String str);
    }

    /* renamed from: f */
    public static AbstractC7846a m7287f() {
        return new C5913a.C5915b();
    }

    /* renamed from: a */
    public abstract TokenResult mo7292a();

    /* renamed from: b */
    public abstract String mo7291b();

    /* renamed from: c */
    public abstract String mo7290c();

    /* renamed from: d */
    public abstract ResponseCode mo7289d();

    /* renamed from: e */
    public abstract String mo7288e();
}
