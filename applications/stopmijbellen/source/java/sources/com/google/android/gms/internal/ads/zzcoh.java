package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoh.class */
final class zzcoh implements DialogInterface.OnCancelListener {
    public final /* synthetic */ JsResult zza;

    public zzcoh(JsResult jsResult) {
        this.zza = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zza.cancel();
    }
}
