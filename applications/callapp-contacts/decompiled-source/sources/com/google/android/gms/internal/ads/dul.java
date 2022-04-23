package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dul.class */
public final class dul extends dus {

    /* renamed from: d  reason: collision with root package name */
    private final boolean f27229d;

    public dul(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 61);
        this.f27229d = dtgVar.l.f28630a;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.f27239c.invoke(null, this.f27237a.a(), Boolean.valueOf(this.f27229d))).longValue();
        synchronized (this.f27238b) {
            this.f27238b.D(longValue);
        }
    }
}
