package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.nf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nf.class */
public final class DialogInterface$OnClickListenerC3352nf implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C3350nd f16988a;

    public DialogInterface$OnClickListenerC3352nf(C3350nd c3350nd) {
        this.f16988a = c3350nd;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f16988a.m7398a("Operation denied by user.");
    }
}
