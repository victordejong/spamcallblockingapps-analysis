package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzge.class */
public final class zzge extends zzgm {

    /* renamed from: h */
    public final StackTraceElement[] f28222h;

    public zzge(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzexVar, str, str2, zzaVar, i, 45);
        this.f28222h = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        StackTraceElement[] stackTraceElementArr = this.f28222h;
        if (stackTraceElementArr != null) {
            zzet zzetVar = new zzet((String) this.f28239e.invoke(null, stackTraceElementArr));
            synchronized (this.f28238d) {
                this.f28238d.m14510b(zzetVar.f28152b.longValue());
                if (zzetVar.f28153c.booleanValue()) {
                    this.f28238d.m14505c(zzetVar.f28154d.booleanValue() ? zzcn.ENUM_FALSE : zzcn.ENUM_TRUE);
                } else {
                    this.f28238d.m14505c(zzcn.ENUM_FAILURE);
                }
            }
        }
    }
}
