package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfj.class */
public final class zzfj extends zzgm {

    /* renamed from: h */
    public final Activity f28204h;

    /* renamed from: i */
    public final View f28205i;

    public zzfj(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, View view, Activity activity) {
        super(zzexVar, str, str2, zzaVar, i, 62);
        this.f28205i = view;
        this.f28204h = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (this.f28205i != null) {
            boolean booleanValue = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23804e1)).booleanValue();
            Object[] objArr = (Object[]) this.f28239e.invoke(null, this.f28205i, this.f28204h, Boolean.valueOf(booleanValue));
            synchronized (this.f28238d) {
                this.f28238d.m14491i(((Long) objArr[0]).longValue());
                this.f28238d.m14489j(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.f28238d.m14507b((String) objArr[2]);
                }
            }
        }
    }
}
