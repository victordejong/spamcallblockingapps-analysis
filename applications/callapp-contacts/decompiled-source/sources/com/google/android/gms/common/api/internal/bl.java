package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bl.class */
public abstract class bl<T> extends ap {

    /* renamed from: a  reason: collision with root package name */
    protected final i<T> f22692a;

    public bl(int i, i<T> iVar) {
        super(i);
        this.f22692a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Status status) {
        this.f22692a.b(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public void a(v vVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void a(Exception exc) {
        this.f22692a.b(exc);
    }

    @Override // com.google.android.gms.common.api.internal.bq
    public final void c(af<?> afVar) throws DeadObjectException {
        try {
            d(afVar);
        } catch (DeadObjectException e) {
            a(bq.a((RemoteException) e));
            throw e;
        } catch (RemoteException e2) {
            a(bq.a(e2));
        } catch (RuntimeException e3) {
            this.f22692a.b(e3);
        }
    }

    protected abstract void d(af<?> afVar) throws RemoteException;
}
