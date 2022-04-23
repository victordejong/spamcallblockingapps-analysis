package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzv;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hs.class */
final class hs implements zzv {

    /* renamed from: a  reason: collision with root package name */
    private boolean f28046a = false;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Map f28047b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Map f28048c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ eir f28049d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hs(hq hqVar, Map map, Map map2, eir eirVar) {
        this.f28047b = map;
        this.f28048c = map2;
        this.f28049d = eirVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzaf(boolean z) {
        if (!this.f28046a) {
            this.f28046a = true;
            this.f28047b.put((String) this.f28048c.get("event_id"), Boolean.valueOf(z));
            ((jq) this.f28049d).a("openIntentAsync", this.f28047b);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzb(bt btVar) {
    }
}
