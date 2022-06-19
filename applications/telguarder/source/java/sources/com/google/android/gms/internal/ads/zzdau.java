package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdau.class */
final /* synthetic */ class zzdau implements zzdyu {
    static final zzdyu zzboq = new zzdau();

    private zzdau() {
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return zzdzk.zzag(new zzdfj((String) obj) { // from class: com.google.android.gms.internal.ads.zzdax
            private final String zzdlh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Object obj2) {
                ((Bundle) obj2).putString("ms", this.zzdlh);
            }
        });
    }
}
