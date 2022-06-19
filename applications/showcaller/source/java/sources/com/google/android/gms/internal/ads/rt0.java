package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rt0.class */
public final class rt0 implements pt0 {

    /* renamed from: a */
    private final AbstractC5728q1 f29220a;

    public rt0(AbstractC5728q1 abstractC5728q1) {
        this.f29220a = abstractC5728q1;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        this.f29220a.mo17951p0(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
