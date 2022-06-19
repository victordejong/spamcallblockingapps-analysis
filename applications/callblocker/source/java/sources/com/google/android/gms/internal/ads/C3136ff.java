package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2301c;
import com.google.android.gms.common.util.C2709f;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ff */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ff.class */
public final class C3136ff implements AbstractC3131fa<act> {

    /* renamed from: d */
    private static final Map<String, Integer> f16655d = C2709f.m13867a(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a */
    private final C2301c f16656a;

    /* renamed from: b */
    private final C3355ni f16657b;

    /* renamed from: c */
    private final AbstractC3365ns f16658c;

    public C3136ff(C2301c c2301c, C3355ni c3355ni, AbstractC3365ns abstractC3365ns) {
        this.f16656a = c2301c;
        this.f16657b = c3355ni;
        this.f16658c = abstractC3365ns;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        int intValue = f16655d.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && this.f16656a != null && !this.f16656a.m14800b()) {
            this.f16656a.m14801a(null);
            return;
        }
        switch (intValue) {
            case 1:
                this.f16657b.m7421a(map);
                return;
            case 2:
            default:
                C3556uu.m6747d("Unknown MRAID command called.");
                return;
            case 3:
                new C3356nj(actVar2, map).m7419a();
                return;
            case 4:
                new C3350nd(actVar2, map).m7429a();
                return;
            case 5:
                new C3357nk(actVar2, map).m7417a();
                return;
            case 6:
                this.f16657b.m7420a(true);
                return;
            case 7:
                this.f16658c.mo7401b();
                return;
        }
    }
}
