package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanj.class */
public interface zzanj extends IInterface {
    void destroy();

    Bundle getInterstitialAdapterInfo();

    zzzc getVideoController();

    boolean isInitialized();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void showInterstitial();

    void showVideo();

    void zza(IObjectWrapper iObjectWrapper, zzajj zzajjVar, List<zzajr> list);

    void zza(IObjectWrapper iObjectWrapper, zzavf zzavfVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar);

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzavf zzavfVar, String str2);

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar);

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar, zzaeh zzaehVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, zzank zzankVar);

    void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, String str2, zzank zzankVar);

    void zza(zzvl zzvlVar, String str);

    void zza(zzvl zzvlVar, String str, String str2);

    void zzb(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar);

    void zzc(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar);

    void zzs(IObjectWrapper iObjectWrapper);

    void zzt(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzuu();

    zzanr zzuv();

    zzans zzuw();

    Bundle zzux();

    Bundle zzuy();

    boolean zzuz();

    zzafn zzva();

    zzanx zzvb();

    zzapy zzvc();

    zzapy zzvd();
}
