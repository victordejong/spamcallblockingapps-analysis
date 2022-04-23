package com.google.android.gms.ads.p078z;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC1375i;
import com.google.android.gms.ads.AbstractC1486n;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.al;
/* renamed from: com.google.android.gms.ads.z.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/z/b.class */
public abstract class AbstractC1525b {
    /* renamed from: a */
    public static void m8519a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C1357e eVar, @RecentlyNonNull c cVar) {
        C1581h.m8346i(context, "Context cannot be null.");
        C1581h.m8346i(str, "AdUnitId cannot be null.");
        C1581h.m8346i(eVar, "AdRequest cannot be null.");
        C1581h.m8346i(cVar, "LoadCallback cannot be null.");
        new al(context, str).d(eVar.m9031a(), cVar);
    }

    /* renamed from: b */
    public abstract void m8518b(AbstractC1375i iVar);

    /* renamed from: c */
    public abstract void m8517c(@RecentlyNonNull Activity activity, @RecentlyNonNull AbstractC1486n nVar);
}
