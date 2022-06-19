package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duc.class */
public final class duc extends dus {

    /* renamed from: d */
    private static volatile Long f47614d;

    /* renamed from: e */
    private static final Object f47615e = new Object();

    public duc(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (f47614d == null) {
            synchronized (f47615e) {
                if (f47614d == null) {
                    f47614d = (Long) this.f47638c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f47637b) {
            this.f47637b.m18022k(f47614d.longValue());
        }
    }
}
