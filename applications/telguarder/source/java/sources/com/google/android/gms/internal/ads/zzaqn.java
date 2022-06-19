package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqn.class */
public final class zzaqn implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaql zzdqa;

    public zzaqn(zzaql zzaqlVar) {
        this.zzdqa = zzaqlVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdqa.zzds("User canceled the download.");
    }
}
