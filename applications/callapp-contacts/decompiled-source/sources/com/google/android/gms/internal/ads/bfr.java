package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfr.class */
final /* synthetic */ class bfr implements cxu {

    /* renamed from: a  reason: collision with root package name */
    static final cxu f24349a = new bfr();

    private bfr() {
    }

    @Override // com.google.android.gms.internal.ads.cxu
    public final Object a(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (bft bftVar : (List) obj) {
            if (bftVar != null) {
                arrayList.add(bftVar);
            }
        }
        return arrayList;
    }
}
