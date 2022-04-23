package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pt.class */
final class pt implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ pr f28300a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pt(pr prVar) {
        this.f28300a = prVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f28300a.a("User canceled the download.");
    }
}
