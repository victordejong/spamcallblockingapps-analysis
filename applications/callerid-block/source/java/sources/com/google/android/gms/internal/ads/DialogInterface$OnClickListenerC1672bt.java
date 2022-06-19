package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.bt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bt.class */
final class DialogInterface$OnClickListenerC1672bt implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ JsResult f6202b;

    public DialogInterface$OnClickListenerC1672bt(JsResult jsResult) {
        this.f6202b = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f6202b.cancel();
    }
}
