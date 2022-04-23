package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzao.class */
final class zzao implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzal zzehs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzao(zzal zzalVar) {
        this.zzehs = zzalVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzr.zzkv();
        zzj.zzb(this.zzehs.val$context, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
