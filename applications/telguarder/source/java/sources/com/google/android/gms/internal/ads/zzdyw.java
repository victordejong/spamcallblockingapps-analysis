package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyw.class */
public final class zzdyw<V> extends zzdyx<V, List<V>> {
    public zzdyw(zzdwy<? extends zzdzw<? extends V>> zzdwyVar, boolean z) {
        super(zzdwyVar, true);
        zzazw();
    }

    @Override // com.google.android.gms.internal.ads.zzdyx
    public final /* synthetic */ Object zzl(List list) {
        ArrayList zzet = zzdxl.zzet(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdyz zzdyzVar = (zzdyz) it.next();
            zzet.add(zzdyzVar != null ? zzdyzVar.value : null);
        }
        return Collections.unmodifiableList(zzet);
    }
}
