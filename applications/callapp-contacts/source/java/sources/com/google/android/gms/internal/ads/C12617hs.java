package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzv;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hs.class */
final class C12617hs implements zzv {

    /* renamed from: a */
    private boolean f49355a = false;

    /* renamed from: b */
    private final /* synthetic */ Map f49356b;

    /* renamed from: c */
    private final /* synthetic */ Map f49357c;

    /* renamed from: d */
    private final /* synthetic */ eir f49358d;

    public C12617hs(C12615hq c12615hq, Map map, Map map2, eir eirVar) {
        this.f49356b = map;
        this.f49357c = map2;
        this.f49358d = eirVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzaf(boolean z) {
        if (!this.f49355a) {
            this.f49355a = true;
            this.f49356b.put((String) this.f49357c.get("event_id"), Boolean.valueOf(z));
            ((AbstractC12669jq) this.f49358d).mo13770a("openIntentAsync", this.f49356b);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzb(EnumC12252bt enumC12252bt) {
    }
}
