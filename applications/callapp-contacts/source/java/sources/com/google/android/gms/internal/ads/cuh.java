package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuh.class */
public final class cuh {

    /* renamed from: a */
    private final Context f46562a;

    /* renamed from: b */
    private final String f46563b;

    /* renamed from: c */
    private final String f46564c;

    public cuh(Context context, zzbar zzbarVar) {
        this.f46562a = context;
        this.f46563b = context.getPackageName();
        this.f46564c = zzbarVar.zzbrz;
    }

    /* renamed from: a */
    public final void m17218a(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        map.put("app", this.f46563b);
        zzr.zzkv();
        map.put("is_lite_sdk", zzj.zzax(this.f46562a) ? "1" : "0");
        List<String> m18472b = C12187aq.m18472b();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42892eq)).booleanValue()) {
            m18472b.addAll(zzr.zzkz().m13975d().zzzg().f50061g);
        }
        map.put("e", TextUtils.join(",", m18472b));
        map.put("sdkVersion", this.f46564c);
    }
}
