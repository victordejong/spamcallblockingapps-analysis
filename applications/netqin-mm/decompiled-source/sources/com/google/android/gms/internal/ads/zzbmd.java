package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmd.class */
public final class zzbmd implements zzbma {

    /* renamed from: a */
    public final Context f25151a;

    public zzbmd(Context context) {
        this.f25151a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbma
    /* renamed from: a */
    public final void mo15325a(Map<String, String> map) {
        CookieManager c;
        String str = map.get("cookie");
        if (!TextUtils.isEmpty(str) && (c = zzp.m17967e().mo16028c(this.f25151a)) != null) {
            c.setCookie((String) zzwm.m11166e().m16921a(zzabb.f23851m0), str);
        }
    }
}
