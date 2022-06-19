package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtz.class */
public final class dtz implements Callable {

    /* renamed from: a */
    private final dtg f47612a;

    /* renamed from: b */
    private final beb.C12217a.C12219b f47613b;

    public dtz(dtg dtgVar, beb.C12217a.C12219b c12219b) {
        this.f47612a = dtgVar;
        this.f47613b = c12219b;
    }

    /* renamed from: a */
    public final Void call() throws Exception {
        if (this.f47612a.f47553g != null) {
            this.f47612a.f47553g.get();
        }
        beb.C12217a c12217a = this.f47612a.f47552f;
        if (c12217a != null) {
            try {
                synchronized (this.f47613b) {
                    beb.C12217a.C12219b c12219b = this.f47613b;
                    byte[] mo16256g = c12217a.mo16256g();
                    c12219b.mo16328a(mo16256g, mo16256g.length, dmt.m16396a());
                }
                return null;
            } catch (zzenn | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}
