package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvy.class */
public final class zzfvy<V> extends zzfwa<V, List<V>> {
    public zzfvy(zzfsn<? extends zzfxa<? extends V>> zzfsnVar, boolean z) {
        super(zzfsnVar, true);
        zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzfwa
    public final /* bridge */ /* synthetic */ Object zzI(List list) {
        ArrayList zza = zzftk.zza(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzfvz zzfvzVar = (zzfvz) it2.next();
            zza.add(zzfvzVar != null ? zzfvzVar.zza : null);
        }
        return Collections.unmodifiableList(zza);
    }
}
