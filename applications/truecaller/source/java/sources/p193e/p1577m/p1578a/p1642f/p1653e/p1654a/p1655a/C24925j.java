package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaba;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.e.a.a.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/j.class */
public final class C24925j extends AbstractC24939q {

    /* renamed from: b */
    public final /* synthetic */ zaar f69845b;

    /* renamed from: c */
    public final /* synthetic */ zak f69846c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24925j(zaba zabaVar, zaar zaarVar, zak zakVar) {
        super(zabaVar);
        this.f69845b = zaarVar;
        this.f69846c = zakVar;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24939q
    /* renamed from: a */
    public final void mo4282a() {
        zaar zaarVar = this.f69845b;
        zak zakVar = this.f69846c;
        if (!zaarVar.m39004p(0)) {
            return;
        }
        ConnectionResult connectionResult = zakVar.b;
        if (!connectionResult.m39076p2()) {
            boolean z = false;
            if (zaarVar.f5798l) {
                z = false;
                if (!connectionResult.m39077o2()) {
                    z = true;
                }
            }
            if (z) {
                zaarVar.m39008l();
                zaarVar.m39011i();
            }
            zaarVar.m39007m(connectionResult);
            return;
        }
        zav zavVar = zakVar.c;
        Objects.requireNonNull(zavVar, "null reference");
        connectionResult = zavVar.f6032c;
        if (!connectionResult.m39076p2()) {
            String valueOf = String.valueOf(connectionResult);
            Log.wtf("GACConnecting", C22128a.m8618h(new StringBuilder(valueOf.length() + 48), "Sign-in succeeded with resolve account failure: ", valueOf), new Exception());
            zaarVar.m39007m(connectionResult);
            return;
        }
        zaarVar.f5800n = true;
        IAccountAccessor m38824o2 = zavVar.m38824o2();
        Objects.requireNonNull(m38824o2, "null reference");
        zaarVar.f5801o = m38824o2;
        zaarVar.f5802p = zavVar.f6033d;
        zaarVar.f5803q = zavVar.f6034e;
        zaarVar.m39011i();
    }
}
