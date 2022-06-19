package p193e.p1577m.p1578a.p1642f.p1664i.p1665a;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.identity.intents.Address;
import com.google.android.gms.internal.identity.zze;
/* renamed from: e.m.a.f.i.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/i/a/a.class */
public final class C25018a extends Api.AbstractClientBuilder<zze, Address.AddressOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zze buildClient(Context context, Looper looper, ClientSettings clientSettings, Address.AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Address.AddressOptions addressOptions2 = addressOptions;
        Preconditions.m38906b(context instanceof Activity, "An Activity must be used for Address APIs");
        if (addressOptions2 == null) {
            new Address.AddressOptions();
        }
        return new zze((Activity) context, looper, clientSettings, 0, connectionCallbacks, onConnectionFailedListener);
    }
}
