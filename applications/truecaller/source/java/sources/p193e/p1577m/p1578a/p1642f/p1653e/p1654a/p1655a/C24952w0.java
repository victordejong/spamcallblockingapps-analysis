package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zabt;
import java.util.concurrent.locks.Lock;
/* renamed from: e.m.a.f.e.a.a.w0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/w0.class */
public final class C24952w0 implements zabt {

    /* renamed from: a */
    public final /* synthetic */ C24954x0 f69879a;

    public /* synthetic */ C24952w0(C24954x0 c24954x0) {
        this.f69879a = c24954x0;
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: a */
    public final void mo4279a(int i, boolean z) {
        Lock lock;
        this.f69879a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69879a;
            if (c24954x0.f69892l) {
                c24954x0.f69892l = false;
                c24954x0.f69882b.mo4279a(i, z);
                c24954x0.f69891k = null;
                c24954x0.f69890j = null;
                lock = this.f69879a.f69893m;
            } else {
                c24954x0.f69892l = true;
                c24954x0.f69884d.onConnectionSuspended(i);
                lock = this.f69879a.f69893m;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f69879a.f69893m.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: b */
    public final void mo4278b(Bundle bundle) {
        this.f69879a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69879a;
            c24954x0.f69891k = ConnectionResult.f5661e;
            C24954x0.m4259q(c24954x0);
        } finally {
            this.f69879a.f69893m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: c */
    public final void mo4277c(ConnectionResult connectionResult) {
        this.f69879a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69879a;
            c24954x0.f69891k = connectionResult;
            C24954x0.m4259q(c24954x0);
        } finally {
            this.f69879a.f69893m.unlock();
        }
    }
}
