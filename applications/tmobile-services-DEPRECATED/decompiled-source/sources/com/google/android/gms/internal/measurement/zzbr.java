package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr.class */
final class zzbr extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Activity f8290j;

    /* renamed from: k */
    private final /* synthetic */ zzag.zzc f8291k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbr(zzag.zzc zzcVar, Activity activity) {
        super(zzag.this);
        this.f8291k = zzcVar;
        this.f8290j = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = zzag.this.f8187h;
        zzvVar.onActivityResumed(ObjectWrapper.m14257f(this.f8290j), this.f8190g);
    }
}
