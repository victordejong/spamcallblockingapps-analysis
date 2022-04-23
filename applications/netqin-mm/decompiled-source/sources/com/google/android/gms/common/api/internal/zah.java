package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah<ResultT> extends zad {

    /* renamed from: b */
    public final TaskApiCall<Api.AnyClient, ResultT> f23278b;

    /* renamed from: c */
    public final TaskCompletionSource<ResultT> f23279c;

    /* renamed from: d */
    public final StatusExceptionMapper f23280d;

    public zah(int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i);
        this.f23279c = taskCompletionSource;
        this.f23278b = taskApiCall;
        this.f23280d = statusExceptionMapper;
        if (i == 2 && taskApiCall.m17596a()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17487a(Status status) {
        this.f23279c.m8597b(this.f23280d.mo17598a(status));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17486a(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        Status b;
        try {
            this.f23278b.mo17595a(zaaVar.m17660b(), this.f23279c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            b = zab.m17526b(e2);
            mo17487a(b);
        } catch (RuntimeException e3) {
            mo17484a(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17485a(zav zavVar, boolean z) {
        zavVar.m17461a(this.f23279c, z);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17484a(Exception exc) {
        this.f23279c.m8597b(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: b */
    public final Feature[] mo17483b(GoogleApiManager.zaa<?> zaaVar) {
        return this.f23278b.m17594b();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: c */
    public final boolean mo17482c(GoogleApiManager.zaa<?> zaaVar) {
        return this.f23278b.m17596a();
    }
}
