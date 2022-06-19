package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c.class */
public final class C2851c {
    /* renamed from: a */
    public static List<String> m11526a() {
        ArrayList arrayList = new ArrayList();
        m11525a(arrayList, C2761ab.m13689a("gad:dynamite_module:experiment_id", ""));
        m11525a(arrayList, C2788ao.f10082a);
        m11525a(arrayList, C2788ao.f10083b);
        m11525a(arrayList, C2788ao.f10084c);
        m11525a(arrayList, C2788ao.f10085d);
        m11525a(arrayList, C2788ao.f10086e);
        m11525a(arrayList, C2788ao.f10092k);
        m11525a(arrayList, C2788ao.f10087f);
        m11525a(arrayList, C2788ao.f10088g);
        m11525a(arrayList, C2788ao.f10089h);
        m11525a(arrayList, C2788ao.f10090i);
        m11525a(arrayList, C2788ao.f10091j);
        return arrayList;
    }

    /* renamed from: a */
    private static void m11525a(List<String> list, C2761ab<String> c2761ab) {
        String mo13599a = c2761ab.mo13599a();
        if (!TextUtils.isEmpty(mo13599a)) {
            list.add(mo13599a);
        }
    }

    /* renamed from: b */
    public static List<String> m11524b() {
        ArrayList arrayList = new ArrayList();
        m11525a(arrayList, C2821ay.f10563a);
        return arrayList;
    }
}
