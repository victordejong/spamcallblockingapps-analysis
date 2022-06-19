package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.qb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qb.class */
public final class C12844qb implements NativeCustomFormatAd.DisplayOpenMeasurement {

    /* renamed from: a */
    private final AbstractC12532eo f49720a;

    public C12844qb(AbstractC12532eo abstractC12532eo) {
        this.f49720a = abstractC12532eo;
        try {
            abstractC12532eo.mo14697j();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.f49720a.mo14707b(BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.f49720a.mo14698i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }
}
