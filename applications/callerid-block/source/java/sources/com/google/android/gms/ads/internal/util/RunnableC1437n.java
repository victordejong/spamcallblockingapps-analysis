package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.util.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/n.class */
public final class RunnableC1437n implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f5610b;

    /* renamed from: c */
    final /* synthetic */ String f5611c;

    /* renamed from: d */
    final /* synthetic */ boolean f5612d;

    /* renamed from: e */
    final /* synthetic */ boolean f5613e;

    public RunnableC1437n(C1440o c1440o, Context context, String str, boolean z, boolean z2) {
        this.f5610b = context;
        this.f5611c = str;
        this.f5612d = z;
        this.f5613e = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f5610b);
        builder.setMessage(this.f5611c);
        builder.setTitle(this.f5612d ? "Error" : "Info");
        if (this.f5613e) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new DialogInterface$OnClickListenerC1434m(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
