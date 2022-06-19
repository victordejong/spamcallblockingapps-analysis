package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffq.class */
public final class zzffq {
    private final zzffp zza = new zzffp();
    private int zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;

    public final zzffp zza() {
        zzffp clone = this.zza.clone();
        zzffp zzffpVar = this.zza;
        zzffpVar.zza = false;
        zzffpVar.zzb = false;
        return clone;
    }

    public final String zzb() {
        StringBuilder m8752j = C0082b.m8752j("\n\tPool does not exist: ");
        m8752j.append(this.zzd);
        m8752j.append("\n\tNew pools created: ");
        m8752j.append(this.zzb);
        m8752j.append("\n\tPools removed: ");
        m8752j.append(this.zzc);
        m8752j.append("\n\tEntries added: ");
        m8752j.append(this.zzf);
        m8752j.append("\n\tNo entries retrieved: ");
        return C0033h.m8885l(m8752j, this.zze, "\n");
    }

    public final void zzc() {
        this.zzf++;
    }

    public final void zzd() {
        this.zzb++;
        this.zza.zza = true;
    }

    public final void zze() {
        this.zze++;
    }

    public final void zzf() {
        this.zzd++;
    }

    public final void zzg() {
        this.zzc++;
        this.zza.zzb = true;
    }
}
