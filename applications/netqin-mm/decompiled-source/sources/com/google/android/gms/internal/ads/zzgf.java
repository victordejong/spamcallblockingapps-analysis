package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgf.class */
public final class zzgf extends zzgm {

    /* renamed from: h */
    public static volatile Long f28223h;

    /* renamed from: i */
    public static final Object f28224i = new Object();

    public zzgf(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (f28223h == null) {
            synchronized (f28224i) {
                if (f28223h == null) {
                    f28223h = (Long) this.f28239e.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f28238d) {
            this.f28238d.m14472z(f28223h.longValue());
        }
    }
}
