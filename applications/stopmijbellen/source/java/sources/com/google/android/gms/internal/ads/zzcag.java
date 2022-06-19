package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcag.class */
public final class zzcag implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzcai zza;

    public zzcag(zzcai zzcaiVar) {
        this.zza = zzcaiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent zzb = this.zza.zzb();
        zzt.zzp();
        context = this.zza.zzb;
        com.google.android.gms.ads.internal.util.zzt.zzQ(context, zzb);
    }
}
