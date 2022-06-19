package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpn.class */
public final /* synthetic */ class zzdpn implements zzfln {
    public static final zzfln zza = new zzdpn();

    private zzdpn() {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzdpp zzdppVar : (List) obj) {
            if (zzdppVar != null) {
                arrayList.add(zzdppVar);
            }
        }
        return arrayList;
    }
}
