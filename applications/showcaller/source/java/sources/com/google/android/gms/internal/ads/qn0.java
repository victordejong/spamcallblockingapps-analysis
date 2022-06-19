package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qn0.class */
final class qn0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ JsResult f28570d;

    public qn0(JsResult jsResult) {
        this.f28570d = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f28570d.confirm();
    }
}
