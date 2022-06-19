package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.C5605f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bk2.class */
public final class bk2 {
    /* renamed from: a */
    public static hj2 m16327a(List<hj2> list, hj2 hj2Var) {
        return list.get(0);
    }

    /* renamed from: b */
    public static zzbdl m16326b(Context context, List<hj2> list) {
        ArrayList arrayList = new ArrayList();
        for (hj2 hj2Var : list) {
            if (hj2Var.f23931c) {
                arrayList.add(C5605f.f18234h);
            } else {
                arrayList.add(new C5605f(hj2Var.f23929a, hj2Var.f23930b));
            }
        }
        return new zzbdl(context, (C5605f[]) arrayList.toArray(new C5605f[arrayList.size()]));
    }

    /* renamed from: c */
    public static hj2 m16325c(zzbdl zzbdlVar) {
        return zzbdlVar.f33690l ? new hj2(-3, 0, true) : new hj2(zzbdlVar.f33686h, zzbdlVar.f33683e, false);
    }
}
