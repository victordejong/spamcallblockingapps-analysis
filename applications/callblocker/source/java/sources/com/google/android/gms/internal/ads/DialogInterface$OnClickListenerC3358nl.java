package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.nl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nl.class */
public final class DialogInterface$OnClickListenerC3358nl implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C3356nj f17015a;

    public DialogInterface$OnClickListenerC3358nl(C3356nj c3356nj) {
        this.f17015a = c3356nj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f17015a.m7398a("User canceled the download.");
    }
}
