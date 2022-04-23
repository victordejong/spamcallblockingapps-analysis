package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: com.google.android.gms.internal.ads.et */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/et.class */
final class DialogInterface$OnCancelListenerC1724et implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    final /* synthetic */ JsPromptResult f6451b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnCancelListenerC1724et(JsPromptResult jsPromptResult) {
        this.f6451b = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f6451b.cancel();
    }
}
