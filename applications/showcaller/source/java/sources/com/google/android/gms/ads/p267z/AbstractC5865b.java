package com.google.android.gms.ads.p267z;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.AbstractC5840o;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.pe0;
/* renamed from: com.google.android.gms.ads.z.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/z/b.class */
public abstract class AbstractC5865b {
    /* renamed from: a */
    public static void m17731a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C5603e c5603e, @RecentlyNonNull AbstractC5866c abstractC5866c) {
        C6155o.m17017k(context, "Context cannot be null.");
        C6155o.m17017k(str, "AdUnitId cannot be null.");
        C6155o.m17017k(c5603e, "AdRequest cannot be null.");
        C6155o.m17017k(abstractC5866c, "LoadCallback cannot be null.");
        new pe0(context, str).m12303d(c5603e.m18285a(), abstractC5866c);
    }

    /* renamed from: b */
    public abstract void mo12305b(AbstractC5621i abstractC5621i);

    /* renamed from: c */
    public abstract void mo12304c(@RecentlyNonNull Activity activity, @RecentlyNonNull AbstractC5840o abstractC5840o);
}
