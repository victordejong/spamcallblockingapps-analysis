package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.wh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wh.class */
final class DialogInterface$OnClickListenerC3597wh implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ RunnableC3593wd f17549a;

    public DialogInterface$OnClickListenerC3597wh(RunnableC3593wd runnableC3593wd) {
        this.f17549a = runnableC3593wd;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C2341q.m14744c();
        C3567ve.m7006a(this.f17549a.f17538a, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
