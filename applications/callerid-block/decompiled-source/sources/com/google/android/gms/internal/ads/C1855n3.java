package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.n3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n3.class */
public final class C1855n3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<String> m6471a() {
        ArrayList arrayList = new ArrayList();
        m6469c(arrayList, C1888p4.m6223d("gad:dynamite_module:experiment_id", ""));
        m6469c(arrayList, C2062z4.f9306a);
        m6469c(arrayList, C2062z4.f9307b);
        m6469c(arrayList, C2062z4.f9308c);
        m6469c(arrayList, C2062z4.f9309d);
        m6469c(arrayList, C2062z4.f9310e);
        m6469c(arrayList, C2062z4.f9316k);
        m6469c(arrayList, C2062z4.f9311f);
        m6469c(arrayList, C2062z4.f9312g);
        m6469c(arrayList, C2062z4.f9313h);
        m6469c(arrayList, C2062z4.f9314i);
        m6469c(arrayList, C2062z4.f9315j);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<String> m6470b() {
        ArrayList arrayList = new ArrayList();
        m6469c(arrayList, C1797j5.f6881a);
        return arrayList;
    }

    /* renamed from: c */
    private static void m6469c(List<String> list, C1888p4<String> p4Var) {
        String e = p4Var.m6222e();
        if (!TextUtils.isEmpty(e)) {
            list.add(e);
        }
    }
}
