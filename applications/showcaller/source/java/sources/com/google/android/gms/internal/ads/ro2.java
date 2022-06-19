package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ro2.class */
public final class ro2 {

    /* renamed from: a */
    private final Context f29073a;

    /* renamed from: b */
    private final String f29074b;

    /* renamed from: c */
    private final String f29075c;

    public ro2(Context context, zzcgz zzcgzVar) {
        this.f29073a = context;
        this.f29074b = context.getPackageName();
        this.f29075c = zzcgzVar.f33854d;
    }

    /* renamed from: a */
    public final void m11339a(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        C5667s.m18160d();
        map.put("device", C5679c2.m18072e0());
        map.put("app", this.f29074b);
        C5667s.m18160d();
        map.put("is_lite_sdk", true != C5679c2.m18067h(this.f29073a) ? "0" : "1");
        List<String> m13767d = C6679kw.m13767d();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25692f5)).booleanValue()) {
            m13767d.addAll(C5667s.m18156h().m12230p().mo17954m().m14119h());
        }
        map.put("e", TextUtils.join(",", m13767d));
        map.put("sdkVersion", this.f29075c);
    }
}
