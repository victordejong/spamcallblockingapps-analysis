package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdx.class */
public final class zzbdx implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsPromptResult zzeqq;

    public zzbdx(JsPromptResult jsPromptResult) {
        this.zzeqq = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeqq.cancel();
    }
}
