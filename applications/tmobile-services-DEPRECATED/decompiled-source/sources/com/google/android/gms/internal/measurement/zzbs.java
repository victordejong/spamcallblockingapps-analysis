package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbs.class */
final class zzbs extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Activity f8292j;

    /* renamed from: k */
    private final /* synthetic */ zzt f8293k;

    /* renamed from: l */
    private final /* synthetic */ zzag.zzc f8294l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbs(zzag.zzc zzcVar, Activity activity, zzt zztVar) {
        super(zzag.this);
        this.f8294l = zzcVar;
        this.f8292j = activity;
        this.f8293k = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = zzag.this.f8187h;
        zzvVar.onActivitySaveInstanceState(ObjectWrapper.m14257f(this.f8292j), this.f8293k, this.f8190g);
    }
}
