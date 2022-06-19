package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/na0.class */
public final class na0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ oa0 f27047d;

    public na0(oa0 oa0Var) {
        this.f27047d = oa0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f27047d.m11621b("User canceled the download.");
    }
}
