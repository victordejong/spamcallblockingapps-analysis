package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzau.class */
public class zzau {
    public final Uri zza;
    public final List zze;
    public final zzfss<zzax> zzg;
    @Deprecated
    public final List zzh;
    public final Object zzi;
    public final String zzb = null;
    public final zzao zzc = null;
    public final zzae zzd = null;
    public final String zzf = null;

    public /* synthetic */ zzau(Uri uri, String str, zzao zzaoVar, zzae zzaeVar, List list, String str2, zzfss zzfssVar, Object obj, zzat zzatVar) {
        this.zza = uri;
        this.zze = list;
        this.zzg = zzfssVar;
        zzfsp zzi = zzfss.zzi();
        if (zzfssVar.size() > 0) {
            zzax zzaxVar = (zzax) zzfssVar.get(0);
            throw null;
        }
        this.zzh = zzi.zzf();
        this.zzi = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzau)) {
            return false;
        }
        zzau zzauVar = (zzau) obj;
        return this.zza.equals(zzauVar.zza) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && this.zze.equals(zzauVar.zze) && zzfn.zzP(null, null) && this.zzg.equals(zzauVar.zzg) && zzfn.zzP(null, null);
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        return (this.zzg.hashCode() + ((this.zze.hashCode() + (hashCode * 923521)) * 961)) * 31;
    }
}
