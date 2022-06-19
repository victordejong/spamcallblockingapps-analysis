package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtx.class */
public final class dtx extends dus {

    /* renamed from: d */
    private long f47609d;

    public dtx(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, long j, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 25);
        this.f47609d = j;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f47638c.invoke(null, new Object[0])).longValue();
        synchronized (this.f47637b) {
            this.f47637b.m18053G(longValue);
            if (this.f47609d != 0) {
                this.f47637b.m18025i(longValue - this.f47609d);
                this.f47637b.m18021l(this.f47609d);
            }
        }
    }
}
