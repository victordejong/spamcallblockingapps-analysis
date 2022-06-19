package com.google.android.gms.ads;

import android.content.Context;
import android.webkit.WebView;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbhs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/MobileAds.class */
public class MobileAds {
    @RecentlyNonNull
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(@RecentlyNonNull Context context) {
        zzbhs.zze().zzo(context);
    }

    @RecentlyNullable
    public static InitializationStatus getInitializationStatus() {
        return zzbhs.zze().zzn();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzbhs.zze().zzr();
    }

    @RecentlyNonNull
    public static String getVersionString() {
        return zzbhs.zze().zzl();
    }

    public static void initialize(@RecentlyNonNull Context context) {
        zzbhs.zze().zzf(context, null, null);
    }

    public static void initialize(@RecentlyNonNull Context context, @RecentlyNonNull OnInitializationCompleteListener onInitializationCompleteListener) {
        zzbhs.zze().zzf(context, null, onInitializationCompleteListener);
    }

    public static void openAdInspector(@RecentlyNonNull Context context, @RecentlyNonNull OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzbhs.zze().zzp(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        zzbhs.zze().zzk(context, str);
    }

    @KeepForSdk
    public static void registerRtbAdapter(@RecentlyNonNull Class<? extends RtbAdapter> cls) {
        zzbhs.zze().zzm(cls);
    }

    @KeepForSdk
    public static void registerWebView(@RecentlyNonNull WebView webView) {
        zzbhs.zze().zzt(webView);
    }

    public static void setAppMuted(boolean z) {
        zzbhs.zze().zzi(z);
    }

    public static void setAppVolume(float f) {
        zzbhs.zze().zzg(f);
    }

    public static void setRequestConfiguration(@RecentlyNonNull RequestConfiguration requestConfiguration) {
        zzbhs.zze().zzs(requestConfiguration);
    }
}
