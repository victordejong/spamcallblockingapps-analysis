package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rn0.class */
final class rn0 implements DialogInterface.OnCancelListener {

    /* renamed from: d */
    final /* synthetic */ JsPromptResult f29044d;

    public rn0(JsPromptResult jsPromptResult) {
        this.f29044d = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f29044d.cancel();
    }
}
