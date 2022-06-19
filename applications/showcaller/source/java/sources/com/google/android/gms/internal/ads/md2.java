package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.C5713l1;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/md2.class */
final /* synthetic */ class md2 implements Callable {

    /* renamed from: a */
    static final Callable f26546a = new md2();

    private md2() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25475F);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25483G)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, C5713l1.m18001a(str2));
                }
            }
        }
        return new od2(hashMap);
    }
}
