package com.google.firebase.installations.remote;

import com.google.firebase.installations.remote.AutoValue_TokenResult;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult.class */
public abstract class TokenResult {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$Builder.class */
    public static abstract class Builder {
        public abstract TokenResult build();

        public abstract Builder setResponseCode(ResponseCode responseCode);

        public abstract Builder setToken(String str);

        public abstract Builder setTokenExpirationTimestamp(long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$ResponseCode.class */
    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static Builder builder() {
        return new AutoValue_TokenResult.Builder().setTokenExpirationTimestamp(0L);
    }

    public abstract ResponseCode getResponseCode();

    public abstract String getToken();

    public abstract long getTokenExpirationTimestamp();

    public abstract Builder toBuilder();
}
