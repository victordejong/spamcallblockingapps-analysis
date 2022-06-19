package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ha0.class */
public final class ha0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ ja0 f23835d;

    public ha0(ja0 ja0Var) {
        this.f23835d = ja0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent m14144j = this.f23835d.m14144j();
        C5667s.m18160d();
        context = this.f23835d.f24824d;
        C5679c2.m18059p(context, m14144j);
    }
}
