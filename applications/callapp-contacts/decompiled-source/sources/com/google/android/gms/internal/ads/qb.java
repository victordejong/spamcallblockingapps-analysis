package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qb.class */
public final class qb implements NativeCustomFormatAd.DisplayOpenMeasurement {

    /* renamed from: a  reason: collision with root package name */
    private final eo f28318a;

    public qb(eo eoVar) {
        this.f28318a = eoVar;
        try {
            eoVar.j();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.f28318a.b(d.a(view));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.f28318a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }
}
