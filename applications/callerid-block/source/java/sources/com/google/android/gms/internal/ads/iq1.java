package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iq1.class */
public final class iq1 {

    /* renamed from: a */
    private final Context f6832a;

    /* renamed from: b */
    private final String f6833b;

    /* renamed from: c */
    private final String f6834c;

    public iq1(Context context, zzbbq zzbbqVar) {
        this.f6832a = context;
        this.f6833b = context.getPackageName();
        this.f6834c = zzbbqVar.b;
    }

    /* renamed from: a */
    public final void m7108a(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        C1407r.m8920d();
        map.put("device", C1433l1.m8766c0());
        map.put("app", this.f6833b);
        C1407r.m8920d();
        map.put("is_lite_sdk", true != C1433l1.m8760g(this.f6832a) ? "0" : "1");
        List<String> m6597d = C1842m3.m6597d();
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7501s4)).booleanValue()) {
            m6597d.addAll(C1407r.m8916h().m4585l().m8868p().m5202h());
        }
        map.put("e", TextUtils.join(",", m6597d));
        map.put("sdkVersion", this.f6834c);
    }
}
