package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cps.class */
public final class cps {
    public static coy a(zzvt zzvtVar) {
        return zzvtVar.zzcit ? new coy(-3, 0, true) : new coy(zzvtVar.width, zzvtVar.height, false);
    }

    public static coy a(List<coy> list) {
        return list.get(0);
    }

    public static zzvt a(Context context, List<coy> list) {
        ArrayList arrayList = new ArrayList();
        for (coy coyVar : list) {
            if (coyVar.f26195c) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(coyVar.f26193a, coyVar.f26194b));
            }
        }
        return new zzvt(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }
}
