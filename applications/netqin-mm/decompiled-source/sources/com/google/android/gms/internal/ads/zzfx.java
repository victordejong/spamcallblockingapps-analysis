package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfx.class */
public final class zzfx extends zzgm {

    /* renamed from: h */
    public static volatile String f28218h;

    /* renamed from: i */
    public static final Object f28219i = new Object();

    public zzfx(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        this.f28238d.m14501d("E");
        if (f28218h == null) {
            synchronized (f28219i) {
                if (f28218h == null) {
                    f28218h = (String) this.f28239e.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f28238d) {
            this.f28238d.m14501d(f28218h);
        }
    }
}
