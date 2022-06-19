package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmg.class */
public final class zzcmg implements DialogInterface.OnCancelListener {
    public final /* synthetic */ JsPromptResult zza;

    public zzcmg(JsPromptResult jsPromptResult) {
        this.zza = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zza.cancel();
    }
}
