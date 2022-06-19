package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcah.class */
public final class zzcah implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzcai zza;

    public zzcah(zzcai zzcaiVar) {
        this.zza = zzcaiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzg("Operation denied by user.");
    }
}
