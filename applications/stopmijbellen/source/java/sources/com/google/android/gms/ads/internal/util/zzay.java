package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzay.class */
final class zzay implements DialogInterface.OnClickListener {
    public final /* synthetic */ zzaz zza;

    public zzay(zzaz zzazVar) {
        this.zza = zzazVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzt.zzp();
        zzt.zzY(this.zza.zza, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
