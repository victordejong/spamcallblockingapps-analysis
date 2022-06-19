package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeb.class */
public final class zzeeb implements zzbzk {
    private final zzbzk zza;
    private final zzbzk zzb;

    public zzeeb(zzbzk zzbzkVar, zzbzk zzbzkVar2) {
        this.zza = zzbzkVar;
        this.zzb = zzbzkVar2;
    }

    private final zzbzk zzb() {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzdw)).booleanValue() ? this.zza : this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final boolean zza(Context context) {
        return zzb().zza(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final String zzc(Context context) {
        return zzb().zzc(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zzd(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        return zzb().zzd(str, webView, "", "javascript", str4, zzbzmVar, zzbzlVar, str5);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zze(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        return zzb().zze(str, webView, "", "javascript", str4, str5, zzbzmVar, zzbzlVar, str6);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzf(IObjectWrapper iObjectWrapper) {
        zzb().zzf(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzg(IObjectWrapper iObjectWrapper) {
        zzb().zzg(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzh(IObjectWrapper iObjectWrapper, View view) {
        zzb().zzh(iObjectWrapper, view);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzi(IObjectWrapper iObjectWrapper, View view) {
        zzb().zzi(iObjectWrapper, view);
    }
}
