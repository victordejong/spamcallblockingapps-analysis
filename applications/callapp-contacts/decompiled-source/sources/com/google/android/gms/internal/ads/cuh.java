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

    /* renamed from: a  reason: collision with root package name */
    private final Context f26413a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26414b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26415c;

    public cuh(Context context, zzbar zzbarVar) {
        this.f26413a = context;
        this.f26414b = context.getPackageName();
        this.f26415c = zzbarVar.zzbrz;
    }

    public final void a(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        map.put("app", this.f26414b);
        zzr.zzkv();
        map.put("is_lite_sdk", zzj.zzax(this.f26413a) ? "1" : "0");
        List<String> b2 = aq.b();
        if (((Boolean) ekb.e().a(aq.eq)).booleanValue()) {
            b2.addAll(zzr.zzkz().d().zzzg().g);
        }
        map.put("e", TextUtils.join(",", b2));
        map.put("sdkVersion", this.f26415c);
    }
}
