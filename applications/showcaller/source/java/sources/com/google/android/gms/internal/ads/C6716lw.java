package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lw.class */
public final class C6716lw {
    /* renamed from: a */
    public static List<String> m13414a() {
        ArrayList arrayList = new ArrayList();
        m13412c(arrayList, C6791nx.m12800d("gad:dynamite_module:experiment_id", ""));
        m13412c(arrayList, C7124wx.f31813a);
        m13412c(arrayList, C7124wx.f31814b);
        m13412c(arrayList, C7124wx.f31815c);
        m13412c(arrayList, C7124wx.f31816d);
        m13412c(arrayList, C7124wx.f31817e);
        m13412c(arrayList, C7124wx.f31823k);
        m13412c(arrayList, C7124wx.f31818f);
        m13412c(arrayList, C7124wx.f31819g);
        m13412c(arrayList, C7124wx.f31820h);
        m13412c(arrayList, C7124wx.f31821i);
        m13412c(arrayList, C7124wx.f31822j);
        return arrayList;
    }

    /* renamed from: b */
    public static List<String> m13413b() {
        ArrayList arrayList = new ArrayList();
        m13412c(arrayList, C6607iy.f24538a);
        return arrayList;
    }

    /* renamed from: c */
    private static void m13412c(List<String> list, C6791nx<String> c6791nx) {
        String m12799e = c6791nx.m12799e();
        if (!TextUtils.isEmpty(m12799e)) {
            list.add(m12799e);
        }
    }
}
