package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaf.class */
public final class zzaf {
    private String zza;
    private Uri zzb;
    private final zzah zzc = new zzah();
    private final zzan zzd = new zzan(null);
    private final List zze = Collections.emptyList();
    private final zzfss<zzax> zzf = zzfss.zzo();
    private final zzaq zzg = new zzaq();

    public final zzaf zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzaf zzb(Uri uri) {
        this.zzb = uri;
        return this;
    }

    public final zzaz zzc() {
        Uri uri = this.zzb;
        zzaw zzawVar = uri != null ? new zzaw(uri, null, null, null, this.zze, null, this.zzf, null, null) : null;
        String str = this.zza;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return new zzaz(str2, new zzal(this.zzc, null), zzawVar, new zzas(this.zzg), zzbe.zza, null);
    }
}
