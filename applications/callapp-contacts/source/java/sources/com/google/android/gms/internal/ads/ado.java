package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ado.class */
final class ado implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f39990a;

    public ado(JsPromptResult jsPromptResult) {
        this.f39990a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f39990a.cancel();
    }
}
