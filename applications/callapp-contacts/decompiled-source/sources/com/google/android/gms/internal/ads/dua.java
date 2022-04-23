package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.beb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dua.class */
public final class dua extends dus {
    public dua(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 24);
    }

    private final void c() {
        AdvertisingIdClient b2 = this.f27237a.b();
        if (b2 != null) {
            try {
                AdvertisingIdClient.Info info = b2.getInfo();
                String a2 = dtl.a(info.getId());
                if (a2 != null) {
                    synchronized (this.f27238b) {
                        this.f27238b.i(a2);
                        this.f27238b.a(info.isLimitAdTrackingEnabled());
                        this.f27238b.a(beb.a.c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f27237a.i) {
            c();
            return;
        }
        synchronized (this.f27238b) {
            this.f27238b.i((String) this.f27239c.invoke(null, this.f27237a.a()));
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    public final Void b() throws Exception {
        if (this.f27237a.k) {
            return super.call();
        }
        if (!this.f27237a.i) {
            return null;
        }
        c();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dus, java.util.concurrent.Callable
    public final /* synthetic */ Object call() throws Exception {
        return call();
    }
}
