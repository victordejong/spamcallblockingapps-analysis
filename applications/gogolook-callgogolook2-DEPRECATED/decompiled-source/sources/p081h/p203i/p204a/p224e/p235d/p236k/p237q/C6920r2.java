package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* renamed from: h.i.a.e.d.k.q.r2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/r2.class */
public final class C6920r2 implements AbstractC6891k1 {

    /* renamed from: a */
    public final /* synthetic */ C6908o2 f16948a;

    public C6920r2(C6908o2 o2Var) {
        this.f16948a = o2Var;
    }

    public /* synthetic */ C6920r2(C6908o2 o2Var, RunnableC6912p2 p2Var) {
        this(o2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    /* renamed from: a */
    public final void mo21583a(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        C6938w0 w0Var;
        lock = this.f16948a.f16927m;
        lock.lock();
        try {
            z2 = this.f16948a.f16926l;
            if (z2) {
                this.f16948a.f16926l = false;
                this.f16948a.m21622a(i, z);
                return;
            }
            this.f16948a.f16926l = true;
            w0Var = this.f16948a.f16918d;
            w0Var.mo21503f(i);
        } finally {
            lock2 = this.f16948a.f16927m;
            lock2.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    /* renamed from: a */
    public final void mo21582a(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f16948a.f16927m;
        lock.lock();
        try {
            this.f16948a.f16925k = ConnectionResult.f6495e;
            this.f16948a.m21604f();
        } finally {
            lock2 = this.f16948a.f16927m;
            lock2.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    /* renamed from: a */
    public final void mo21581a(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f16948a.f16927m;
        lock.lock();
        try {
            this.f16948a.f16925k = connectionResult;
            this.f16948a.m21604f();
        } finally {
            lock2 = this.f16948a.f16927m;
            lock2.unlock();
        }
    }
}
