package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzys.class */
public final class zzys implements MuteThisAdReason {
    private final String description;
    private zzyn zzcjx;

    public zzys(zzyn zzynVar) {
        String str;
        this.zzcjx = zzynVar;
        try {
            str = zzynVar.getDescription();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            str = null;
        }
        this.description = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.description;
    }

    public final String toString() {
        return this.description;
    }

    public final zzyn zzrf() {
        return this.zzcjx;
    }
}
