package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.gn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gn.class */
public final class C12585gn implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final AbstractC12588gq f49309a;

    public C12585gn(AbstractC12588gq abstractC12588gq) {
        this.f49309a = abstractC12588gq;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzd.zzez("App event with no name parameter.");
        } else {
            this.f49309a.mo14636a(str, map.get("info"));
        }
    }
}
