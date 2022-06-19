package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* renamed from: com.google.android.gms.internal.ads.yf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yf.class */
public final class C13066yf extends zza {

    /* renamed from: a */
    private final /* synthetic */ C13064yd f50064a;

    public C13066yf(C13064yd c13064yd) {
        this.f50064a = c13064yd;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        C12202ax c12202ax;
        C12192au c12192au = new C12192au(this.f50064a.f50045c, this.f50064a.f50046d.zzbrz);
        synchronized (this.f50064a.f50043a) {
            try {
                zzr.zzle();
                c12202ax = this.f50064a.f50047e;
            } catch (IllegalArgumentException e) {
                zzd.zzd("Cannot config CSI reporter.", e);
            }
            if (c12192au.f43174c == null) {
                throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
            }
            if (TextUtils.isEmpty(c12192au.f43175d)) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            c12202ax.m18349a(c12192au.f43174c, c12192au.f43175d, c12192au.f43172a, c12192au.f43173b);
        }
    }
}
