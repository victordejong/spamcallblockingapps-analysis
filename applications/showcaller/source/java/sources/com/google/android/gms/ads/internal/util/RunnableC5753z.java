package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* renamed from: com.google.android.gms.ads.internal.util.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/z.class */
public final class RunnableC5753z implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Context f18600d;

    /* renamed from: e */
    final /* synthetic */ String f18601e;

    /* renamed from: f */
    final /* synthetic */ boolean f18602f;

    /* renamed from: g */
    final /* synthetic */ boolean f18603g;

    public RunnableC5753z(C5669a0 c5669a0, Context context, String str, boolean z, boolean z2) {
        this.f18600d = context;
        this.f18601e = str;
        this.f18602f = z;
        this.f18603g = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f18600d);
        builder.setMessage(this.f18601e);
        if (this.f18602f) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f18603g) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new DialogInterface$OnClickListenerC5750y(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
