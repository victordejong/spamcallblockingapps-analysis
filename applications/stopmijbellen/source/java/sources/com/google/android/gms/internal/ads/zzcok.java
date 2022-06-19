package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcok.class */
final class zzcok implements DialogInterface.OnCancelListener {
    public final /* synthetic */ JsPromptResult zza;

    public zzcok(JsPromptResult jsPromptResult) {
        this.zza = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zza.cancel();
    }
}
