package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.atw;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djc.class */
public final class djc extends djz {

    /* renamed from: d */
    private static dkd<String> f14471d = new dkd<>();

    /* renamed from: e */
    private final Context f14472e;

    public djc(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, Context context) {
        super(dinVar, str, str2, c2799a, i, 29);
        this.f14472e = context;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        this.f14501b.m12577d("E");
        AtomicReference<String> m9359a = f14471d.m9359a(this.f14472e.getPackageName());
        if (m9359a.get() == null) {
            synchronized (m9359a) {
                if (m9359a.get() == null) {
                    m9359a.set((String) this.f14502c.invoke(null, this.f14472e));
                }
            }
        }
        String str = m9359a.get();
        synchronized (this.f14501b) {
            this.f14501b.m12577d(bkl.m11831a(str.getBytes(), true));
        }
    }
}
