package p193e.p1577m.p1578a.p1642f.p1643a;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.appinvite.zzm;
/* renamed from: e.m.a.f.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/a/a.class */
public final class C24877a extends Api.AbstractClientBuilder<zzm, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzm buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzm(context, looper, connectionCallbacks, onConnectionFailedListener, clientSettings);
    }
}
