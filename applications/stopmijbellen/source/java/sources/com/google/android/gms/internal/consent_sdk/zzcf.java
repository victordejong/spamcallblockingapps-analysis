package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcf.class */
public final class zzcf<T> implements zzch<T> {
    private zzcl<T> zza;

    public static <T> void zza(zzcl<T> zzclVar, zzcl<T> zzclVar2) {
        zzcf zzcfVar = (zzcf) zzclVar;
        if (zzcfVar.zza == null) {
            zzcfVar.zza = zzclVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcl
    public final T zzb() {
        zzcl<T> zzclVar = this.zza;
        if (zzclVar != null) {
            return zzclVar.zzb();
        }
        throw new IllegalStateException();
    }
}
