package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehs.class */
public final class zzehs implements zzcbm {
    private final zzcbm zza;
    private final zzcbm zzb;

    public zzehs(zzcbm zzcbmVar, zzcbm zzcbmVar2) {
        this.zza = zzcbmVar;
        this.zzb = zzcbmVar2;
    }

    private final zzcbm zzf() {
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzdD)).booleanValue() ? this.zza : this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, zzcbo zzcboVar, zzcbn zzcbnVar, String str5) {
        return zzf().zza(str, webView, "", "javascript", str4, zzcboVar, zzcbnVar, str5);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zzb(String str, WebView webView, String str2, String str3, String str4, String str5, zzcbo zzcboVar, zzcbn zzcbnVar, String str6) {
        return zzf().zzb(str, webView, "", "javascript", str4, str5, zzcboVar, zzcbnVar, str6);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final String zzc(Context context) {
        return zzf().zzc(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzd(IObjectWrapper iObjectWrapper, View view) {
        zzf().zzd(iObjectWrapper, view);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zze(IObjectWrapper iObjectWrapper) {
        zzf().zze(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzg(IObjectWrapper iObjectWrapper, View view) {
        zzf().zzg(iObjectWrapper, view);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzh(IObjectWrapper iObjectWrapper) {
        zzf().zzh(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final boolean zzi(Context context) {
        return zzf().zzi(context);
    }
}
