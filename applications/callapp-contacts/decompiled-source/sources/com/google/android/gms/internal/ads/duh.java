package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duh.class */
public final class duh extends dus {

    /* renamed from: d  reason: collision with root package name */
    private static volatile String f27226d;
    private static final Object e = new Object();

    public duh(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.a("E");
        if (f27226d == null) {
            synchronized (e) {
                if (f27226d == null) {
                    f27226d = (String) this.f27239c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f27238b) {
            this.f27238b.a(f27226d);
        }
    }
}
