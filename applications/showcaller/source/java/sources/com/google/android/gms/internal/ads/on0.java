package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/on0.class */
final class on0 implements DialogInterface.OnCancelListener {

    /* renamed from: d */
    final /* synthetic */ JsResult f27600d;

    public on0(JsResult jsResult) {
        this.f27600d = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f27600d.cancel();
    }
}
