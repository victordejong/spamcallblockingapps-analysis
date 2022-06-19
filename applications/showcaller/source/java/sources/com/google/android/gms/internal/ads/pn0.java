package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pn0.class */
final class pn0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ JsResult f28070d;

    public pn0(JsResult jsResult) {
        this.f28070d = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f28070d.cancel();
    }
}
