package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hl.class */
public final class C12610hl implements AbstractC12607hi<adt> {

    /* renamed from: a */
    private final AbstractC12609hk f49337a;

    public C12610hl(AbstractC12609hk abstractC12609hk) {
        this.f49337a = abstractC12609hk;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            zzd.zzc("Fail to parse float", e);
            f = 0.0f;
        }
        this.f49337a.mo14622a(equals);
        this.f49337a.mo14621a(equals2, f);
        adtVar2.mo13743g(equals);
    }
}
