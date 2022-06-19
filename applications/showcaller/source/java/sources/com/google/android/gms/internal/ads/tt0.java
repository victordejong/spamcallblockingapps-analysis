package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tt0.class */
public final class tt0 implements pt0 {

    /* renamed from: a */
    private final AbstractC5728q1 f30348a;

    public tt0(AbstractC5728q1 abstractC5728q1) {
        this.f30348a = abstractC5728q1;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        this.f30348a.mo17962b0(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
