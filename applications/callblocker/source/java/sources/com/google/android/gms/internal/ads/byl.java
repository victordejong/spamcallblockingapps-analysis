package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byl.class */
public final class byl implements cae<Bundle> {

    /* renamed from: a */
    private final String f12488a;

    public byl(String str) {
        this.f12488a = str;
    }

    /* renamed from: b */
    public static boolean m11554b(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        chm.m11304a(bundle, "omid_v", this.f12488a);
    }
}
