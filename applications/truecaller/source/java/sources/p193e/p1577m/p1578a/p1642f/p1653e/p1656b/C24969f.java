package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: e.m.a.f.e.b.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/f.class */
public final class C24969f implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ OnConnectionFailedListener f69915a;

    public C24969f(OnConnectionFailedListener onConnectionFailedListener) {
        this.f69915a = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f69915a.onConnectionFailed(connectionResult);
    }
}
