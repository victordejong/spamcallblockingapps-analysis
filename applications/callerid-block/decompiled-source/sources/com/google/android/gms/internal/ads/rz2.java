package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C1495p;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rz2.class */
final /* synthetic */ class rz2 implements Comparator {

    /* renamed from: b */
    static final Comparator f8412b = new rz2();

    private rz2() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = C1495p.f5695e;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
