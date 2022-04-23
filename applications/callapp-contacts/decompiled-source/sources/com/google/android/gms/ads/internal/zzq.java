package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.dfc;
import com.google.android.gms.internal.ads.die;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzq.class */
public final class zzq implements Callable<die> {
    private final /* synthetic */ zzl zzbqf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzl zzlVar) {
        this.zzbqf = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ die call() throws Exception {
        zzbar zzbarVar;
        Context context;
        zzbarVar = this.zzbqf.zzbpx;
        String str = zzbarVar.zzbrz;
        context = this.zzbqf.context;
        return new die(dfc.a(str, context));
    }
}
