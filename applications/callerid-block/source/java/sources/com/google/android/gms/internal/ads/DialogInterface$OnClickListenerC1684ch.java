package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.ch */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ch.class */
final class DialogInterface$OnClickListenerC1684ch implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ dh f6262b;

    DialogInterface$OnClickListenerC1684ch(dh dhVar) {
        this.f6262b = dhVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f6262b.m7376b("User canceled the download.");
    }
}
