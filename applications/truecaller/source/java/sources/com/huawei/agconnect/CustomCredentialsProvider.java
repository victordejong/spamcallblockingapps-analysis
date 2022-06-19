package com.huawei.agconnect;

import com.huawei.agconnect.core.service.auth.Token;
import com.huawei.hmf.tasks.Task;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/CustomCredentialsProvider.class */
public interface CustomCredentialsProvider {
    Task<Token> getTokens(boolean z);
}
