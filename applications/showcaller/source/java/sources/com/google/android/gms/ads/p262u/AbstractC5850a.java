package com.google.android.gms.ads.p262u;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC5598c;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.C7001tl;
/* renamed from: com.google.android.gms.ads.u.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/a.class */
public abstract class AbstractC5850a {

    /* renamed from: com.google.android.gms.ads.u.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/a$a.class */
    public static abstract class AbstractC5851a extends AbstractC5598c<AbstractC5850a> {
    }

    /* renamed from: a */
    public static void m17755a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C5603e c5603e, int i, @RecentlyNonNull AbstractC5851a abstractC5851a) {
        C6155o.m17017k(context, "Context cannot be null.");
        C6155o.m17017k(str, "adUnitId cannot be null.");
        C6155o.m17017k(c5603e, "AdRequest cannot be null.");
        new C7001tl(context, str, c5603e.m18285a(), i, abstractC5851a).m10643a();
    }

    /* renamed from: b */
    public abstract void mo14914b(AbstractC5621i abstractC5621i);

    /* renamed from: c */
    public abstract void mo14913c(@RecentlyNonNull Activity activity);
}
