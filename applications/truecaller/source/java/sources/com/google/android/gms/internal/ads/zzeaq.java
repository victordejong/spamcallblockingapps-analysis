package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeaq.class */
public final /* synthetic */ class zzeaq implements zzfrk {
    public static final zzfrk zza = new zzeaq();

    private zzeaq() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm zza(Object obj) {
        return zzfsd.zzc(((ExecutionException) obj).getCause());
    }
}
