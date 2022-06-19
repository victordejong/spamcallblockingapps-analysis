package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AbstractC5622a;
import com.google.android.gms.ads.initialization.AbstractC5623b;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.vu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vu.class */
public final class BinderC7084vu extends c40 {

    /* renamed from: d */
    final /* synthetic */ C7121wu f31350d;

    public /* synthetic */ BinderC7084vu(C7121wu c7121wu, C7047uu c7047uu) {
        this.f31350d = c7121wu;
    }

    @Override // com.google.android.gms.internal.ads.d40
    /* renamed from: U4 */
    public final void mo9865U4(List<zzbrl> list) {
        AbstractC5622a m9443m;
        ArrayList arrayList;
        ArrayList arrayList2;
        this.f31350d.f31788e = false;
        this.f31350d.f31789f = true;
        C7121wu c7121wu = this.f31350d;
        m9443m = C7121wu.m9443m(list);
        arrayList = C7121wu.m9452d().f31785b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC5623b) arrayList.get(i)).mo18224a(m9443m);
        }
        arrayList2 = C7121wu.m9452d().f31785b;
        arrayList2.clear();
    }
}
