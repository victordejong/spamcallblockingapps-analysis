package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxv.class */
public final class zzdxv implements zzdhm, zzdgf, zzdeu, zzdfl, zzbes, zzdjy {
    private final zzbay zza;
    @GuardedBy("this")
    private boolean zzb = false;

    public zzdxv(zzbay zzbayVar, @Nullable zzfbi zzfbiVar) {
        this.zza = zzbayVar;
        zzbayVar.zzc(2);
        if (zzfbiVar != null) {
            zzbayVar.zzc(1101);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzc(8);
                return;
            }
            this.zza.zzc(7);
            this.zzb = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        switch (zzbewVar.zza) {
            case 1:
                this.zza.zzc(101);
                return;
            case 2:
                this.zza.zzc(102);
                return;
            case 3:
                this.zza.zzc(5);
                return;
            case 4:
                this.zza.zzc(103);
                return;
            case 5:
                this.zza.zzc(104);
                return;
            case 6:
                this.zza.zzc(105);
                return;
            case 7:
                this.zza.zzc(106);
                return;
            default:
                this.zza.zzc(4);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzb() {
        this.zza.zzc(1109);
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzc(final zzbbr zzbbrVar) {
        this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdxr
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                zzbclVar.zzf(zzbbr.this);
            }
        });
        this.zza.zzc(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(final zzfdz zzfdzVar) {
        this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdxu
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                zzfdz zzfdzVar2 = zzfdz.this;
                zzbbh zzau = zzbclVar.zza().zzau();
                zzbbz zzau2 = zzbclVar.zza().zzd().zzau();
                zzau2.zza(zzfdzVar2.zzb.zzb.zzb);
                zzau.zzb(zzau2);
                zzbclVar.zze(zzau);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzf(final zzbbr zzbbrVar) {
        this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdxs
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                zzbclVar.zzf(zzbbr.this);
            }
        });
        this.zza.zzc(1102);
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzh(boolean z) {
        this.zza.zzc(true != z ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzi(final zzbbr zzbbrVar) {
        this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdxt
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                zzbclVar.zzf(zzbbr.this);
            }
        });
        this.zza.zzc(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzk(boolean z) {
        this.zza.zzc(true != z ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        synchronized (this) {
            this.zza.zzc(6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        this.zza.zzc(3);
    }
}
