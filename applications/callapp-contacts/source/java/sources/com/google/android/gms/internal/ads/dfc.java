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

    /* renamed from: a */
    public static dfc m16815a(String str, Context context) {
        return m16814b(str, context, false, bum.f44783a);
    }

    /* renamed from: b */
    public static dfc m16814b(String str, Context context, boolean z, int i) {
        m16986a(context, z);
        m16982a(str, context, z, i);
        return new dfc(context, str, z, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.czy
    /* renamed from: a */
    public final List<Callable<Void>> mo16816a(dtg dtgVar, Context context, beb.C12217a.C12219b c12219b, azz.C12205a c12205a) {
        if (dtgVar.f47548b == null || !this.f46840r) {
            return super.mo16816a(dtgVar, context, c12219b, c12205a);
        }
        int m15727c = dtgVar.m15727c();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.mo16816a(dtgVar, context, c12219b, c12205a));
        arrayList.add(new dua(dtgVar, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W", "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88=", c12219b, m15727c, 24));
        return arrayList;
    }
}
