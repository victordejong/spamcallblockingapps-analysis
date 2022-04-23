package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bo.class */
public final class bo<ResultT> extends ap {

    /* renamed from: a  reason: collision with root package name */
    private final s<a.b, ResultT> f22695a;

    /* renamed from: b  reason: collision with root package name */
    private final i<ResultT> f22696b;

    /* renamed from: d  reason: collision with root package name */
    private final q f22697d;

    public bo(int i, s<a.b, ResultT> sVar, i<ResultT> iVar, q qVar) {
        super(i);
        this.f22696b = iVar;
        this.f22695a = sVar;
        this.f22697d = qVar;
        if (i == 2 && sVar.f22762b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Status status) {
        this.f22696b.b(this.f22697d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(v vVar, boolean z) {
        i<ResultT> iVar = this.f22696b;
        vVar.f22770b.put(iVar, Boolean.valueOf(z));
        iVar.f30014a.a(new ca(vVar, iVar));
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Exception exc) {
        this.f22696b.b(exc);
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final Feature[] a(af<?> afVar) {
        return this.f22695a.f22761a;
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final boolean b(af<?> afVar) {
        return this.f22695a.f22762b;
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void c(af<?> afVar) throws DeadObjectException {
        try {
            this.f22695a.a(afVar.f22634a, this.f22696b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(bq.a(e2));
        } catch (RuntimeException e3) {
            this.f22696b.b(e3);
        }
    }
}
