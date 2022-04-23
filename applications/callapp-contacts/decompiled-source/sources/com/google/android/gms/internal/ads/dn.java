package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dn.class */
public final class dn implements NativeCustomTemplateAd.DisplayOpenMeasurement {

    /* renamed from: a  reason: collision with root package name */
    private final eo f26983a;

    public dn(eo eoVar) {
        this.f26983a = eoVar;
        try {
            eoVar.j();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.f26983a.b(d.a(view));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.f26983a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }
}
