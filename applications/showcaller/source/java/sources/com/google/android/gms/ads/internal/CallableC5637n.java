package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.C6979t;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/n.class */
public final class CallableC5637n implements Callable<C7016u> {

    /* renamed from: a */
    final /* synthetic */ BinderC5666r f18309a;

    public CallableC5637n(BinderC5666r binderC5666r) {
        this.f18309a = binderC5666r;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C7016u call() {
        zzcgz zzcgzVar;
        Context context;
        zzcgzVar = this.f18309a.f18396d;
        String str = zzcgzVar.f33854d;
        context = this.f18309a.f18399g;
        return new C7016u(C6979t.m10872v(str, context, false));
    }
}
