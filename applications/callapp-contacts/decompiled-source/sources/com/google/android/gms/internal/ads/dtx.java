package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtx.class */
public final class dtx extends dus {

    /* renamed from: d  reason: collision with root package name */
    private long f27219d;

    public dtx(dtg dtgVar, String str, String str2, beb.a.b bVar, long j, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 25);
        this.f27219d = j;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f27239c.invoke(null, new Object[0])).longValue();
        synchronized (this.f27238b) {
            this.f27238b.G(longValue);
            if (this.f27219d != 0) {
                this.f27238b.i(longValue - this.f27219d);
                this.f27238b.l(this.f27219d);
            }
        }
    }
}
