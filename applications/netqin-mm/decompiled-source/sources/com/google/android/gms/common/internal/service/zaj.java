package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zaj.class */
public final class zaj extends GmsClient<zak> {
    public zaj(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: A */
    public final String mo8646A() {
        return "com.google.android.gms.common.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    public final /* synthetic */ IInterface mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
        return queryLocalInterface instanceof zak ? (zak) queryLocalInterface : new zam(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: z */
    public final String mo8640z() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }
}
