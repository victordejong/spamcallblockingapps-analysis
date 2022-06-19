package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzax.class */
public final class zzax implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzay zza;

    public zzax(zzay zzayVar) {
        this.zza = zzayVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzt.zzc();
        zzs.zzX(this.zza.zza, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
