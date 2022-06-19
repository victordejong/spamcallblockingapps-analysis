package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcam.class */
public final class zzcam implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzcan zza;

    public zzcam(zzcan zzcanVar) {
        this.zza = zzcanVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzg("User canceled the download.");
    }
}
