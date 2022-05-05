package com.google.firebase.analytics;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzib;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/zzc.class */
final class zzc implements zzib {
    private final /* synthetic */ zzag zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zzag zzagVar) {
        this.zza = zzagVar;
    }

    public final Object zza(int i) {
        return this.zza.m13428f(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zza() {
        return this.zza.m13437a0();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final List<Bundle> zza(String str, String str2) {
        return this.zza.m13458G(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final Map<String, Object> zza(String str, String str2, boolean z) {
        return this.zza.m13424h(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zza(Bundle bundle) {
        this.zza.m13420l(bundle);
    }

    public final void zza(zzgw zzgwVar) {
        this.zza.m13416p(zzgwVar);
    }

    public final void zza(zzgx zzgxVar) {
        this.zza.m13415q(zzgxVar);
    }

    public final void zza(@Nullable Boolean bool) {
        this.zza.m13414r(bool);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zza(String str) {
        this.zza.m13453L(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.m13409w(str, str2, bundle);
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        this.zza.m13408x(str, str2, bundle, j);
    }

    public final void zza(String str, String str2, Object obj) {
        this.zza.m13406z(str, str2, obj);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzb() {
        return this.zza.m13433c0();
    }

    public final void zzb(zzgw zzgwVar) {
        this.zza.m13454K(zzgwVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzb(String str) {
        this.zza.m13447R(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zza.m13452M(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final int zzc(String str) {
        return this.zza.m13444U(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzc() {
        return this.zza.m13443V();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzd() {
        return this.zza.m13449P();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final long zze() {
        return this.zza.m13441X();
    }
}
