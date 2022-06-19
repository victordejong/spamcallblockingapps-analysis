package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.te */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/te.class */
public final class CallableC12928te implements Callable<C12922sz> {

    /* renamed from: a */
    private final /* synthetic */ Context f49869a;

    /* renamed from: b */
    private final /* synthetic */ C12925tb f49870b;

    public CallableC12928te(C12925tb c12925tb, Context context) {
        this.f49870b = c12925tb;
        this.f49869a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ C12922sz call() throws Exception {
        C12922sz c12922sz;
        C12927td c12927td = this.f49870b.f49837a.get(this.f49869a);
        if (c12927td != null) {
            if (!(c12927td.f49867a + C12272ch.f45764a.mo17481a().longValue() < zzr.zzlc().mo19039a())) {
                c12922sz = new C12926tc(this.f49869a, c12927td.f49868b).m14184a();
                this.f49870b.f49837a.put(this.f49869a, new C12927td(this.f49870b, c12922sz));
                return c12922sz;
            }
        }
        c12922sz = new C12926tc(this.f49869a).m14184a();
        this.f49870b.f49837a.put(this.f49869a, new C12927td(this.f49870b, c12922sz));
        return c12922sz;
    }
}
