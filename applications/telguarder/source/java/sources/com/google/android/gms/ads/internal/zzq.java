package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzq.class */
public final class zzq implements Callable<zzei> {
    private final /* synthetic */ zzl zzbpv;

    public zzq(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzei call() throws Exception {
        zzazn zzaznVar;
        Context context;
        zzaznVar = this.zzbpv.zzbpn;
        String str = zzaznVar.zzbrp;
        context = this.zzbpv.context;
        return new zzei(zzef.zzb(str, context, false));
    }
}
