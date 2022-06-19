package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdv.class */
public final class zzbdv implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeqp;

    public zzbdv(JsResult jsResult) {
        this.zzeqp = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqp.cancel();
    }
}
