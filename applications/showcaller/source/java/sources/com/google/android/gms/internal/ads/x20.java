package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC5657s;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x20.class */
public final class x20 implements AbstractC5657s {

    /* renamed from: a */
    boolean f31889a = false;

    /* renamed from: b */
    final /* synthetic */ boolean f31890b;

    /* renamed from: c */
    final /* synthetic */ AbstractC6673kq f31891c;

    /* renamed from: d */
    final /* synthetic */ Map f31892d;

    /* renamed from: e */
    final /* synthetic */ Map f31893e;

    public x20(z20 z20Var, boolean z, AbstractC6673kq abstractC6673kq, Map map, Map map2) {
        this.f31890b = z;
        this.f31891c = abstractC6673kq;
        this.f31892d = map;
        this.f31893e = map2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5657s
    /* renamed from: a */
    public final void mo9364a(int i) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5657s
    /* renamed from: b */
    public final void mo9363b(boolean z) {
        if (!this.f31889a) {
            if (z && this.f31890b) {
                ((qa1) this.f31891c).mo7917b();
            }
            this.f31889a = true;
            this.f31892d.put((String) this.f31893e.get("event_id"), Boolean.valueOf(z));
            ((s40) this.f31891c).mo7959D0("openIntentAsync", this.f31892d);
        }
    }
}
