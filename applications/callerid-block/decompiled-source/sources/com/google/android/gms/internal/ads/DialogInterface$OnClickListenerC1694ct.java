package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.ct */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ct.class */
final class DialogInterface$OnClickListenerC1694ct implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ JsResult f6295b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1694ct(JsResult jsResult) {
        this.f6295b = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f6295b.confirm();
    }
}
