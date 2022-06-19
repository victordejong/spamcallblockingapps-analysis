package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.internal.IAccountAccessor;
/* renamed from: e.m.a.f.e.a.a.z */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/z.class */
public final class RunnableC24957z implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConnectionResult f69899a;

    /* renamed from: b */
    public final /* synthetic */ C24906a0 f69900b;

    public RunnableC24957z(C24906a0 c24906a0, ConnectionResult connectionResult) {
        this.f69900b = c24906a0;
        this.f69899a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor iAccountAccessor;
        C24906a0 c24906a0 = this.f69900b;
        zabl<?> zablVar = c24906a0.f69811f.f5755j.get(c24906a0.f69807b);
        if (zablVar == null) {
            return;
        }
        if (!this.f69899a.m39076p2()) {
            zablVar.m38963n(this.f69899a, null);
            return;
        }
        C24906a0 c24906a02 = this.f69900b;
        c24906a02.f69810e = true;
        if (c24906a02.f69806a.requiresSignIn()) {
            C24906a0 c24906a03 = this.f69900b;
            if (!c24906a03.f69810e || (iAccountAccessor = c24906a03.f69808c) == null) {
                return;
            }
            c24906a03.f69806a.getRemoteService(iAccountAccessor, c24906a03.f69809d);
            return;
        }
        try {
            Api.Client client = this.f69900b.f69806a;
            client.getRemoteService(null, client.getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e) {
            this.f69900b.f69806a.disconnect("Failed to get service from broker.");
            zablVar.m38963n(new ConnectionResult(10), null);
        }
    }
}
