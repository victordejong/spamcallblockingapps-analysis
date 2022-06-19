package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaba.class */
public interface zaba {
    /* renamed from: a */
    boolean mo38985a();

    /* renamed from: b */
    void mo38984b();

    /* renamed from: c */
    void mo38983c();

    /* renamed from: d */
    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38982d(T t);

    /* renamed from: e */
    <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38981e(T t);

    /* renamed from: f */
    void mo38980f(int i);

    /* renamed from: g */
    void mo38979g(Bundle bundle);

    /* renamed from: h */
    void mo38978h(ConnectionResult connectionResult, Api<?> api, boolean z);
}
