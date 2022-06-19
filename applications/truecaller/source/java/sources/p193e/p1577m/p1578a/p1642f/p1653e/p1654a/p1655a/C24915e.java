package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* renamed from: e.m.a.f.e.a.a.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/e.class */
public final class C24915e implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a */
    public final WeakReference<zaar> f69830a;

    /* renamed from: b */
    public final Api<?> f69831b;

    /* renamed from: c */
    public final boolean f69832c;

    public C24915e(zaar zaarVar, Api<?> api, boolean z) {
        this.f69830a = new WeakReference<>(zaarVar);
        this.f69831b = api;
        this.f69832c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    /* renamed from: a */
    public final void mo4289a(ConnectionResult connectionResult) {
        Lock lock;
        zaar zaarVar = this.f69830a.get();
        if (zaarVar == null) {
            return;
        }
        Preconditions.m38895m(Looper.myLooper() == zaarVar.f5787a.f5846n.f5814g, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        zaarVar.f5788b.lock();
        try {
            if (!zaarVar.m39004p(0)) {
                lock = zaarVar.f5788b;
            } else {
                if (!connectionResult.m39076p2()) {
                    zaarVar.m39009k(connectionResult, this.f69831b, this.f69832c);
                }
                if (zaarVar.m39003q()) {
                    zaarVar.m39011i();
                }
                lock = zaarVar.f5788b;
            }
            lock.unlock();
        } catch (Throwable th) {
            zaarVar.f5788b.unlock();
            throw th;
        }
    }
}
