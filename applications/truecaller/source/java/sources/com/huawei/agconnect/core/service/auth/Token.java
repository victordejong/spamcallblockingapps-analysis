package com.huawei.agconnect.core.service.auth;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/service/auth/Token.class */
public interface Token {
    long getExpiration();

    long getIssuedAt();

    long getNotBefore();

    String getTokenString();
}
