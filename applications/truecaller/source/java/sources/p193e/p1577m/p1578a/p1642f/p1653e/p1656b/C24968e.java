package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: e.m.a.f.e.b.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/e.class */
public final class C24968e implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ ConnectionCallbacks f69914a;

    public C24968e(ConnectionCallbacks connectionCallbacks) {
        this.f69914a = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f69914a.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f69914a.onConnectionSuspended(i);
    }
}
