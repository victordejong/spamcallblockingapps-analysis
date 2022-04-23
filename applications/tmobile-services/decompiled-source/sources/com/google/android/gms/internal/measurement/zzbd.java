package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbd.class */
public final class zzbd extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ int f8248j = 5;

    /* renamed from: k */
    private final /* synthetic */ String f8249k;

    /* renamed from: l */
    private final /* synthetic */ Object f8250l;

    /* renamed from: m */
    private final /* synthetic */ zzag f8251m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbd(zzag zzagVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.f8251m = zzagVar;
        this.f8249k = str;
        this.f8250l = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8251m.f8187h;
        zzvVar.logHealthData(this.f8248j, this.f8249k, ObjectWrapper.m14257f(this.f8250l), ObjectWrapper.m14257f(null), ObjectWrapper.m14257f(null));
    }
}
