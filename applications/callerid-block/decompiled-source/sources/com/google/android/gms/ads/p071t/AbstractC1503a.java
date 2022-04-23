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
    public static void m8558a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C1357e eVar, int i, @RecentlyNonNull a aVar) {
        C1581h.m8346i(context, "Context cannot be null.");
        C1581h.m8346i(str, "adUnitId cannot be null.");
        C1581h.m8346i(eVar, "AdRequest cannot be null.");
        new av2(context, str, eVar.m9031a(), i, aVar).m8068a();
    }

    /* renamed from: b */
    public abstract void m8557b(AbstractC1375i iVar);

    /* renamed from: c */
    public abstract void m8556c(@RecentlyNonNull Activity activity);
}
