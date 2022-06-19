package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.api.internal.zacn;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.e.a.a.a0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/a0.class */
public final class C24906a0 implements BaseGmsClient.ConnectionProgressReportCallbacks, zacn {

    /* renamed from: a */
    public final Api.Client f69806a;

    /* renamed from: b */
    public final ApiKey<?> f69807b;

    /* renamed from: c */
    public IAccountAccessor f69808c = null;

    /* renamed from: d */
    public Set<Scope> f69809d = null;

    /* renamed from: e */
    public boolean f69810e = false;

    /* renamed from: f */
    public final /* synthetic */ GoogleApiManager f69811f;

    public C24906a0(GoogleApiManager googleApiManager, Api.Client client, ApiKey<?> apiKey) {
        this.f69811f = googleApiManager;
        this.f69806a = client;
        this.f69807b = apiKey;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    /* renamed from: a */
    public final void mo4289a(ConnectionResult connectionResult) {
        this.f69811f.f5759n.post(new RunnableC24957z(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacn
    /* renamed from: b */
    public final void mo4292b(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            mo4291c(new ConnectionResult(4));
            return;
        }
        this.f69808c = iAccountAccessor;
        this.f69809d = set;
        if (!this.f69810e) {
            return;
        }
        this.f69806a.getRemoteService(iAccountAccessor, set);
    }

    @Override // com.google.android.gms.common.api.internal.zacn
    /* renamed from: c */
    public final void mo4291c(ConnectionResult connectionResult) {
        zabl<?> zablVar = this.f69811f.f5755j.get(this.f69807b);
        if (zablVar != null) {
            Preconditions.m38904d(zablVar.f5861m.f5759n);
            Api.Client client = zablVar.f5850b;
            String name = client.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            client.disconnect(C22128a.m8606k(new StringBuilder(name.length() + 25 + valueOf.length()), "onSignInFailed for ", name, " with ", valueOf));
            zablVar.m38963n(connectionResult, null);
        }
    }
}
