package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hd.class */
final class C12602hd implements AbstractC12607hi<Object> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        String valueOf = String.valueOf(map.get("string"));
        zzd.zzey(valueOf.length() != 0 ? "Received log message: ".concat(valueOf) : new String("Received log message: "));
    }
}
