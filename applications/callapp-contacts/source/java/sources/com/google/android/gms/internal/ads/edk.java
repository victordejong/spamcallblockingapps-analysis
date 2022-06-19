package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edk.class */
public final class edk implements AbstractC12678jz {

    /* renamed from: a */
    private final Executor f48754a;

    public edk(Handler handler) {
        this.f48754a = new egm(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12678jz
    /* renamed from: a */
    public final void mo14561a(AbstractC13087z<?> abstractC13087z, C12545fa<?> c12545fa) {
        mo14560a(abstractC13087z, c12545fa, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12678jz
    /* renamed from: a */
    public final void mo14560a(AbstractC13087z<?> abstractC13087z, C12545fa<?> c12545fa, Runnable runnable) {
        abstractC13087z.zzk();
        abstractC13087z.zzc("post-response");
        this.f48754a.execute(new efl(abstractC13087z, c12545fa, runnable));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12678jz
    /* renamed from: a */
    public final void mo14559a(AbstractC13087z<?> abstractC13087z, zzap zzapVar) {
        abstractC13087z.zzc("post-error");
        this.f48754a.execute(new efl(abstractC13087z, new C12545fa(zzapVar), null));
    }
}
