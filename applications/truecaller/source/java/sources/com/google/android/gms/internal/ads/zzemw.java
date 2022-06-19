package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemw.class */
public final class zzemw implements zzery<zzerx<Bundle>> {
    private final Set<String> zza;

    public zzemw(Set<String> set) {
        this.zza = set;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerx<Bundle>> zza() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zza) {
            arrayList.add(str);
        }
        return zzfsd.zza(new zzerx(arrayList) { // from class: com.google.android.gms.internal.ads.zzemv
            private final ArrayList zza;

            {
                this.zza = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzerx
            public final void zzf(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.zza);
            }
        });
    }
}
