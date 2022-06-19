package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zak;
/* renamed from: e.m.a.f.e.a.a.o0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/o0.class */
public final class C24936o0 implements GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final int f69857a;

    /* renamed from: b */
    public final GoogleApiClient f69858b;

    /* renamed from: c */
    public final GoogleApiClient.OnConnectionFailedListener f69859c;

    /* renamed from: d */
    public final /* synthetic */ zak f69860d;

    public C24936o0(zak zakVar, int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f69860d = zakVar;
        this.f69857a = i;
        this.f69858b = googleApiClient;
        this.f69859c = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        String.valueOf(connectionResult).length();
        this.f69860d.m38926o(connectionResult, this.f69857a);
    }
}
