package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.internal.ApiKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/HasApiKey.class */
public interface HasApiKey<O extends Api.ApiOptions> {
    ApiKey<O> getApiKey();
}
