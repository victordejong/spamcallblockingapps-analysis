package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaen.class */
public final class zzaen implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzafn zzdfw;

    public zzaen(zzafn zzafnVar) {
        this.zzdfw = zzafnVar;
        try {
            zzafnVar.zztu();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zzdfw.zzq(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zzdfw.zztt();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }
}
