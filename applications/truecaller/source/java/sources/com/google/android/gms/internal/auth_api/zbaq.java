package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.identity.zbl;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbaq.class */
public final class zbaq extends Api.AbstractClientBuilder<zbav, zbl> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* bridge */ /* synthetic */ zbav buildClient(Context context, Looper looper, ClientSettings clientSettings, zbl zblVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zbav(context, looper, zblVar, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
