package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dun.class */
public final class dun extends dus {
    public dun(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.f27238b) {
            dtd dtdVar = new dtd((String) this.f27239c.invoke(null, new Object[0]));
            this.f27238b.y(dtdVar.f27183a.longValue());
            this.f27238b.z(dtdVar.f27184b.longValue());
        }
    }
}
