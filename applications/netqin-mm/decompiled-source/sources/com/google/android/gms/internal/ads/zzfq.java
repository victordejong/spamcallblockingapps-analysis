package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfq.class */
public final class zzfq extends zzgm {
    public zzfq(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        this.f28238d.m14486m(-1L);
        this.f28238d.m14485n(-1L);
        int[] iArr = (int[]) this.f28239e.invoke(null, this.f28235a.m12177a());
        synchronized (this.f28238d) {
            this.f28238d.m14486m(iArr[0]);
            this.f28238d.m14485n(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f28238d.m14497f(iArr[2]);
            }
        }
    }
}
