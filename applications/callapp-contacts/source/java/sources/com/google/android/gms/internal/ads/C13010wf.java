package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* renamed from: com.google.android.gms.internal.ads.wf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wf.class */
public final class C13010wf {

    /* renamed from: a */
    private final zzf f49961a;

    /* renamed from: b */
    private final C13019wo f49962b;

    public C13010wf(zzf zzfVar, C13019wo c13019wo) {
        this.f49961a = zzfVar;
        this.f49962b = c13019wo;
    }

    /* renamed from: a */
    public final void m14048a() {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42673aj)).booleanValue()) {
            return;
        }
        this.f49962b.m14045a();
    }

    /* renamed from: a */
    public final void m14047a(int i) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42672ai)).booleanValue()) {
            return;
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42673aj)).booleanValue()) {
            this.f49961a.zzdk(-1);
        } else {
            this.f49961a.zzdk(i);
        }
        m14048a();
    }
}
