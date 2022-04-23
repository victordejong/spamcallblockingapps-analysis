package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgc.class */
public final class zzgc extends zzgm {

    /* renamed from: h */
    public List<Long> f28221h = null;

    public zzgc(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2) {
        super(zzexVar, str, str2, zzaVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        this.f28238d.m14474x(-1L);
        this.f28238d.m14473y(-1L);
        if (this.f28221h == null) {
            this.f28221h = (List) this.f28239e.invoke(null, this.f28235a.m12177a());
        }
        List<Long> list = this.f28221h;
        if (list != null && list.size() == 2) {
            synchronized (this.f28238d) {
                this.f28238d.m14474x(this.f28221h.get(0).longValue());
                this.f28238d.m14473y(this.f28221h.get(1).longValue());
            }
        }
    }
}
