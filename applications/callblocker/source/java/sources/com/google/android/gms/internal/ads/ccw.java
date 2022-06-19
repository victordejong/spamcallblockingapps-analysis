package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccw.class */
final /* synthetic */ class ccw implements Callable {

    /* renamed from: a */
    static final Callable f12739a = new ccw();

    private ccw() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) dyx.m8158e().m7876a(edi.f16315A);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) dyx.m8158e().m7876a(edi.f16316B)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, C3632xp.m6804a(str2));
                }
            }
        }
        return new ccu(hashMap);
    }
}
