package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmd.class */
public final class zzmd extends zzmb {
    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ int zza(Object obj) {
        return ((zzmc) obj).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzmc) obj).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ Object zzc(Object obj) {
        return ((zzjx) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* bridge */ /* synthetic */ Object zzd(Object obj, Object obj2) {
        zzmc zzmcVar = (zzmc) obj2;
        return zzmcVar.equals(zzmc.zzc()) ? obj : zzmc.zzd((zzmc) obj, zzmcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ Object zze() {
        return zzmc.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i, long j) {
        ((zzmc) obj).zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final void zzg(Object obj) {
        ((zzjx) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ void zzh(Object obj, Object obj2) {
        ((zzjx) obj).zzc = (zzmc) obj2;
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final /* synthetic */ void zzi(Object obj, zzjf zzjfVar) throws IOException {
        ((zzmc) obj).zzi(zzjfVar);
    }
}
