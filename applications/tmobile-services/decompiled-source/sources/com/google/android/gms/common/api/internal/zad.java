package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zad.class */
public final class zad<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zac {

    /* renamed from: a */
    private final A f7291a;

    public zad(int i, A a) {
        super(i);
        this.f7291a = a;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: b */
    public final void mo14740b(@NonNull Status status) {
        this.f7291a.m14979z(status);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: c */
    public final void mo14737c(@NonNull zaz zazVar, boolean z) {
        zazVar.m14656b(this.f7291a, z);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: d */
    public final void mo14739d(@NonNull RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f7291a.m14979z(new Status(10, sb.toString()));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    /* renamed from: f */
    public final void mo14738f(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        try {
            this.f7291a.m14981x(zaaVar.m14907p());
        } catch (RuntimeException e) {
            mo14739d(e);
        }
    }
}
