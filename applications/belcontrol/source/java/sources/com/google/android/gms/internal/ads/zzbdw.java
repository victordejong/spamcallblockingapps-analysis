package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdw.class */
public final class zzbdw implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsResult zzeqp;

    public zzbdw(JsResult jsResult) {
        this.zzeqp = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeqp.cancel();
    }
}
