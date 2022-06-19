package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtr.class */
public final class dtr extends dus {
    public dtr(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18042b(bpi.ENUM_FAILURE);
        try {
            this.f47637b.m18042b(((Boolean) this.f47638c.invoke(null, this.f47636a.m15741a())).booleanValue() ? bpi.ENUM_TRUE : bpi.ENUM_FALSE);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
