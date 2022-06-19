package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbl.class */
public final class zzdbl implements zzdfj<Bundle> {
    private final zzazn zzdtx;
    private final zzvx zzhba;

    public zzdbl(zzvx zzvxVar, zzazn zzaznVar) {
        this.zzhba = zzvxVar;
        this.zzdtx = zzaznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvx)).intValue();
        zzazn zzaznVar = this.zzdtx;
        if (zzaznVar != null && zzaznVar.zzehz >= intValue) {
            bundle2.putString("app_open_version", "2");
        }
        zzvx zzvxVar = this.zzhba;
        if (zzvxVar != null) {
            if (zzvxVar.orientation == 1) {
                bundle2.putString("avo", "p");
            } else if (this.zzhba.orientation != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}
