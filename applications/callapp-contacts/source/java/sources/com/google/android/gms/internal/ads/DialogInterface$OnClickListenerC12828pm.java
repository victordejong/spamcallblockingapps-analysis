package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.pm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pm.class */
final class DialogInterface$OnClickListenerC12828pm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C12826pk f49663a;

    public DialogInterface$OnClickListenerC12828pm(C12826pk c12826pk) {
        this.f49663a = c12826pk;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f49663a.m14244a("Operation denied by user.");
    }
}
