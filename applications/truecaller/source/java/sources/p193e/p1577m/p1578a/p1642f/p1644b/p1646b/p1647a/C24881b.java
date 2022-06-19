package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1647a;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.accounttransfer.zzn;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth.zzu;
/* renamed from: e.m.a.f.b.b.a.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/a/b.class */
public final class C24881b extends Api.AbstractClientBuilder<zzu, zzn> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzu buildClient(Context context, Looper looper, ClientSettings clientSettings, zzn zznVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzu(context, looper, clientSettings, zznVar, connectionCallbacks, onConnectionFailedListener);
    }
}
