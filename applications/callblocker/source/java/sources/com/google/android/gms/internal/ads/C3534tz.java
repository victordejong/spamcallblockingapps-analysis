package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.p120c.C2276a;
/* renamed from: com.google.android.gms.internal.ads.tz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tz.class */
public final class C3534tz implements AbstractC3537ub {
    @Override // com.google.android.gms.internal.ads.AbstractC3537ub
    /* renamed from: a */
    public final crt<C2276a.C2277a> mo7116a(Context context) {
        C3658yo c3658yo = new C3658yo();
        dyx.m8162a();
        if (C3634xr.m6784c(context)) {
            C3650yg.f17642a.execute(new RunnableC3539ud(this, context, c3658yo));
        }
        return c3658yo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3537ub
    /* renamed from: a */
    public final crt<String> mo7115a(Context context, int i) {
        return crg.m10778a((Object) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3537ub
    /* renamed from: a */
    public final crt<String> mo7114a(String str, PackageInfo packageInfo) {
        return crg.m10778a(str);
    }
}
