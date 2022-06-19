package com.google.android.gms.measurement.internal;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzjn.class */
public final /* synthetic */ class zzjn implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzjr f6445a;

    /* renamed from: b */
    public final /* synthetic */ int f6446b;

    /* renamed from: c */
    public final /* synthetic */ zzeh f6447c;

    /* renamed from: d */
    public final /* synthetic */ Intent f6448d;

    public /* synthetic */ zzjn(zzjr zzjrVar, int i, zzeh zzehVar, Intent intent) {
        this.f6445a = zzjrVar;
        this.f6446b = i;
        this.f6447c = zzehVar;
        this.f6448d = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjr zzjrVar = this.f6445a;
        int i = this.f6446b;
        zzeh zzehVar = this.f6447c;
        Intent intent = this.f6448d;
        if (((zzjq) zzjrVar.f6452a).zzc(i)) {
            zzehVar.n.m38589b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzjrVar.m38556c().n.m38590a("Completed wakeful intent.");
            ((zzjq) zzjrVar.f6452a).m38560a(intent);
        }
    }
}
