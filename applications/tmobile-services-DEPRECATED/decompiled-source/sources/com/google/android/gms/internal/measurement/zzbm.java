package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbm.class */
public final class zzbm extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8271j;

    /* renamed from: k */
    private final /* synthetic */ String f8272k;

    /* renamed from: l */
    private final /* synthetic */ Object f8273l;

    /* renamed from: m */
    private final /* synthetic */ boolean f8274m;

    /* renamed from: n */
    private final /* synthetic */ zzag f8275n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbm(zzag zzagVar, String str, String str2, Object obj, boolean z) {
        super(zzagVar);
        this.f8275n = zzagVar;
        this.f8271j = str;
        this.f8272k = str2;
        this.f8273l = obj;
        this.f8274m = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8275n.f8187h;
        zzvVar.setUserProperty(this.f8271j, this.f8272k, ObjectWrapper.m14257f(this.f8273l), this.f8274m, this.f8189f);
    }
}
