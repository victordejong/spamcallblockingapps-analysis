package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pm.class */
final class pm implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ pk f28288a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pm(pk pkVar) {
        this.f28288a = pkVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f28288a.a("Operation denied by user.");
    }
}
