package com.google.android.gms.ads.p266y;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.internal.ads.C7195yu;
import com.google.android.gms.internal.ads.dc0;
/* renamed from: com.google.android.gms.ads.y.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/y/b.class */
public class C5862b {

    /* renamed from: a */
    private final C7195yu f18824a;

    public C5862b(C7195yu c7195yu) {
        this.f18824a = c7195yu;
    }

    /* renamed from: a */
    public static void m17735a(@RecentlyNonNull Context context, @RecentlyNonNull AdFormat adFormat, C5603e c5603e, @RecentlyNonNull AbstractC5863c abstractC5863c) {
        new dc0(context, adFormat, c5603e == null ? null : c5603e.m18285a()).m15832b(abstractC5863c);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public String m17734b() {
        return this.f18824a.m8685a();
    }
}
