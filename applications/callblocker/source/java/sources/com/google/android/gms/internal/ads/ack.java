package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ack.class */
final class ack implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f7826a;

    public ack(JsResult jsResult) {
        this.f7826a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f7826a.cancel();
    }
}
