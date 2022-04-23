package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zabn;
import java.util.concurrent.locks.Lock;
/* renamed from: c.d.b.d.d.a.a.o0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/o0.class */
public final class C3271o0 implements zabn {

    /* renamed from: a */
    public final /* synthetic */ C3269n0 f11978a;

    public C3271o0(C3269n0 n0Var) {
        this.f11978a = n0Var;
    }

    public /* synthetic */ C3271o0(C3269n0 n0Var, RunnableC3267m0 m0Var) {
        this(n0Var);
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17513a(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zaaz zaazVar;
        lock = this.f11978a.f11975l;
        lock.lock();
        try {
            z2 = this.f11978a.f11974k;
            if (z2) {
                this.f11978a.f11974k = false;
                this.f11978a.m27297a(i, z);
                return;
            }
            this.f11978a.f11974k = true;
            zaazVar = this.f11978a.f11966c;
            zaazVar.onConnectionSuspended(i);
        } finally {
            lock2 = this.f11978a.f11975l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17512a(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f11978a.f11975l;
        lock.lock();
        try {
            this.f11978a.f11973j = ConnectionResult.f23006e;
            this.f11978a.m27282e();
        } finally {
            lock2 = this.f11978a.f11975l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17511a(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f11978a.f11975l;
        lock.lock();
        try {
            this.f11978a.f11973j = connectionResult;
            this.f11978a.m27282e();
        } finally {
            lock2 = this.f11978a.f11975l;
            lock2.unlock();
        }
    }
}
