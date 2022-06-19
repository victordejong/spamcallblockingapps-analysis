package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.C2286e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chk.class */
public final class chk {
    /* renamed from: a */
    public static cgq m11311a(dyd dydVar) {
        return dydVar.f16098i ? new cgq(-3, 0, true) : new cgq(dydVar.f16094e, dydVar.f16091b, false);
    }

    /* renamed from: a */
    public static cgq m11310a(List<cgq> list, cgq cgqVar) {
        return list.get(0);
    }

    /* renamed from: a */
    public static dyd m11312a(Context context, List<cgq> list) {
        ArrayList arrayList = new ArrayList();
        for (cgq cgqVar : list) {
            if (cgqVar.f12954c) {
                arrayList.add(C2286e.f6606h);
            } else {
                arrayList.add(new C2286e(cgqVar.f12952a, cgqVar.f12953b));
            }
        }
        return new dyd(context, (C2286e[]) arrayList.toArray(new C2286e[arrayList.size()]));
    }
}
