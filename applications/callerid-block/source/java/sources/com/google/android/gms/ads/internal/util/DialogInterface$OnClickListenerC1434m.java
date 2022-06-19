package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.C1407r;
/* renamed from: com.google.android.gms.ads.internal.util.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/m.class */
final class DialogInterface$OnClickListenerC1434m implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ RunnableC1437n f5604b;

    public DialogInterface$OnClickListenerC1434m(RunnableC1437n runnableC1437n) {
        this.f5604b = runnableC1437n;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C1407r.m8920d();
        C1433l1.m8745v(this.f5604b.f5610b, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
