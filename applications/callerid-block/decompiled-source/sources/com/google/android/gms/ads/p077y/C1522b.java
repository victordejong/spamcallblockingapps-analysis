package com.google.android.gms.ads.p077y;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.internal.ads.C1677c2;
import com.google.android.gms.internal.ads.C1890pi;
/* renamed from: com.google.android.gms.ads.y.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/y/b.class */
public class C1522b {

    /* renamed from: a */
    private final C1677c2 f5754a;

    public C1522b(C1677c2 c2Var) {
        this.f5754a = c2Var;
    }

    /* renamed from: a */
    public static void m8523a(@RecentlyNonNull Context context, @RecentlyNonNull AdFormat adFormat, C1357e eVar, @RecentlyNonNull AbstractC1523c cVar) {
        new C1890pi(context, adFormat, eVar == null ? null : eVar.m9031a()).m6196b(cVar);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public String m8522b() {
        return this.f5754a.m7879a();
    }
}
