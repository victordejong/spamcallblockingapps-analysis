package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcme.class */
public final class zzcme implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsResult zza;

    public zzcme(JsResult jsResult) {
        this.zza = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.cancel();
    }
}
