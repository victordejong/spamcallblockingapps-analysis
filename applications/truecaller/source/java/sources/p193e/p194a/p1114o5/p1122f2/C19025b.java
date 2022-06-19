package p193e.p194a.p1114o5.p1122f2;

import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zaaz;
@Deprecated
/* renamed from: e.a.o5.f2.b */
/* loaded from: classes15-dex2jar.jar:e/a/o5/f2/b.class */
public class C19025b extends AbstractC19027c {

    /* renamed from: e.a.o5.f2.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/f2/b$a.class */
    public class C19026a implements GoogleApiClient.ConnectionCallbacks {

        /* renamed from: a */
        public final /* synthetic */ GoogleApiClient f53149a;

        public C19026a(C19025b c19025b, GoogleApiClient googleApiClient) {
            this.f53149a = googleApiClient;
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            GoogleSignInApi googleSignInApi = Auth.f5349d;
            googleSignInApi.mo39103d(this.f53149a);
            googleSignInApi.mo39104c(this.f53149a);
            this.f53149a.mo38999f();
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    public C19025b(Application application) {
        super(application, 4);
    }

    @Override // p193e.p194a.p1114o5.p1122f2.AbstractC19027c
    /* renamed from: a */
    public void mo14248a() {
        Application application = this.f53150a;
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.f5516l);
        builder.m39119b();
        builder.f5534a.add(GoogleSignInOptions.f5517m);
        GoogleSignInOptions m39120a = builder.m39120a();
        GoogleApiClient.Builder builder2 = new GoogleApiClient.Builder(application);
        builder2.m39051a(Auth.f5347b, m39120a);
        GoogleApiClient m39050b = builder2.m39050b();
        ((zaaz) m39050b).f5810c.m38827b(new C19026a(this, m39050b));
        m39050b.mo39000e();
    }
}
