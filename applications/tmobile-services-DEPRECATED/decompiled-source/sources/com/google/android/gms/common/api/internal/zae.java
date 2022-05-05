package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zae.class */
public abstract class zae<T> extends zab {

    /* renamed from: a */
    protected final TaskCompletionSource<T> f7292a;

    public zae(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.f7292a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: b */
    public void mo14740b(@NonNull Status status) {
        this.f7292a.m10827d(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: c */
    public void mo14737c(@NonNull zaz zazVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: d */
    public void mo14739d(@NonNull RuntimeException runtimeException) {
        this.f7292a.m10827d(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final void mo14738f(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        Status a;
        Status a2;
        try {
            mo14734i(zaaVar);
        } catch (DeadObjectException e) {
            a = zac.m14777a(e);
            mo14740b(a);
            throw e;
        } catch (RemoteException e2) {
            a2 = zac.m14777a(e2);
            mo14740b(a2);
        } catch (RuntimeException e3) {
            mo14739d(e3);
        }
    }

    /* renamed from: i */
    protected abstract void mo14734i(GoogleApiManager.zaa<?> zaaVar) throws RemoteException;
}
