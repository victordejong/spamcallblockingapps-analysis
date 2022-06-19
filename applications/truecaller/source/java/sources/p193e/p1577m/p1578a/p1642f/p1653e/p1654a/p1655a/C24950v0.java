package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zabt;
import java.util.concurrent.locks.Lock;
/* renamed from: e.m.a.f.e.a.a.v0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/v0.class */
public final class C24950v0 implements zabt {

    /* renamed from: a */
    public final /* synthetic */ C24954x0 f69877a;

    public /* synthetic */ C24950v0(C24954x0 c24954x0) {
        this.f69877a = c24954x0;
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: a */
    public final void mo4279a(int i, boolean z) {
        Lock lock;
        ConnectionResult connectionResult;
        this.f69877a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69877a;
            if (!c24954x0.f69892l && (connectionResult = c24954x0.f69891k) != null && connectionResult.m39076p2()) {
                C24954x0 c24954x02 = this.f69877a;
                c24954x02.f69892l = true;
                c24954x02.f69885e.onConnectionSuspended(i);
                lock = this.f69877a.f69893m;
                lock.unlock();
            }
            C24954x0 c24954x03 = this.f69877a;
            c24954x03.f69892l = false;
            c24954x03.f69882b.mo4279a(i, z);
            c24954x03.f69891k = null;
            c24954x03.f69890j = null;
            lock = this.f69877a.f69893m;
            lock.unlock();
        } catch (Throwable th) {
            this.f69877a.f69893m.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: b */
    public final void mo4278b(Bundle bundle) {
        this.f69877a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69877a;
            Bundle bundle2 = c24954x0.f69889i;
            if (bundle2 == null) {
                c24954x0.f69889i = bundle;
            } else if (bundle != null) {
                bundle2.putAll(bundle);
            }
            C24954x0 c24954x02 = this.f69877a;
            c24954x02.f69890j = ConnectionResult.f5661e;
            C24954x0.m4259q(c24954x02);
        } finally {
            this.f69877a.f69893m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: c */
    public final void mo4277c(ConnectionResult connectionResult) {
        this.f69877a.f69893m.lock();
        try {
            C24954x0 c24954x0 = this.f69877a;
            c24954x0.f69890j = connectionResult;
            C24954x0.m4259q(c24954x0);
        } finally {
            this.f69877a.f69893m.unlock();
        }
    }
}
