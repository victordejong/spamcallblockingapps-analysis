package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duo.class */
public final class duo extends dus {
    public duo(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.a(bpi.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f27239c.invoke(null, this.f27237a.a())).booleanValue();
        synchronized (this.f27238b) {
            if (booleanValue) {
                this.f27238b.a(bpi.ENUM_TRUE);
            } else {
                this.f27238b.a(bpi.ENUM_FALSE);
            }
        }
    }
}
