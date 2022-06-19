package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dul.class */
public final class dul extends dus {

    /* renamed from: d */
    private final boolean f47622d;

    public dul(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 61);
        this.f47622d = dtgVar.f47558l.f50226a;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f47638c.invoke(null, this.f47636a.m15741a(), Boolean.valueOf(this.f47622d))).longValue();
        synchronized (this.f47637b) {
            this.f47637b.m18056D(longValue);
        }
    }
}
