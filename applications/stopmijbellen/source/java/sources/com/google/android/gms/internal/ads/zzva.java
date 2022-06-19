package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzva.class */
public final class zzva implements zzuz {
    private final WindowManager zza;

    private zzva(WindowManager windowManager) {
        this.zza = windowManager;
    }

    public static zzuz zzc(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return new zzva(windowManager);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzb(zzux zzuxVar) {
        zzvd.zzb(zzuxVar.zza, this.zza.getDefaultDisplay());
    }
}
