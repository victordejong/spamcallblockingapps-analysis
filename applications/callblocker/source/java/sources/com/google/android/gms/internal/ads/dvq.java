package com.google.android.gms.internal.ads;

import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvq.class */
public final class dvq implements AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    private final /* synthetic */ dvl f15853a;

    public dvq(dvl dvlVar) {
        this.f15853a = dvlVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        Object obj;
        dvv dvvVar;
        Object obj2;
        obj = this.f15853a.f15845b;
        synchronized (obj) {
            this.f15853a.f15848e = null;
            dvvVar = this.f15853a.f15846c;
            if (dvvVar != null) {
                this.f15853a.f15846c = null;
            }
            obj2 = this.f15853a.f15845b;
            obj2.notifyAll();
        }
    }
}
