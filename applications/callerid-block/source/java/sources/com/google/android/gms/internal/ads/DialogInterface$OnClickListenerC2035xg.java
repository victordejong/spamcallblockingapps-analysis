package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.xg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xg.class */
final class DialogInterface$OnClickListenerC2035xg implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ yg f9108b;

    DialogInterface$OnClickListenerC2035xg(yg ygVar) {
        this.f9108b = ygVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f9108b.m7376b("Operation denied by user.");
    }
}
