package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvb.class */
public final class zzvb implements DisplayManager.DisplayListener, zzuz {
    private final DisplayManager zza;
    private zzux zzb;

    private zzvb(DisplayManager displayManager) {
        this.zza = displayManager;
    }

    public static zzuz zzc(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return new zzvb(displayManager);
        }
        return null;
    }

    private final Display zzd() {
        return this.zza.getDisplay(0);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        zzux zzuxVar = this.zzb;
        if (zzuxVar == null || i != 0) {
            return;
        }
        zzvd.zzb(zzuxVar.zza, zzd());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zza() {
        this.zza.unregisterDisplayListener(this);
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzb(zzux zzuxVar) {
        this.zzb = zzuxVar;
        this.zza.registerDisplayListener(this, zzfn.zzz(null));
        zzvd.zzb(zzuxVar.zza, zzd());
    }
}
