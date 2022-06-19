package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqe.class */
public final class zzaqe implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaqf zzdpc;

    public zzaqe(zzaqf zzaqfVar) {
        this.zzdpc = zzaqfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent createIntent = this.zzdpc.createIntent();
        zzr.zzkr();
        zzj.zza(zzaqf.zza(this.zzdpc), createIntent);
    }
}
