package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dty.class */
public final class dty extends dus {

    /* renamed from: d  reason: collision with root package name */
    private static volatile Long f27220d;
    private static final Object e = new Object();

    public dty(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f27220d == null) {
            synchronized (e) {
                if (f27220d == null) {
                    f27220d = (Long) this.f27239c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f27238b) {
            this.f27238b.w(f27220d.longValue());
        }
    }
}
