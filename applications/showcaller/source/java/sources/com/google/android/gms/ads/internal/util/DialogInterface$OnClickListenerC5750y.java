package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.C5667s;
/* renamed from: com.google.android.gms.ads.internal.util.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/y.class */
final class DialogInterface$OnClickListenerC5750y implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ RunnableC5753z f18595d;

    public DialogInterface$OnClickListenerC5750y(RunnableC5753z runnableC5753z) {
        this.f18595d = runnableC5753z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C5667s.m18160d();
        C5679c2.m18051x(this.f18595d.f18600d, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
