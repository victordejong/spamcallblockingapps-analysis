package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.internal.zzgl;
import com.google.android.gms.measurement.internal.zzgm;
import com.google.android.gms.measurement.internal.zzho;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/zzc.class */
final class zzc implements zzho {
    final /* synthetic */ zzbr zza;

    public zzc(zzbr zzbrVar) {
        this.zza = zzbrVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzh(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzb(String str, String str2, Bundle bundle, long j) {
        this.zza.zzi(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final Map<String, Object> zzc(String str, String str2, boolean z) {
        return this.zza.zzB(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzd(zzgl zzglVar) {
        this.zza.zzd(zzglVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zze(zzgm zzgmVar) {
        this.zza.zze(zzgmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzf(zzgm zzgmVar) {
        this.zza.zzf(zzgmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final String zzg() {
        return this.zza.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final String zzh() {
        return this.zza.zzA();
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final String zzi() {
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final String zzj() {
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final long zzk() {
        return this.zza.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzl(String str) {
        this.zza.zzu(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzm(String str) {
        this.zza.zzv(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzn(Bundle bundle) {
        this.zza.zzk(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final void zzo(String str, String str2, Bundle bundle) {
        this.zza.zzl(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final List<Bundle> zzp(String str, String str2) {
        return this.zza.zzm(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final int zzq(String str) {
        return this.zza.zzE(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzho
    public final Object zzr(int i) {
        return this.zza.zzH(i);
    }
}
