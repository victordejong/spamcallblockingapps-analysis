package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabb.class */
public interface zabb {
    /* renamed from: a */
    void mo14800a(int i);

    /* renamed from: b */
    void mo14799b(Bundle bundle);

    /* renamed from: c */
    void mo14798c(ConnectionResult connectionResult, Api<?> api, boolean z);

    void connect();

    /* renamed from: d */
    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14797d(T t);

    boolean disconnect();

    /* renamed from: e */
    void mo14796e();
}
