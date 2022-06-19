package com.huawei.hms.common.internal;

import com.huawei.hms.common.HuaweiApi;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HandlerMessageWrapper.class */
public class HandlerMessageWrapper {
    public final HuaweiApi<?> mApi;
    public final BaseContentWrapper mContentWrapper;

    public HandlerMessageWrapper(BaseContentWrapper baseContentWrapper, int i, HuaweiApi<?> huaweiApi) {
        this.mContentWrapper = baseContentWrapper;
        this.mApi = huaweiApi;
    }
}
