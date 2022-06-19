package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagj.class */
public final class zzagj {
    public final Uri zza;
    public final List zze;
    public final List zzg;
    public final String zzb = null;
    public final zzagf zzc = null;
    public final zzaga zzd = null;
    public final String zzf = null;
    public final Object zzh = null;

    public /* synthetic */ zzagj(Uri uri, String str, zzagf zzagfVar, zzaga zzagaVar, List list, String str2, List list2, Object obj, zzagi zzagiVar) {
        this.zza = uri;
        this.zze = list;
        this.zzg = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzagj)) {
            return false;
        }
        zzagj zzagjVar = (zzagj) obj;
        return this.zza.equals(zzagjVar.zza) && zzamq.zzc(null, null) && zzamq.zzc(null, null) && zzamq.zzc(null, null) && this.zze.equals(zzagjVar.zze) && zzamq.zzc(null, null) && this.zzg.equals(zzagjVar.zzg) && zzamq.zzc(null, null);
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        return (this.zzg.hashCode() + ((this.zze.hashCode() + (hashCode * 923521)) * 961)) * 31;
    }
}
