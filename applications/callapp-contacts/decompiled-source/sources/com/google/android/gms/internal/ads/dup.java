package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dup.class */
public final class dup extends dus {

    /* renamed from: d  reason: collision with root package name */
    private static volatile Long f27231d;
    private static final Object e = new Object();

    public dup(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f27231d == null) {
            synchronized (e) {
                if (f27231d == null) {
                    f27231d = (Long) this.f27239c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f27238b) {
            this.f27238b.o(f27231d.longValue());
        }
    }
}
