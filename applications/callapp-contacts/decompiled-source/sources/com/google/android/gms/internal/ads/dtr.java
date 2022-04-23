package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtr.class */
public final class dtr extends dus {
    public dtr(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.b(bpi.ENUM_FAILURE);
        try {
            this.f27238b.b(((Boolean) this.f27239c.invoke(null, this.f27237a.a())).booleanValue() ? bpi.ENUM_TRUE : bpi.ENUM_FALSE);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
