package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagw.class */
public final class zzagw implements zzahq<Object> {

    /* renamed from: a */
    public final zzagv f24090a;

    public zzagw(zzagv zzagvVar) {
        this.f24090a = zzagvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzbbq.m15852d("App event with no name parameter.");
        } else {
            this.f24090a.mo14944a(str, map.get("info"));
        }
    }
}
