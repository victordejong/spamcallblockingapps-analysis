package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C5842q;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.wq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wq.class */
final /* synthetic */ class C7117wq implements Comparator {

    /* renamed from: d */
    static final Comparator f31671d = new C7117wq();

    private C7117wq() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = C5842q.f18780a;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
