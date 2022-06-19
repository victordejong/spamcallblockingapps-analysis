package com.huawei.hms.common.internal;

import android.content.Context;
import com.huawei.hms.common.internal.AnyClient;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/AbstractClientBuilder.class */
public abstract class AbstractClientBuilder<TClient extends AnyClient, TOption> {
    public abstract TClient buildClient(Context context, ClientSettings clientSettings, BaseHmsClient$OnConnectionFailedListener baseHmsClient$OnConnectionFailedListener, BaseHmsClient$ConnectionCallbacks baseHmsClient$ConnectionCallbacks);
}
