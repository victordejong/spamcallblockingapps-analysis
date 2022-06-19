package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpa.class */
public final /* synthetic */ class zzdpa implements zzfln {
    public static final zzfln zza = new zzdpa();

    private zzdpa() {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzblr zzblrVar : (List) obj) {
            if (zzblrVar != null) {
                arrayList.add(zzblrVar);
            }
        }
        return arrayList;
    }
}
