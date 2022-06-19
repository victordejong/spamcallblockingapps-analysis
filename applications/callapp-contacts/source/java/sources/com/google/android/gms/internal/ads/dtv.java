package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtv.class */
public final class dtv extends dus {
    public dtv(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18044b(-1L);
        this.f47637b.m18040c(-1L);
        int[] iArr = (int[]) this.f47638c.invoke(null, this.f47636a.m15741a());
        synchronized (this.f47637b) {
            this.f47637b.m18044b(iArr[0]);
            this.f47637b.m18040c(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f47637b.m18058B(iArr[2]);
            }
        }
    }
}
