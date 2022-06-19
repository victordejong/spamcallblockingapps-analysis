package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfe.class */
final /* synthetic */ class zzcfe implements zzdvz {
    static final zzdvz zzeaj = new zzcfe();

    private zzcfe() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzcfg zzcfgVar : (List) obj) {
            if (zzcfgVar != null) {
                arrayList.add(zzcfgVar);
            }
        }
        return arrayList;
    }
}
