package p193e.p1577m.p1578a.p1642f.p1644b.p1645a;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth.zzr;
/* renamed from: e.m.a.f.b.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/a/a.class */
public final class C24879a extends Api.AbstractClientBuilder<zzr, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzr buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzr(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
