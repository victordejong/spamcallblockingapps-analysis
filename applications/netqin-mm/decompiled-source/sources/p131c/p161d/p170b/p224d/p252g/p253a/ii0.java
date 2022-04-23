package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwt;
/* renamed from: c.d.b.d.g.a.ii0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ii0.class */
public final class ii0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ji0 f13546a;

    public ii0(ji0 ji0Var) {
        this.f13546a = ji0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwt zzwtVar;
        zzwt zzwtVar2;
        zzwtVar = this.f13546a.f13793a.f29172a;
        if (zzwtVar != null) {
            try {
                zzwtVar2 = this.f13546a.f13793a.f29172a;
                zzwtVar2.mo11157a(1);
            } catch (RemoteException e) {
                zzbbq.m15853c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
