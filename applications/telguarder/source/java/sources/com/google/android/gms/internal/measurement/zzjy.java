package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjy.class */
final class zzjy extends zzjw<zzjx, zzjx> {
    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ void zza(zzjx zzjxVar, int i, long j) {
        zzjxVar.zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ zzjx zzb() {
        return zzjx.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ void zzc(Object obj, zzjx zzjxVar) {
        ((zzhs) obj).zzc = zzjxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ zzjx zzd(Object obj) {
        return ((zzhs) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final void zze(Object obj) {
        ((zzhs) obj).zzc.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ zzjx zzf(zzjx zzjxVar, zzjx zzjxVar2) {
        zzjx zzjxVar3 = zzjxVar2;
        return zzjxVar3.equals(zzjx.zza()) ? zzjxVar : zzjx.zzc(zzjxVar, zzjxVar3);
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ int zzg(zzjx zzjxVar) {
        return zzjxVar.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ int zzh(zzjx zzjxVar) {
        return zzjxVar.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzjw
    public final /* bridge */ /* synthetic */ void zzi(zzjx zzjxVar, zzha zzhaVar) throws IOException {
        zzjxVar.zzi(zzhaVar);
    }
}
