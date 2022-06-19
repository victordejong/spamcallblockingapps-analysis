package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bor.class */
final class bor implements auf {

    /* renamed from: a */
    private final Context f44394a;

    /* renamed from: b */
    private final C13019wo f44395b;

    public bor(Context context, C13019wo c13019wo) {
        this.f44394a = context;
        this.f44395b = c13019wo;
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        if (!TextUtils.isEmpty(cpkVar.f46319b.f46314b.f46292d)) {
            C13019wo c13019wo = this.f44395b;
            Context context = this.f44394a;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42669af)).booleanValue() && c13019wo.m14044a(context) && C13019wo.m14033b(context)) {
                synchronized (c13019wo.f49983c) {
                }
            }
            this.f44395b.m14041a(this.f44394a, "_aq", cpkVar.f46319b.f46314b.f46292d, (Bundle) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
    }
}
