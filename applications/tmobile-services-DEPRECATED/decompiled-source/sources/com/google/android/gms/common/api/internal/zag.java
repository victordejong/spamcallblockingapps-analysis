package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zag.class */
public final class zag extends zae<Void> {

    /* renamed from: b */
    private final RegisterListenerMethod<Api.AnyClient, ?> f7296b;

    /* renamed from: c */
    private final UnregisterListenerMethod<Api.AnyClient, ?> f7297c;

    public zag(zabv zabvVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.f7296b = zabvVar.f7249a;
        this.f7297c = zabvVar.f7250b;
    }

    @Override // com.google.android.gms.common.api.internal.zae, com.google.android.gms.common.api.internal.zac
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo14737c(@NonNull zaz zazVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zab
    @Nullable
    /* renamed from: g */
    public final Feature[] mo14736g(GoogleApiManager.zaa<?> zaaVar) {
        return this.f7296b.m14869c();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: h */
    public final boolean mo14735h(GoogleApiManager.zaa<?> zaaVar) {
        return this.f7296b.m14868e();
    }

    @Override // com.google.android.gms.common.api.internal.zae
    /* renamed from: i */
    public final void mo14734i(GoogleApiManager.zaa<?> zaaVar) throws RemoteException {
        this.f7296b.mo14775d(zaaVar.m14907p(), this.f7292a);
        if (this.f7296b.m14870b() != null) {
            zaaVar.m14898y().put(this.f7296b.m14870b(), new zabv(this.f7296b, this.f7297c));
        }
    }
}
