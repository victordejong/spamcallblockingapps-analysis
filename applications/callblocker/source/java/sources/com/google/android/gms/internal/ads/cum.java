package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.amp;
import com.google.android.gms.internal.ads.atw;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cum.class */
public final class cum extends clf {
    private cum(Context context, String str, boolean z, int i) {
        super(context, str, z, i);
    }

    /* renamed from: a */
    public static cum m10650a(String str, Context context, boolean z) {
        return m10649b(str, context, false, blk.f11479a);
    }

    /* renamed from: b */
    public static cum m10649b(String str, Context context, boolean z, int i) {
        m11115a(context, z);
        m11112a(str, context, z, i);
        return new cum(context, str, z, i);
    }

    @Override // com.google.android.gms.internal.ads.clf
    /* renamed from: a */
    public final List<Callable<Void>> mo10651a(din dinVar, Context context, atw.C2798a.C2799a c2799a, amp.C2781a c2781a) {
        ArrayList arrayList;
        if (dinVar.m9407c() == null || !this.f13270a) {
            arrayList = super.mo10651a(dinVar, context, c2799a, c2781a);
        } else {
            int m9395o = dinVar.m9395o();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(super.mo10651a(dinVar, context, c2799a, c2781a));
            arrayList2.add(new dji(dinVar, "hYPTVQdTm2q1YMo1lUce4yXfJpjfBpohGFUC3CCt6OsJQwu7mUSAt5mBInaYKugO", "pf4sJGlvLCh5M9DSeQtdmDF5FY3IMGGhi6Z7oCoKXow=", c2799a, m9395o, 24));
            arrayList = arrayList2;
        }
        return arrayList;
    }
}
