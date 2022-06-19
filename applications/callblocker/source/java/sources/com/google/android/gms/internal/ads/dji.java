package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p120c.C2276a;
import com.google.android.gms.internal.ads.atw;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dji.class */
public final class dji extends djz {
    public dji(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 24);
    }

    /* renamed from: c */
    private final void m9370c() {
        C2276a m9396n = this.f14500a.m9396n();
        if (m9396n == null) {
            return;
        }
        try {
            C2276a.C2277a m14854b = m9396n.m14854b();
            String m9387a = dis.m9387a(m14854b.m14848a());
            if (m9387a == null) {
                return;
            }
            synchronized (this.f14501b) {
                this.f14501b.m12566i(m9387a);
                this.f14501b.m12587a(m14854b.m14847b());
                this.f14501b.m12592a(atw.C2798a.EnumC2801c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (this.f14500a.m9403g()) {
            m9370c();
            return;
        }
        synchronized (this.f14501b) {
            this.f14501b.m12566i((String) this.f14502c.invoke(null, this.f14500a.m9422a()));
        }
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: b */
    public final Void mo9364b() {
        Void r3;
        if (this.f14500a.m9411b()) {
            r3 = super.call();
        } else {
            if (this.f14500a.m9403g()) {
                m9370c();
            }
            r3 = null;
        }
        return r3;
    }

    @Override // com.google.android.gms.internal.ads.djz, java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return call();
    }
}
