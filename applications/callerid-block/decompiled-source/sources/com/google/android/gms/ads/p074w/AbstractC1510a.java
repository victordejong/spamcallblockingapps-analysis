package com.google.android.gms.ads.p074w;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC1375i;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.kb;
/* renamed from: com.google.android.gms.ads.w.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/w/a.class */
public abstract class AbstractC1510a {
    /* renamed from: a */
    public static void m8537a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C1357e eVar, @RecentlyNonNull b bVar) {
        C1581h.m8346i(context, "Context cannot be null.");
        C1581h.m8346i(str, "AdUnitId cannot be null.");
        C1581h.m8346i(eVar, "AdRequest cannot be null.");
        C1581h.m8346i(bVar, "LoadCallback cannot be null.");
        new kb(context, str).e(eVar.m9031a(), bVar);
    }

    /* renamed from: b */
    public abstract void m8536b(AbstractC1375i iVar);

    /* renamed from: c */
    public abstract void m8535c(boolean z);

    /* renamed from: d */
    public abstract void m8534d(@RecentlyNonNull Activity activity);
}
