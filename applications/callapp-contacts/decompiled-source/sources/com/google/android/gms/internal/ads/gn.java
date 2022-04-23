package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gn.class */
public final class gn implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final gq f28019a;

    public gn(gq gqVar) {
        this.f28019a = gqVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzd.zzez("App event with no name parameter.");
        } else {
            this.f28019a.a(str, map.get("info"));
        }
    }
}
