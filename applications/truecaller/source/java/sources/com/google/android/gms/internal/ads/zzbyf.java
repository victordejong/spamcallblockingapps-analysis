package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyf.class */
public final class zzbyf implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzbyh zza;

    public zzbyf(zzbyh zzbyhVar) {
        this.zza = zzbyhVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent zzc = this.zza.zzc();
        zzt.zzc();
        context = this.zza.zzb;
        zzs.zzP(context, zzc);
    }
}
