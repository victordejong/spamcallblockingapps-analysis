package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfp.class */
public final class zzfp extends zzgm {

    /* renamed from: h */
    public static volatile Long f28211h;

    /* renamed from: i */
    public static final Object f28212i = new Object();

    public zzfp(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (f28211h == null) {
            synchronized (f28212i) {
                if (f28211h == null) {
                    f28211h = (Long) this.f28239e.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f28238d) {
            this.f28238d.m14517a(f28211h.longValue());
        }
    }
}
