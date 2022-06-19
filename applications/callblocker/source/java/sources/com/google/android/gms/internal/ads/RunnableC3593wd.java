package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.wd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wd.class */
public final class RunnableC3593wd implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f17538a;

    /* renamed from: b */
    private final /* synthetic */ String f17539b;

    /* renamed from: c */
    private final /* synthetic */ boolean f17540c;

    /* renamed from: d */
    private final /* synthetic */ boolean f17541d;

    public RunnableC3593wd(C3595wf c3595wf, Context context, String str, boolean z, boolean z2) {
        this.f17538a = context;
        this.f17539b = str;
        this.f17540c = z;
        this.f17541d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f17538a);
        builder.setMessage(this.f17539b);
        if (this.f17540c) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f17541d) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new DialogInterface$OnClickListenerC3597wh(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
