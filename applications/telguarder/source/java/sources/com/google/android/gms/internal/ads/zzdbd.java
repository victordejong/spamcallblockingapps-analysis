package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbd.class */
final class zzdbd implements zzdfi<zzdfj<Bundle>> {
    private final Set<String> zzhav;

    public zzdbd(Set<String> set) {
        this.zzhav = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzhav) {
            arrayList.add(str);
        }
        return zzdzk.zzag(new zzdfj(arrayList) { // from class: com.google.android.gms.internal.ads.zzdbc
            private final ArrayList zzhau;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhau = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.zzhau);
            }
        });
    }
}
