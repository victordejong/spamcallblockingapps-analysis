package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duo.class */
public final class duo extends dus {
    public duo(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18047a(bpi.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f47638c.invoke(null, this.f47636a.m15741a())).booleanValue();
        synchronized (this.f47637b) {
            if (booleanValue) {
                this.f47637b.m18047a(bpi.ENUM_TRUE);
            } else {
                this.f47637b.m18047a(bpi.ENUM_FALSE);
            }
        }
    }
}
