package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duh.class */
public final class duh extends dus {

    /* renamed from: d */
    private static volatile String f47618d;

    /* renamed from: e */
    private static final Object f47619e = new Object();

    public duh(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18046a("E");
        if (f47618d == null) {
            synchronized (f47619e) {
                if (f47618d == null) {
                    f47618d = (String) this.f47638c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f47637b) {
            this.f47637b.m18046a(f47618d);
        }
    }
}
