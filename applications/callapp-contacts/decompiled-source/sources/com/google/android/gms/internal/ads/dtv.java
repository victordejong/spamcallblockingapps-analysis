package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtv.class */
public final class dtv extends dus {
    public dtv(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.b(-1L);
        this.f27238b.c(-1L);
        int[] iArr = (int[]) this.f27239c.invoke(null, this.f27237a.a());
        synchronized (this.f27238b) {
            this.f27238b.b(iArr[0]);
            this.f27238b.c(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f27238b.B(iArr[2]);
            }
        }
    }
}
