package com.huawei.agconnect.core.service.auth;

import com.huawei.hmf.tasks.Task;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/service/auth/AuthProvider.class */
public interface AuthProvider {
    void addTokenListener(OnTokenListener onTokenListener);

    Task<Token> getTokens();

    Task<Token> getTokens(boolean z);

    String getUid();

    void removeTokenListener(OnTokenListener onTokenListener);
}
