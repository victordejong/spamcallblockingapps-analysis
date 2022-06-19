package com.google.firebase.installations.remote;

import com.google.auto.value.AutoValue;
import com.google.firebase.installations.remote.C9234a;
@AutoValue
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse.class */
public abstract class InstallationResponse {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse$ResponseCode.class */
    public enum ResponseCode {
        OK,
        BAD_CONFIG
    }

    @AutoValue.Builder
    /* renamed from: com.google.firebase.installations.remote.InstallationResponse$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/InstallationResponse$a.class */
    public static abstract class AbstractC9232a {
        /* renamed from: a */
        public abstract InstallationResponse mo1458a();

        /* renamed from: b */
        public abstract AbstractC9232a mo1457b(TokenResult tokenResult);

        /* renamed from: c */
        public abstract AbstractC9232a mo1456c(String str);

        /* renamed from: d */
        public abstract AbstractC9232a mo1455d(String str);

        /* renamed from: e */
        public abstract AbstractC9232a mo1454e(ResponseCode responseCode);

        /* renamed from: f */
        public abstract AbstractC9232a mo1453f(String str);
    }

    /* renamed from: a */
    public static AbstractC9232a m1465a() {
        return new C9234a.C9236b();
    }

    /* renamed from: b */
    public abstract TokenResult mo1463b();

    /* renamed from: c */
    public abstract String mo1462c();

    /* renamed from: d */
    public abstract String mo1461d();

    /* renamed from: e */
    public abstract ResponseCode mo1460e();

    /* renamed from: f */
    public abstract String mo1459f();
}
