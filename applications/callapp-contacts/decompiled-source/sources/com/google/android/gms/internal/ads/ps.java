package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ps.class */
public final class ps {

    /* renamed from: a  reason: collision with root package name */
    final adt f28297a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f28298b;

    /* renamed from: c  reason: collision with root package name */
    final String f28299c;

    public ps(adt adtVar, Map<String, String> map) {
        this.f28297a = adtVar;
        this.f28299c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f28298b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f28298b = true;
        }
    }
}
