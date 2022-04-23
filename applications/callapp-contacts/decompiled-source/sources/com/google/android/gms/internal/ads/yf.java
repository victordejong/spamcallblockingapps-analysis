package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yf.class */
public final class yf extends zza {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ yd f28534a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yf(yd ydVar) {
        this.f28534a = ydVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        ax axVar;
        au auVar = new au(this.f28534a.f28528c, this.f28534a.f28529d.zzbrz);
        synchronized (this.f28534a.f28526a) {
            try {
                zzr.zzle();
                axVar = this.f28534a.e;
            } catch (IllegalArgumentException e) {
                zzd.zzd("Cannot config CSI reporter.", e);
            }
            if (auVar.f23886c == null) {
                throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
            } else if (!TextUtils.isEmpty(auVar.f23887d)) {
                axVar.a(auVar.f23886c, auVar.f23887d, auVar.f23884a, auVar.f23885b);
            } else {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
        }
    }
}
