package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dty.class */
public final class dty extends dus {

    /* renamed from: d */
    private static volatile Long f47610d;

    /* renamed from: e */
    private static final Object f47611e = new Object();

    public dty(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (f47610d == null) {
            synchronized (f47611e) {
                if (f47610d == null) {
                    f47610d = (Long) this.f47638c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f47637b) {
            this.f47637b.m18010w(f47610d.longValue());
        }
    }
}
