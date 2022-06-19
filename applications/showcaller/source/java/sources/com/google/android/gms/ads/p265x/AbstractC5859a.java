package com.google.android.gms.ads.p265x;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.r40;
/* renamed from: com.google.android.gms.ads.x.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/x/a.class */
public abstract class AbstractC5859a {
    /* renamed from: a */
    public static void m17736a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C5603e c5603e, @RecentlyNonNull AbstractC5860b abstractC5860b) {
        C6155o.m17017k(context, "Context cannot be null.");
        C6155o.m17017k(str, "AdUnitId cannot be null.");
        C6155o.m17017k(c5603e, "AdRequest cannot be null.");
        C6155o.m17017k(abstractC5860b, "LoadCallback cannot be null.");
        new r40(context, str).m11724e(c5603e.m18285a(), abstractC5860b);
    }

    /* renamed from: b */
    public abstract void mo11727b(AbstractC5621i abstractC5621i);

    /* renamed from: c */
    public abstract void mo11726c(boolean z);

    /* renamed from: d */
    public abstract void mo11725d(@RecentlyNonNull Activity activity);
}
