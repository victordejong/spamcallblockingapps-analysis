package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemn.class */
public final /* synthetic */ class zzemn implements zzfrk {
    public static final zzfrk zza = new zzemn();

    private zzemn() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm zza(Object obj) {
        return zzfsd.zza(new zzerx((String) obj) { // from class: com.google.android.gms.internal.ads.zzemo
            private final String zza;

            {
                this.zza = str;
            }

            @Override // com.google.android.gms.internal.ads.zzerx
            public final void zzf(Object obj2) {
                ((Bundle) obj2).putString("ms", this.zza);
            }
        });
    }
}
