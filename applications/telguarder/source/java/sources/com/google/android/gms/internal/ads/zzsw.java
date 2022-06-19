package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsw.class */
public final class zzsw {
    private final Context context;
    private final int orientation;
    private final zzzk zzacw;
    private final String zzbut;
    private zzxl zzbuz;
    private final AppOpenAd.AppOpenAdLoadCallback zzbva;
    private final zzanf zzbvb = new zzanf();
    private final zzvq zzact = zzvq.zzcif;

    public zzsw(Context context, String str, zzzk zzzkVar, int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.context = context;
        this.zzbut = str;
        this.zzacw = zzzkVar;
        this.orientation = i;
        this.zzbva = appOpenAdLoadCallback;
    }

    public final void zzmu() {
        try {
            this.zzbuz = zzwr.zzqo().zza(this.context, zzvs.zzqg(), this.zzbut, this.zzbvb);
            this.zzbuz.zza(new zzvx(this.orientation));
            this.zzbuz.zza(new zzsg(this.zzbva, this.zzbut));
            this.zzbuz.zza(zzvq.zza(this.context, this.zzacw));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
