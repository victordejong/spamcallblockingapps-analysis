package com.huawei.agconnect.core.service.auth;

import com.huawei.hmf.tasks.Task;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/service/auth/CredentialsProvider.class */
public interface CredentialsProvider {
    Task<Token> getTokens();

    Task<Token> getTokens(boolean z);
}
