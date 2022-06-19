package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzee.class */
final class zzee implements Runnable {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Context zzxl;
    private final /* synthetic */ View zzxm;
    private final /* synthetic */ String zzxp;

    public zzee(zzea zzeaVar, Context context, String str, View view, Activity activity) {
        this.zzxl = context;
        this.zzxp = str;
        this.zzxm = view;
        this.val$activity = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdsy zzdsyVar;
        zzds zzdsVar;
        try {
            zzdsVar = zzea.zzxa;
            zzdsVar.zza(this.zzxl, this.zzxp, this.zzxm, this.val$activity);
        } catch (Exception e) {
            zzdsyVar = zzea.zzxc;
            zzdsyVar.zza(2021, -1L, e);
        }
    }
}
