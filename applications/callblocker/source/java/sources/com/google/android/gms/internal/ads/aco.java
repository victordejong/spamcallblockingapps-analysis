package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aco.class */
final class aco implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f7830a;

    public aco(JsPromptResult jsPromptResult) {
        this.f7830a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f7830a.cancel();
    }
}
