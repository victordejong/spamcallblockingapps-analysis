package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sn0.class */
final class sn0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ JsPromptResult f29583d;

    public sn0(JsPromptResult jsPromptResult) {
        this.f29583d = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f29583d.cancel();
    }
}
