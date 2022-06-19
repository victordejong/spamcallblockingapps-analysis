package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmv.class */
public final class dmv implements AbstractC2823b {

    /* renamed from: a */
    private final Executor f14870a;

    public dmv(Handler handler) {
        this.f14870a = new dlx(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2823b
    /* renamed from: a */
    public final void mo9085a(dts<?> dtsVar, ecj<?> ecjVar) {
        mo9084a(dtsVar, ecjVar, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2823b
    /* renamed from: a */
    public final void mo9084a(dts<?> dtsVar, ecj<?> ecjVar, Runnable runnable) {
        dtsVar.m8589l();
        dtsVar.m8600b("post-response");
        this.f14870a.execute(new dow(dtsVar, ecjVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2823b
    /* renamed from: a */
    public final void mo9083a(dts<?> dtsVar, zzae zzaeVar) {
        dtsVar.m8600b("post-error");
        this.f14870a.execute(new dow(dtsVar, ecj.m7911a(zzaeVar), null));
    }
}
