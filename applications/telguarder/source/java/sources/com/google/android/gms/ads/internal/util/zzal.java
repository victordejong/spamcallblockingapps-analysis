package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzal.class */
public final class zzal implements Runnable {
    final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzefi;
    private final /* synthetic */ boolean zzefj;
    private final /* synthetic */ boolean zzefk;

    public zzal(zzam zzamVar, Context context, String str, boolean z, boolean z2) {
        this.val$context = context;
        this.zzefi = str;
        this.zzefj = z;
        this.zzefk = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.val$context);
        builder.setMessage(this.zzefi);
        if (this.zzefj) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.zzefk) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new zzao(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
