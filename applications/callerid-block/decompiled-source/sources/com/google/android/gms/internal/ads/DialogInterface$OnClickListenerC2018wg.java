package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
/* renamed from: com.google.android.gms.internal.ads.wg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wg.class */
final class DialogInterface$OnClickListenerC2018wg implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ yg f9010b;

    DialogInterface$OnClickListenerC2018wg(yg ygVar) {
        this.f9010b = ygVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent i2 = this.f9010b.i();
        C1407r.m8920d();
        C1433l1.m8753n(yg.j(this.f9010b), i2);
    }
}
