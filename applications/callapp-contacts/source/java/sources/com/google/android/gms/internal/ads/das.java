package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/das.class */
public final class das<V> extends dat<V, List<V>> {
    public das(cyt<? extends dbt<? extends V>> cytVar, boolean z) {
        super(cytVar, true);
        m16933h();
    }

    @Override // com.google.android.gms.internal.ads.dat
    /* renamed from: a */
    public final /* synthetic */ Object mo16920a(List list) {
        ArrayList m17013a = czg.m17013a(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            dav davVar = (dav) it2.next();
            m17013a.add(davVar != null ? davVar.f46905a : null);
        }
        return Collections.unmodifiableList(m17013a);
    }
}
