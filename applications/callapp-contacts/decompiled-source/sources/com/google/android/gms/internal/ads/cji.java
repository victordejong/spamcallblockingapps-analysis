package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cji.class */
final /* synthetic */ class cji implements Callable {

    /* renamed from: a  reason: collision with root package name */
    static final Callable f25937a = new cji();

    private cji() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) ekb.e().a(aq.C);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) ekb.e().a(aq.D)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzbx.zzer(str2));
                }
            }
        }
        return new cjh(hashMap);
    }
}
