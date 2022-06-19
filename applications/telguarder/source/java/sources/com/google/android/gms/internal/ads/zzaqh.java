package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqh.class */
public final class zzaqh implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaqf zzdpc;

    public zzaqh(zzaqf zzaqfVar) {
        this.zzdpc = zzaqfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdpc.zzds("Operation denied by user.");
    }
}
