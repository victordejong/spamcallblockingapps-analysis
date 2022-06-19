package com.google.android.gms.internal.consent_sdk;

import e.m.a.i.c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzt.class */
public final /* synthetic */ class zzt implements Runnable {
    private final c zza;
    private final zzk zzb;

    public zzt(c cVar, zzk zzkVar) {
        this.zza = cVar;
        this.zzb = zzkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.a(this.zzb.zza());
    }
}
