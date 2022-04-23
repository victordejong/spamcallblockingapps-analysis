package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzft.class */
public final class zzft extends zzgm {

    /* renamed from: h */
    public static volatile Long f28214h;

    /* renamed from: i */
    public static final Object f28215i = new Object();

    public zzft(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (f28214h == null) {
            synchronized (f28215i) {
                if (f28214h == null) {
                    f28214h = (Long) this.f28239e.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f28238d) {
            this.f28238d.m14476v(f28214h.longValue());
        }
    }
}
