package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adp.class */
final class adp implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f39991a;

    public adp(JsPromptResult jsPromptResult) {
        this.f39991a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f39991a.cancel();
    }
}
