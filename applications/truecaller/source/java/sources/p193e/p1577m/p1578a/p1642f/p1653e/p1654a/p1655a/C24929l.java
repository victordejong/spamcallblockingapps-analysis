package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.signin.zae;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/l.class */
public final class C24929l implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zaar f69850a;

    public /* synthetic */ C24929l(zaar zaarVar) {
        this.f69850a = zaarVar;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.signin.internal.zae, e.m.a.f.e.a.a.k] */
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Objects.requireNonNull(this.f69850a.f5804r, "null reference");
        zae zaeVar = this.f69850a.f5797k;
        Objects.requireNonNull(zaeVar, "null reference");
        zaeVar.d((com.google.android.gms.signin.internal.zae) new C24927k(this.f69850a));
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f69850a.f5788b.lock();
        try {
            if (this.f69850a.f5798l && !connectionResult.m39077o2()) {
                this.f69850a.m39008l();
                this.f69850a.m39011i();
            } else {
                this.f69850a.m39007m(connectionResult);
            }
        } finally {
            this.f69850a.f5788b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
