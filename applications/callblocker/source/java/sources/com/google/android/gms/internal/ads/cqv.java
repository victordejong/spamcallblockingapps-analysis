package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqv.class */
public final class cqv<V> extends cqs<V, List<V>> {
    public cqv(cpb<? extends crt<? extends V>> cpbVar, boolean z) {
        super(cpbVar, true);
        m10812h();
    }

    @Override // com.google.android.gms.internal.ads.cqs
    /* renamed from: a */
    public final /* synthetic */ Object mo10796a(List list) {
        ArrayList m10877a = cpl.m10877a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            col colVar = (col) it.next();
            m10877a.add(colVar != null ? colVar.mo10940a() : null);
        }
        return Collections.unmodifiableList(m10877a);
    }
}
