package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbea.class */
public final class zzbea implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeqq;

    public zzbea(JsPromptResult jsPromptResult) {
        this.zzeqq = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqq.cancel();
    }
}
