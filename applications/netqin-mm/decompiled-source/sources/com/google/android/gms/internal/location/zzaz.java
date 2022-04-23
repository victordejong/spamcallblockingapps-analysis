package com.google.android.gms.internal.location;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzaz.class */
public final class zzaz extends zzk {

    /* renamed from: G */
    public final zzas f29365G;

    public zzaz(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, ClientSettings.m17331a(context));
    }

    public zzaz(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, ClientSettings clientSettings) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, clientSettings);
        this.f29365G = new zzas(context, this.f29390F);
    }

    /* renamed from: H */
    public final Location m10492H() throws RemoteException {
        return this.f29365G.m10496a();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    /* renamed from: b */
    public final void mo10491b() {
        synchronized (this.f29365G) {
            if (m17365c()) {
                try {
                    this.f29365G.m10494b();
                    this.f29365G.m10493c();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.mo10491b();
        }
    }
}
