package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.zzug;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcam.class */
public final class zzcam implements zzbrm, zzbxp {
    private final Context context;
    private final View view;
    private final zzaxc zzbqv;
    private final zzaxd zzfwd;
    private final zzug.zza.EnumC2617zza zzgbp;
    private String zzgbr;

    public zzcam(zzaxd zzaxdVar, Context context, zzaxc zzaxcVar, View view, zzug.zza.EnumC2617zza enumC2617zza) {
        this.zzfwd = zzaxdVar;
        this.context = context;
        this.zzbqv = zzaxcVar;
        this.view = view;
        this.zzgbp = enumC2617zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        this.zzfwd.zzan(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        View view = this.view;
        if (view != null && this.zzgbr != null) {
            this.zzbqv.zzf(view.getContext(), this.zzgbr);
        }
        this.zzfwd.zzan(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzald() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzalf() {
        String zzaa = this.zzbqv.zzaa(this.context);
        this.zzgbr = zzaa;
        String valueOf = String.valueOf(zzaa);
        String str = this.zzgbp == zzug.zza.EnumC2617zza.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.zzgbr = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    @ParametersAreNonnullByDefault
    public final void zzb(zzauk zzaukVar, String str, String str2) {
        if (this.zzbqv.zzy(this.context)) {
            try {
                zzaxc zzaxcVar = this.zzbqv;
                Context context = this.context;
                zzaxcVar.zza(context, zzaxcVar.zzad(context), this.zzfwd.getAdUnitId(), zzaukVar.getType(), zzaukVar.getAmount());
            } catch (RemoteException e) {
                zzd.zzd("Remote Exception to get reward item.", e);
            }
        }
    }
}
