package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyg.class */
public final class zzbyg implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzbyh zza;

    public zzbyg(zzbyh zzbyhVar) {
        this.zza = zzbyhVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzf("Operation denied by user.");
    }
}
