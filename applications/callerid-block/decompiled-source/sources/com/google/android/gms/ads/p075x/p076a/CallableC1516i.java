package com.google.android.gms.ads.p075x.p076a;

import android.net.Uri;
import com.google.android.gms.dynamic.AbstractC1632a;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.x.a.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/x/a/i.class */
final /* synthetic */ class CallableC1516i implements Callable {

    /* renamed from: a */
    private final t f5747a;

    /* renamed from: b */
    private final Uri f5748b;

    /* renamed from: c */
    private final AbstractC1632a f5749c;

    CallableC1516i(t tVar, Uri uri, AbstractC1632a aVar) {
        this.f5747a = tVar;
        this.f5748b = uri;
        this.f5749c = aVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f5747a.E6(this.f5748b, this.f5749c);
    }
}
