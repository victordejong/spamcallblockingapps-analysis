package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cps.class */
public final class cps {
    /* renamed from: a */
    public static coy m17357a(zzvt zzvtVar) {
        return zzvtVar.zzcit ? new coy(-3, 0, true) : new coy(zzvtVar.width, zzvtVar.height, false);
    }

    /* renamed from: a */
    public static coy m17356a(List<coy> list) {
        return list.get(0);
    }

    /* renamed from: a */
    public static zzvt m17358a(Context context, List<coy> list) {
        ArrayList arrayList = new ArrayList();
        for (coy coyVar : list) {
            if (coyVar.f46288c) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(coyVar.f46286a, coyVar.f46287b));
            }
        }
        return new zzvt(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }
}
