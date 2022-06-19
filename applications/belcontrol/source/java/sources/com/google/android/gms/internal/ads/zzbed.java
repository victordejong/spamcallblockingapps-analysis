package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbed.class */
public final /* synthetic */ class zzbed implements Runnable {
    private final zzbee zzeqt;

    public zzbed(zzbee zzbeeVar) {
        this.zzeqt = zzbeeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbee zzbeeVar = this.zzeqt;
        zzbeeVar.zzequ.zzadg();
        zzc zzact = zzbeeVar.zzequ.zzact();
        if (zzact != null) {
            zzact.zzvx();
        }
    }
}
