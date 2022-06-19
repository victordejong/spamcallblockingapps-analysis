package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.ads.beb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvr.class */
public final class cvr implements cvu {

    /* renamed from: a */
    private static final beb.C12217a f46650a = beb.C12217a.m18096c().m18038c("E").mo16259f();

    @Override // com.google.android.gms.internal.ads.cvu
    /* renamed from: a */
    public final beb.C12217a mo17153a() {
        return f46650a;
    }

    @Override // com.google.android.gms.internal.ads.cvu
    /* renamed from: a */
    public final beb.C12217a mo17152a(Context context) throws PackageManager.NameNotFoundException {
        return cvj.m17171a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }
}
