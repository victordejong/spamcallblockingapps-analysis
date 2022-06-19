package com.google.android.gms.ads.p071t;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC1375i;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.av2;
/* renamed from: com.google.android.gms.ads.t.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/t/a.class */
public abstract class AbstractC1503a {
    /* renamed from: a */
    public static void m8558a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C1357e c1357e, int i, @RecentlyNonNull a aVar) {
        C1581h.m8346i(context, "Context cannot be null.");
        C1581h.m8346i(str, "adUnitId cannot be null.");
        C1581h.m8346i(c1357e, "AdRequest cannot be null.");
        new av2(context, str, c1357e.m9031a(), i, aVar).m8068a();
    }

    /* renamed from: b */
    public abstract void m8557b(AbstractC1375i abstractC1375i);

    /* renamed from: c */
    public abstract void m8556c(@RecentlyNonNull Activity activity);
}
