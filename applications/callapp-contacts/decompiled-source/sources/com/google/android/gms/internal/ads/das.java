package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/das.class */
public final class das<V> extends dat<V, List<V>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public das(cyt<? extends dbt<? extends V>> cytVar, boolean z) {
        super(cytVar, true);
        h();
    }

    @Override // com.google.android.gms.internal.ads.dat
    public final /* synthetic */ Object a(List list) {
        ArrayList a2 = czg.a(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            dav davVar = (dav) it2.next();
            a2.add(davVar != null ? davVar.f26686a : null);
        }
        return Collections.unmodifiableList(a2);
    }
}
