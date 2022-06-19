package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzal.class */
public final class zzal implements Runnable {
    final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzehl;
    private final /* synthetic */ boolean zzehm;
    private final /* synthetic */ boolean zzehn;

    public zzal(zzam zzamVar, Context context, String str, boolean z, boolean z2) {
        this.val$context = context;
        this.zzehl = str;
        this.zzehm = z;
        this.zzehn = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.val$context);
        builder.setMessage(this.zzehl);
        if (this.zzehm) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.zzehn) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton(DrawableConstants.CtaButton.DEFAULT_CTA_TEXT, new zzao(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
