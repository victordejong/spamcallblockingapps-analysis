package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgs.class */
public final class zzcgs implements zzq, zzv, zzahi, zzahk, zzvc {
    private zzvc zzchd;
    private zzahi zzdgz;
    private zzahk zzdha;
    private zzq zzdsv;
    private zzv zzdsz;

    private zzcgs() {
    }

    public /* synthetic */ zzcgs(zzcgl zzcglVar) {
        this();
    }

    public final void zza(zzvc zzvcVar, zzahi zzahiVar, zzq zzqVar, zzahk zzahkVar, zzv zzvVar) {
        synchronized (this) {
            this.zzchd = zzvcVar;
            this.zzdgz = zzahiVar;
            this.zzdsv = zzqVar;
            this.zzdha = zzahkVar;
            this.zzdsz = zzvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        synchronized (this) {
            zzvc zzvcVar = this.zzchd;
            if (zzvcVar != null) {
                zzvcVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final void onAppEvent(String str, String str2) {
        synchronized (this) {
            zzahk zzahkVar = this.zzdha;
            if (zzahkVar != null) {
                zzahkVar.onAppEvent(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        synchronized (this) {
            zzq zzqVar = this.zzdsv;
            if (zzqVar != null) {
                zzqVar.onPause();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        synchronized (this) {
            zzq zzqVar = this.zzdsv;
            if (zzqVar != null) {
                zzqVar.onResume();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        synchronized (this) {
            zzq zzqVar = this.zzdsv;
            if (zzqVar != null) {
                zzqVar.onUserLeaveHint();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        synchronized (this) {
            zzq zzqVar = this.zzdsv;
            if (zzqVar != null) {
                zzqVar.zza(zznVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahi
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            zzahi zzahiVar = this.zzdgz;
            if (zzahiVar != null) {
                zzahiVar.zza(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        synchronized (this) {
            zzq zzqVar = this.zzdsv;
            if (zzqVar != null) {
                zzqVar.zzvo();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzwg() {
        synchronized (this) {
            zzv zzvVar = this.zzdsz;
            if (zzvVar != null) {
                zzvVar.zzwg();
            }
        }
    }
}
