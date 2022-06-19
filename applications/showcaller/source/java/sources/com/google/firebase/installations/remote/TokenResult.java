package com.google.firebase.installations.remote;

import com.google.auto.value.AutoValue;
import com.google.firebase.installations.remote.C9237b;
@AutoValue
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult.class */
public abstract class TokenResult {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$ResponseCode.class */
    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    @AutoValue.Builder
    /* renamed from: com.google.firebase.installations.remote.TokenResult$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$a.class */
    public static abstract class AbstractC9233a {
        /* renamed from: a */
        public abstract TokenResult mo1449a();

        /* renamed from: b */
        public abstract AbstractC9233a mo1448b(ResponseCode responseCode);

        /* renamed from: c */
        public abstract AbstractC9233a mo1447c(String str);

        /* renamed from: d */
        public abstract AbstractC9233a mo1446d(long j);
    }

    /* renamed from: a */
    public static AbstractC9233a m1464a() {
        return new C9237b.C9239b().mo1446d(0L);
    }

    /* renamed from: b */
    public abstract ResponseCode mo1452b();

    /* renamed from: c */
    public abstract String mo1451c();

    /* renamed from: d */
    public abstract long mo1450d();
}
