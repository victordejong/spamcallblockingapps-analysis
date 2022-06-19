package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.pt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pt.class */
final class DialogInterface$OnClickListenerC12835pt implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C12833pr f49690a;

    public DialogInterface$OnClickListenerC12835pt(C12833pr c12833pr) {
        this.f49690a = c12833pr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f49690a.m14244a("User canceled the download.");
    }
}
