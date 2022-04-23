package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah extends zae<Boolean> {

    /* renamed from: b */
    private final ListenerHolder.ListenerKey<?> f7298b;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f7298b = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zae, com.google.android.gms.common.api.internal.zac
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo14737c(@NonNull zaz zazVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zab
    @Nullable
    /* renamed from: g */
    public final Feature[] mo14736g(GoogleApiManager.zaa<?> zaaVar) {
        zabv zabvVar = zaaVar.m14898y().get(this.f7298b);
        if (zabvVar == null) {
            return null;
        }
        return zabvVar.f7249a.m14869c();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: h */
    public final boolean mo14735h(GoogleApiManager.zaa<?> zaaVar) {
        zabv zabvVar = zaaVar.m14898y().get(this.f7298b);
        return zabvVar != null && zabvVar.f7249a.m14868e();
    }

    @Override // com.google.android.gms.common.api.internal.zae
    /* renamed from: i */
    public final void mo14734i(GoogleApiManager.zaa<?> zaaVar) throws RemoteException {
        zabv remove = zaaVar.m14898y().remove(this.f7298b);
        if (remove != null) {
            remove.f7250b.mo14778b(zaaVar.m14907p(), this.f7292a);
            remove.f7249a.m14871a();
            return;
        }
        this.f7292a.m10826e(Boolean.FALSE);
    }
}
