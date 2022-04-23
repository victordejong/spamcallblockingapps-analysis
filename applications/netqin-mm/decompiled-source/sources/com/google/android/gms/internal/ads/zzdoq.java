package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoq.class */
public final class zzdoq {
    /* renamed from: a */
    public static zzdnu m13402a(zzvn zzvnVar) {
        return zzvnVar.f29043i ? new zzdnu(-3, 0, true) : new zzdnu(zzvnVar.f29039e, zzvnVar.f29036b, false);
    }

    /* renamed from: a */
    public static zzdnu m13401a(List<zzdnu> list, zzdnu zzdnuVar) {
        return list.get(0);
    }

    /* renamed from: a */
    public static zzvn m13403a(Context context, List<zzdnu> list) {
        ArrayList arrayList = new ArrayList();
        for (zzdnu zzdnuVar : list) {
            if (zzdnuVar.f27553c) {
                arrayList.add(AdSize.f22655n);
            } else {
                arrayList.add(new AdSize(zzdnuVar.f27551a, zzdnuVar.f27552b));
            }
        }
        return new zzvn(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }
}
