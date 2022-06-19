package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.dn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dn.class */
public final class C12381dn implements NativeCustomTemplateAd.DisplayOpenMeasurement {

    /* renamed from: a */
    private final AbstractC12532eo f47263a;

    public C12381dn(AbstractC12532eo abstractC12532eo) {
        this.f47263a = abstractC12532eo;
        try {
            abstractC12532eo.mo14697j();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.f47263a.mo14707b(BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.f47263a.mo14698i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }
}
