package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoi.class */
final class zzcoi implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsResult zza;

    public zzcoi(JsResult jsResult) {
        this.zza = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.cancel();
    }
}
