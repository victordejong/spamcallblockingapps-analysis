package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24958z0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zag.class */
public final class zag<ResultT> extends zac {

    /* renamed from: b */
    public final TaskApiCall<Api.AnyClient, ResultT> f5893b;

    /* renamed from: c */
    public final TaskCompletionSource<ResultT> f5894c;

    /* renamed from: d */
    public final StatusExceptionMapper f5895d;

    public zag(int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i);
        this.f5894c = taskCompletionSource;
        this.f5893b = taskApiCall;
        this.f5895d = statusExceptionMapper;
        if (i != 2 || !taskApiCall.shouldAutoResolveMissingFeatures()) {
            return;
        }
        throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: a */
    public final void mo4286a(Status status) {
        this.f5894c.m38516a(this.f5895d.mo39017a(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: b */
    public final void mo4285b(Exception exc) {
        this.f5894c.m38516a(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: c */
    public final void mo38939c(zaaa zaaaVar, boolean z) {
        TaskCompletionSource<ResultT> taskCompletionSource = this.f5894c;
        zaaaVar.f5781b.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.f6493a.c(new C24958z0(zaaaVar, taskCompletionSource));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: d */
    public final void mo4284d(zabl<?> zablVar) throws DeadObjectException {
        try {
            this.f5893b.doExecute(zablVar.f5850b, this.f5894c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            this.f5894c.m38516a(this.f5895d.mo39017a(zai.m38938e(e2)));
        } catch (RuntimeException e3) {
            this.f5894c.m38516a(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final Feature[] mo38941f(zabl<?> zablVar) {
        return this.f5893b.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: g */
    public final boolean mo38940g(zabl<?> zablVar) {
        return this.f5893b.shouldAutoResolveMissingFeatures();
    }
}
