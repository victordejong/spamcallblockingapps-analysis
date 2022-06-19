package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcol.class */
final class zzcol implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsPromptResult zza;

    public zzcol(JsPromptResult jsPromptResult) {
        this.zza = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.cancel();
    }
}
