package p131c.p161d.p170b.p224d.p259h;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.location.zzaz;
/* renamed from: c.d.b.d.h.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/h/a.class */
public final class C4632a extends Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    /* renamed from: a */
    public final /* synthetic */ zzaz mo17783a(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzaz(context, looper, connectionCallbacks, onConnectionFailedListener, "activity_recognition");
    }
}
