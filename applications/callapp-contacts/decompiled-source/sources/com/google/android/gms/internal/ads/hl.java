package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hl.class */
public final class hl implements hi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final hk f28031a;

    public hl(hk hkVar) {
        this.f28031a = hkVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
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
        this.f28031a.a(equals);
        this.f28031a.a(equals2, f);
        adtVar2.g(equals);
    }
}
