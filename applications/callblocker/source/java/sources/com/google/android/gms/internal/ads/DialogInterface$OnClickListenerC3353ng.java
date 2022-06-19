package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.ng */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ng.class */
public final class DialogInterface$OnClickListenerC3353ng implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C3350nd f16989a;

    public DialogInterface$OnClickListenerC3353ng(C3350nd c3350nd) {
        this.f16989a = c3350nd;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent m7427b = this.f16989a.m7427b();
        C2341q.m14744c();
        context = this.f16989a.f16980b;
        C3567ve.m7007a(context, m7427b);
    }
}
