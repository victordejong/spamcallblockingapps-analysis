package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqd.class */
public final /* synthetic */ class zzeqd implements zzfvx {
    public static final /* synthetic */ zzeqd zza = new zzeqd();

    private /* synthetic */ zzeqd() {
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa zza(Object obj) {
        final String str = (String) obj;
        return zzfwq.zzi(new zzevm() { // from class: com.google.android.gms.internal.ads.zzeqc
            @Override // com.google.android.gms.internal.ads.zzevm
            public final void zza(Object obj2) {
                ((Bundle) obj2).putString("ms", str);
            }
        });
    }
}
