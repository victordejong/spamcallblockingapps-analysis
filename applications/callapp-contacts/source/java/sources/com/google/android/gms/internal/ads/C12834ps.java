package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ps */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ps.class */
public final class C12834ps {

    /* renamed from: a */
    final adt f49687a;

    /* renamed from: b */
    final boolean f49688b;

    /* renamed from: c */
    final String f49689c;

    public C12834ps(adt adtVar, Map<String, String> map) {
        this.f49687a = adtVar;
        this.f49689c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f49688b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f49688b = true;
        }
    }
}
