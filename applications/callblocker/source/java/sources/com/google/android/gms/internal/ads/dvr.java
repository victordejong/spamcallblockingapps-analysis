package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvr.class */
public final class dvr implements AbstractC2623c.AbstractC2624a {

    /* renamed from: a */
    private final /* synthetic */ dvl f15854a;

    public dvr(dvl dvlVar) {
        this.f15854a = dvlVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
        Object obj;
        Object obj2;
        obj = this.f15854a.f15845b;
        synchronized (obj) {
            this.f15854a.f15848e = null;
            obj2 = this.f15854a.f15845b;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        Object obj;
        Object obj2;
        dvv dvvVar;
        dvv dvvVar2;
        obj = this.f15854a.f15845b;
        synchronized (obj) {
            try {
                dvvVar = this.f15854a.f15846c;
                if (dvvVar != null) {
                    dvl dvlVar = this.f15854a;
                    dvvVar2 = this.f15854a.f15846c;
                    dvlVar.f15848e = dvvVar2.m8484c();
                }
            } catch (DeadObjectException e) {
                C3556uu.m6748c("Unable to obtain a cache service instance.", e);
                this.f15854a.m8494c();
            }
            obj2 = this.f15854a.f15845b;
            obj2.notifyAll();
        }
    }
}
