package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.C1452u0;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qf1.class */
final /* synthetic */ class qf1 implements Callable {

    /* renamed from: a */
    static final Callable f8204a = new qf1();

    private qf1() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) C1674c.m7906c().m6878b(C1842m3.f7223C);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) C1674c.m7906c().m6878b(C1842m3.f7230D)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, C1452u0.m8714a(str2));
                }
            }
        }
        return new sf1(hashMap);
    }
}
