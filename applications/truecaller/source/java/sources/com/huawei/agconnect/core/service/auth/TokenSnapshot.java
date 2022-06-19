package com.huawei.agconnect.core.service.auth;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/service/auth/TokenSnapshot.class */
public interface TokenSnapshot {

    /* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/service/auth/TokenSnapshot$State.class */
    public enum State {
        SIGNED_IN,
        TOKEN_UPDATED,
        TOKEN_INVALID,
        SIGNED_OUT
    }

    State getState();

    String getToken();
}
