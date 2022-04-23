package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duj.class */
public final class duj extends dus {
    public duj(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        try {
            this.f27238b.d(((Boolean) this.f27239c.invoke(null, this.f27237a.a())).booleanValue() ? bpi.ENUM_TRUE : bpi.ENUM_FALSE);
        } catch (InvocationTargetException e) {
            this.f27238b.d(bpi.ENUM_FAILURE);
        }
    }
}
