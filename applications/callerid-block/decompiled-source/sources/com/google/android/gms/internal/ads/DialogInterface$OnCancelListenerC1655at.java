package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/at.class */
final class DialogInterface$OnCancelListenerC1655at implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    final /* synthetic */ JsResult f6080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnCancelListenerC1655at(JsResult jsResult) {
        this.f6080b = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f6080b.cancel();
    }
}
