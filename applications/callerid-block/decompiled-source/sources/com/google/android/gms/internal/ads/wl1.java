package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.C1359f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wl1.class */
public final class wl1 {
    /* renamed from: a */
    public static bl1 m5046a(List<bl1> list, bl1 bl1Var) {
        return list.get(0);
    }

    /* renamed from: b */
    public static zzyx m5045b(Context context, List<bl1> list) {
        ArrayList arrayList = new ArrayList();
        for (bl1 bl1Var : list) {
            if (bl1Var.f6159c) {
                arrayList.add(C1359f.f5460p);
            } else {
                arrayList.add(new C1359f(bl1Var.f6157a, bl1Var.f6158b));
            }
        }
        return new zzyx(context, (C1359f[]) arrayList.toArray(new C1359f[arrayList.size()]));
    }

    /* renamed from: c */
    public static bl1 m5044c(zzyx zzyxVar) {
        return zzyxVar.j ? new bl1(-3, 0, true) : new bl1(zzyxVar.f, zzyxVar.c, false);
    }
}
