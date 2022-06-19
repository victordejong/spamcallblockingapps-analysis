package p193e.p1577m.p1578a.p1642f.p1651c;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.clearcut.zzj;
/* renamed from: e.m.a.f.c.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/c/a.class */
public final class C24897a extends Api.AbstractClientBuilder<zzj, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzj buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzj(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
