package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqv.class */
public final class zzaqv implements NativeCustomFormatAd.DisplayOpenMeasurement {
    private final zzafn zzdqm;

    public zzaqv(zzafn zzafnVar) {
        this.zzdqm = zzafnVar;
        try {
            zzafnVar.zztu();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zzdqm.zzq(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zzdqm.zztt();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }
}
