package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqf.class */
public final class zzaqf {

    /* renamed from: a */
    public final zzbgj f24280a;

    /* renamed from: b */
    public final boolean f24281b;

    /* renamed from: c */
    public final String f24282c;

    public zzaqf(zzbgj zzbgjVar, Map<String, String> map) {
        this.f24280a = zzbgjVar;
        this.f24282c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f24281b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f24281b = true;
        }
    }

    /* renamed from: a */
    public final void m16444a() {
        int i;
        if (this.f24280a == null) {
            zzbbq.m15852d("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.f24282c)) {
            zzp.m17967e();
            i = 7;
        } else if ("landscape".equalsIgnoreCase(this.f24282c)) {
            zzp.m17967e();
            i = 6;
        } else {
            i = this.f24281b ? -1 : zzp.m17967e().mo16036a();
        }
        this.f24280a.setRequestedOrientation(i);
    }
}
