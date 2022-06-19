package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaco;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zae;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.e.a.a.g0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/g0.class */
public final class RunnableC24920g0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zak f69838a;

    /* renamed from: b */
    public final /* synthetic */ zaco f69839b;

    public RunnableC24920g0(zaco zacoVar, zak zakVar) {
        this.f69839b = zacoVar;
        this.f69838a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaco zacoVar = this.f69839b;
        zak zakVar = this.f69838a;
        Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = zaco.f5872h;
        ConnectionResult connectionResult = zakVar.b;
        ConnectionResult connectionResult2 = connectionResult;
        if (connectionResult.m39076p2()) {
            zav zavVar = zakVar.c;
            Objects.requireNonNull(zavVar, "null reference");
            connectionResult2 = zavVar.f6032c;
            if (connectionResult2.m39076p2()) {
                zacoVar.f5879g.mo4292b(zavVar.m38824o2(), zacoVar.f5876d);
                zacoVar.f5878f.disconnect();
            }
            String valueOf = String.valueOf(connectionResult2);
            Log.wtf("SignInCoordinator", C22128a.m8618h(new StringBuilder(valueOf.length() + 48), "Sign-in succeeded with resolve account failure: ", valueOf), new Exception());
        }
        zacoVar.f5879g.mo4291c(connectionResult2);
        zacoVar.f5878f.disconnect();
    }
}
