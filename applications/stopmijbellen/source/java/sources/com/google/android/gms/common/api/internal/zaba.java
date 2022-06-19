package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaba.class */
public interface zaba {
    void zaa();

    <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t);

    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t);

    boolean zad();

    void zae();

    void zaf(Bundle bundle);

    void zag(ConnectionResult connectionResult, Api<?> api, boolean z);

    void zah(int i);
}
