package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeql.class */
final class zzeql implements zzevn<zzevm<Bundle>> {
    private final Set<String> zza;

    public zzeql(Set<String> set) {
        this.zza = set;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.zza) {
            arrayList.add(str);
        }
        return zzfwq.zzi(new zzevm() { // from class: com.google.android.gms.internal.ads.zzeqk
            @Override // com.google.android.gms.internal.ads.zzevm
            public final void zza(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", arrayList);
            }
        });
    }
}
