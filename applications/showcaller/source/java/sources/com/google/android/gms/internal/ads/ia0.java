package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ia0.class */
public final class ia0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ ja0 f24179d;

    public ia0(ja0 ja0Var) {
        this.f24179d = ja0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f24179d.m11621b("Operation denied by user.");
    }
}
