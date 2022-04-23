package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzj.class */
public final class zzj extends GmsClient<zzn> {
    public zzj(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 40, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: A */
    public final String mo8646A() {
        return "com.google.android.gms.clearcut.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    public final /* synthetic */ IInterface mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return queryLocalInterface instanceof zzn ? (zzn) queryLocalInterface : new zzo(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: j */
    public final int mo8643j() {
        return 11925000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: z */
    public final String mo8640z() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
}
