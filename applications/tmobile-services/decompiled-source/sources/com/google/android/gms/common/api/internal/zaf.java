package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf<ResultT> extends zab {

    /* renamed from: a */
    private final TaskApiCall<Api.AnyClient, ResultT> f7293a;

    /* renamed from: b */
    private final TaskCompletionSource<ResultT> f7294b;

    /* renamed from: c */
    private final StatusExceptionMapper f7295c;

    public zaf(int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i);
        this.f7294b = taskCompletionSource;
        this.f7293a = taskApiCall;
        this.f7295c = statusExceptionMapper;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: b */
    public final void mo14740b(@NonNull Status status) {
        this.f7294b.m10827d(this.f7295c.getException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: c */
    public final void mo14737c(@NonNull zaz zazVar, boolean z) {
        zazVar.m14655c(this.f7294b, z);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: d */
    public final void mo14739d(@NonNull RuntimeException runtimeException) {
        this.f7294b.m10827d(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final void mo14738f(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        Status a;
        try {
            this.f7293a.doExecute(zaaVar.m14907p(), this.f7294b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a = zac.m14777a(e2);
            mo14740b(a);
        } catch (RuntimeException e3) {
            mo14739d(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    @Nullable
    /* renamed from: g */
    public final Feature[] mo14736g(GoogleApiManager.zaa<?> zaaVar) {
        return this.f7293a.zabr();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: h */
    public final boolean mo14735h(GoogleApiManager.zaa<?> zaaVar) {
        return this.f7293a.shouldAutoResolveMissingFeatures();
    }
}
