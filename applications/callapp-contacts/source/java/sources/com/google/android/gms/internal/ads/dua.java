package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.beb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dua.class */
public final class dua extends dus {
    public dua(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 24);
    }

    /* renamed from: c */
    private final void m15702c() {
        AdvertisingIdClient m15730b = this.f47636a.m15730b();
        if (m15730b == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = m15730b.getInfo();
            String m15720a = dtl.m15720a(info.getId());
            if (m15720a == null) {
                return;
            }
            synchronized (this.f47637b) {
                this.f47637b.m18024i(m15720a);
                this.f47637b.m18045a(info.isLimitAdTrackingEnabled());
                this.f47637b.m18050a(beb.C12217a.EnumC12220c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (this.f47636a.f47555i) {
            m15702c();
            return;
        }
        synchronized (this.f47637b) {
            this.f47637b.m18024i((String) this.f47638c.invoke(null, this.f47636a.m15741a()));
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: b */
    public final Void mo15697b() throws Exception {
        if (this.f47636a.f47557k) {
            return super.call();
        }
        if (!this.f47636a.f47555i) {
            return null;
        }
        m15702c();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dus, java.util.concurrent.Callable
    public final /* synthetic */ Object call() throws Exception {
        return call();
    }
}
