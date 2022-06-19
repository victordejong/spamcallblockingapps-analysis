package p193e.p1577m.p1578a.p1642f.p1644b.p1646b;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.AuthProxyOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth.zzak;
/* renamed from: e.m.a.f.b.b.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/f.class */
public final class C24893f extends Api.AbstractClientBuilder<zzak, AuthProxyOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzak buildClient(Context context, Looper looper, ClientSettings clientSettings, AuthProxyOptions authProxyOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzak(context, looper, clientSettings, authProxyOptions, connectionCallbacks, onConnectionFailedListener);
    }
}
