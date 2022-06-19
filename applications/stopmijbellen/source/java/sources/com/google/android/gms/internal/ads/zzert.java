package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzert.class */
public final class zzert implements zzevn<zzevm<Bundle>> {
    private final zzfaj zza;

    public zzert(zzfaj zzfajVar) {
        this.zza = zzfajVar;
    }

    public final /* synthetic */ void zza(Bundle bundle) {
        bundle.putString("key_schema", this.zza.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        zzfaj zzfajVar = this.zza;
        zzevm zzevmVar = null;
        if (zzfajVar != null) {
            zzevmVar = null;
            if (zzfajVar.zza() != null) {
                zzevmVar = null;
                if (!this.zza.zza().isEmpty()) {
                    zzevmVar = new zzevm() { // from class: com.google.android.gms.internal.ads.zzers
                        @Override // com.google.android.gms.internal.ads.zzevm
                        public final void zza(Object obj) {
                            zzert.this.zza((Bundle) obj);
                        }
                    };
                }
            }
        }
        return zzfwq.zzi(zzevmVar);
    }
}
