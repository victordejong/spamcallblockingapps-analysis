package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcf.class */
public final class zzfcf {
    private final zzfce zza = new zzfce();
    private int zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;

    public final void zza() {
        this.zzd++;
    }

    public final void zzb() {
        this.zze++;
    }

    public final void zzc() {
        this.zzb++;
        this.zza.zza = true;
    }

    public final void zzd() {
        this.zzc++;
        this.zza.zzb = true;
    }

    public final void zze() {
        this.zzf++;
    }

    public final zzfce zzf() {
        zzfce clone = this.zza.clone();
        zzfce zzfceVar = this.zza;
        zzfceVar.zza = false;
        zzfceVar.zzb = false;
        return clone;
    }

    public final String zzg() {
        StringBuilder m8728C = C22128a.m8728C("\n\tPool does not exist: ");
        m8728C.append(this.zzd);
        m8728C.append("\n\tNew pools created: ");
        m8728C.append(this.zzb);
        m8728C.append("\n\tPools removed: ");
        m8728C.append(this.zzc);
        m8728C.append("\n\tEntries added: ");
        m8728C.append(this.zzf);
        m8728C.append("\n\tNo entries retrieved: ");
        return C22128a.m8697J2(m8728C, this.zze, StringConstant.NEW_LINE);
    }
}
