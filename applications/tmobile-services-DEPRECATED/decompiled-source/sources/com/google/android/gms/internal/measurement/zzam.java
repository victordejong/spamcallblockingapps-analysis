package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzam.class */
public final class zzam extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Activity f8210j;

    /* renamed from: k */
    private final /* synthetic */ String f8211k;

    /* renamed from: l */
    private final /* synthetic */ String f8212l;

    /* renamed from: m */
    private final /* synthetic */ zzag f8213m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(zzag zzagVar, Activity activity, String str, String str2) {
        super(zzagVar);
        this.f8213m = zzagVar;
        this.f8210j = activity;
        this.f8211k = str;
        this.f8212l = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8213m.f8187h;
        zzvVar.setCurrentScreen(ObjectWrapper.m14257f(this.f8210j), this.f8211k, this.f8212l, this.f8189f);
    }
}
