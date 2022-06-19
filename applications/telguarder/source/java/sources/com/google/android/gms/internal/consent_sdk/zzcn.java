package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcn.class */
public final class zzcn<T> implements zzcp<T> {
    private zzct<T> zza;

    public static <T> void zza(zzct<T> zzctVar, zzct<T> zzctVar2) {
        zzcu.zza(zzctVar2);
        zzcn zzcnVar = (zzcn) zzctVar;
        if (zzcnVar.zza == null) {
            zzcnVar.zza = zzctVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final T zza() {
        zzct<T> zzctVar = this.zza;
        if (zzctVar != null) {
            return zzctVar.zza();
        }
        throw new IllegalStateException();
    }
}
