package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzank.class */
public interface zzank extends IInterface {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdLoaded();

    void onAdOpened();

    void onAppEvent(String str, String str2);

    void onVideoEnd();

    void onVideoPause();

    void onVideoPlay();

    void zza(zzafn zzafnVar, String str);

    void zza(zzanp zzanpVar);

    void zza(zzavl zzavlVar);

    void zzb(Bundle bundle);

    void zzb(zzavj zzavjVar);

    void zzc(int i, String str);

    void zzd(zzvg zzvgVar);

    void zzdb(int i);

    void zzdi(String str);

    void zzdj(String str);

    void zzf(zzvg zzvgVar);

    void zzve();

    void zzvf();
}
