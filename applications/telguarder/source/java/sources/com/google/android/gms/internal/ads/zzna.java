package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzna.class */
public final class zzna implements zznd, zzne {
    private final Uri uri;
    private final Handler zzaet;
    private zzid zzafe;
    private final int zzbdm;
    private final zzmz zzbdn;
    private zznd zzbdo;
    private final zzoq zzbeu;
    private final zzkb zzbev;
    private final int zzbew;
    private boolean zzbex;
    private final String zzbdq = null;
    private final zzif zzaex = new zzif();

    public zzna(Uri uri, zzoq zzoqVar, zzkb zzkbVar, int i, Handler handler, zzmz zzmzVar, String str, int i2) {
        this.uri = uri;
        this.zzbeu = zzoqVar;
        this.zzbev = zzkbVar;
        this.zzbdm = i;
        this.zzaet = handler;
        this.zzbdn = zzmzVar;
        this.zzbew = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zznc zza(int i, zzol zzolVar) {
        zzpg.checkArgument(i == 0);
        return new zzms(this.uri, this.zzbeu.zzip(), this.zzbev.zzgr(), this.zzbdm, this.zzaet, this.zzbdn, this, zzolVar, null, this.zzbew);
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zza(zzhh zzhhVar, boolean z, zznd zzndVar) {
        this.zzbdo = zzndVar;
        zzns zznsVar = new zzns(-9223372036854775807L, false);
        this.zzafe = zznsVar;
        zzndVar.zzb(zznsVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zznd
    public final void zzb(zzid zzidVar, Object obj) {
        boolean z = false;
        if (zzidVar.zza(0, this.zzaex, false).zzaip != -9223372036854775807L) {
            z = true;
        }
        if (!this.zzbex || z) {
            this.zzafe = zzidVar;
            this.zzbex = z;
            this.zzbdo.zzb(zzidVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzb(zznc zzncVar) {
        ((zzms) zzncVar).release();
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzhz() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzia() {
        this.zzbdo = null;
    }
}
