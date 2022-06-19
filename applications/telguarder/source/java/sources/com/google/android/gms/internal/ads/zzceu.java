package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzceu.class */
final /* synthetic */ class zzceu implements zzdvz {
    static final zzdvz zzeaj = new zzceu();

    private zzceu() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzaed zzaedVar : (List) obj) {
            if (zzaedVar != null) {
                arrayList.add(zzaedVar);
            }
        }
        return arrayList;
    }
}
