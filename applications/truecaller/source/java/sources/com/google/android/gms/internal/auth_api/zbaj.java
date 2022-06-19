package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.identity.zbc;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbaj.class */
public final class zbaj extends Api.AbstractClientBuilder<zbw, zbc> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* bridge */ /* synthetic */ zbw buildClient(Context context, Looper looper, ClientSettings clientSettings, zbc zbcVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zbw(context, looper, zbcVar, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
