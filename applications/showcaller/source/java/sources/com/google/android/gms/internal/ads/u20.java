package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6228f;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u20.class */
public final class u20 implements n20<wn0> {

    /* renamed from: a */
    static final Map<String, Integer> f30478a = C6228f.m16813e(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: b */
    private final C5625b f30479b;

    /* renamed from: c */
    private final la0 f30480c;

    /* renamed from: d */
    private final sa0 f30481d;

    public u20(C5625b c5625b, la0 la0Var, sa0 sa0Var) {
        this.f30479b = c5625b;
        this.f30480c = la0Var;
        this.f30481d = sa0Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        int intValue = f30478a.get((String) map.get("a")).intValue();
        int i = 6;
        boolean z = true;
        if (intValue != 5) {
            if (intValue != 7) {
                if (!this.f30479b.m18222b()) {
                    this.f30479b.m18221c(null);
                    return;
                } else if (intValue == 1) {
                    this.f30480c.m13624h(map);
                    return;
                } else if (intValue == 3) {
                    new oa0(wn0Var2, map).m12702i();
                    return;
                } else if (intValue == 4) {
                    new ja0(wn0Var2, map).m14145i();
                    return;
                } else if (intValue != 5) {
                    if (intValue == 6) {
                        this.f30480c.m13623i(true);
                        return;
                    } else if (intValue != 7) {
                        ei0.m15465e("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.f30481d.mo8346c();
            return;
        }
        String str = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            z = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        }
        if (wn0Var2 == null) {
            ei0.m15464f("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i = z ? -1 : C5667s.m18158f().mo18025h();
        }
        wn0Var2.mo7922Z(i);
    }
}
