package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.azz;
import com.google.android.gms.internal.ads.beb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfc.class */
public final class dfc extends czy {
    private dfc(Context context, String str, boolean z, int i) {
        super(context, str, z, i);
    }

    public static dfc a(String str, Context context) {
        return b(str, context, false, bum.f25136a);
    }

    public static dfc b(String str, Context context, boolean z, int i) {
        a(context, z);
        a(str, context, z, i);
        return new dfc(context, str, z, i);
    }

    @Override // com.google.android.gms.internal.ads.czy
    protected final List<Callable<Void>> a(dtg dtgVar, Context context, beb.a.b bVar, azz.a aVar) {
        if (dtgVar.f27191b == null || !this.r) {
            return super.a(dtgVar, context, bVar, aVar);
        }
        int c2 = dtgVar.c();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.a(dtgVar, context, bVar, aVar));
        arrayList.add(new dua(dtgVar, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W", "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88=", bVar, c2, 24));
        return arrayList;
    }
}
