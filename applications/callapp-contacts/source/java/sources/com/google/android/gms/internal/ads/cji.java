package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cji.class */
final /* synthetic */ class cji implements Callable {

    /* renamed from: a */
    static final Callable f45904a = new cji();

    private cji() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) ekb.m14831e().m18571a(C12187aq.f42613C);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42614D)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzbx.zzer(str2));
                }
            }
        }
        return new cjh(hashMap);
    }
}
