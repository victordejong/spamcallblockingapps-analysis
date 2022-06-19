package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: com.google.android.gms.internal.ads.ft */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ft.class */
final class DialogInterface$OnClickListenerC1738ft implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ JsPromptResult f6594b;

    public DialogInterface$OnClickListenerC1738ft(JsPromptResult jsPromptResult) {
        this.f6594b = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f6594b.cancel();
    }
}
