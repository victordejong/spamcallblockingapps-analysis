package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edk.class */
public final class edk implements jz {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f27673a;

    public edk(Handler handler) {
        this.f27673a = new egm(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.jz
    public final void a(z<?> zVar, fa<?> faVar) {
        a(zVar, faVar, null);
    }

    @Override // com.google.android.gms.internal.ads.jz
    public final void a(z<?> zVar, fa<?> faVar, Runnable runnable) {
        zVar.zzk();
        zVar.zzc("post-response");
        this.f27673a.execute(new efl(zVar, faVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.jz
    public final void a(z<?> zVar, zzap zzapVar) {
        zVar.zzc("post-error");
        this.f27673a.execute(new efl(zVar, new fa(zzapVar), null));
    }
}
