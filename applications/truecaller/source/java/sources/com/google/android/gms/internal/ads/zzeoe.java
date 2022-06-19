package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoe.class */
public final class zzeoe implements zzery<zzerx<Bundle>> {
    private final zzewv zza;

    public zzeoe(zzewv zzewvVar) {
        this.zza = zzewvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerx<Bundle>> zza() {
        zzewv zzewvVar = this.zza;
        zzerx zzerxVar = null;
        if (zzewvVar != null) {
            zzerxVar = null;
            if (zzewvVar.zza() != null) {
                zzerxVar = null;
                if (!this.zza.zza().isEmpty()) {
                    zzerxVar = new zzerx(this) { // from class: com.google.android.gms.internal.ads.zzeod
                        private final zzeoe zza;

                        {
                            this.zza = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzerx
                        public final void zzf(Object obj) {
                            this.zza.zzb((Bundle) obj);
                        }
                    };
                }
            }
        }
        return zzfsd.zza(zzerxVar);
    }

    public final /* synthetic */ void zzb(Bundle bundle) {
        bundle.putString("key_schema", this.zza.zza());
    }
}
