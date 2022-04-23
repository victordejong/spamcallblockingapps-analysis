package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zab {

    /* renamed from: b */
    public final A f23276b;

    public zaf(int i, A a) {
        super(i);
        Preconditions.m17287a(a, "Null methods are not runnable.");
        this.f23276b = a;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17487a(Status status) {
        this.f23276b.m17727c(status);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17486a(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        try {
            this.f23276b.m17728b(zaaVar.m17660b());
        } catch (RuntimeException e) {
            mo17484a(e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17485a(zav zavVar, boolean z) {
        zavVar.m17463a(this.f23276b, z);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17484a(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f23276b.m17727c(new Status(10, sb.toString()));
    }
}
