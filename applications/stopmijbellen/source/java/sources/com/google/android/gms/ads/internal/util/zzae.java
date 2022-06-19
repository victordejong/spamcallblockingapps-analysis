package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbay;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcop;
import com.google.android.gms.internal.ads.zzcow;
import com.google.android.gms.internal.ads.zzcpr;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzae.class */
public class zzae {
    private zzae() {
    }

    public /* synthetic */ zzae(zzad zzadVar) {
    }

    public static zzae zzt(int i) {
        return i >= 28 ? new zzac() : i >= 26 ? new zzaa() : i >= 24 ? new zzz() : i >= 21 ? new zzy() : i >= 19 ? new zzx() : i >= 18 ? new zzw() : i >= 17 ? new zzv() : new zzae();
    }

    public static final boolean zzu() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public int zza(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public int zzb(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public Drawable zzc(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public String zzd(Context context) {
        return "";
    }

    public void zze(Context context) {
    }

    public boolean zzf(final Context context, final WebSettings webSettings) {
        zzcf.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = context;
                WebSettings webSettings2 = webSettings;
                if (context2.getCacheDir() != null) {
                    webSettings2.setAppCachePath(context2.getCacheDir().getAbsolutePath());
                    webSettings2.setAppCacheMaxSize(0L);
                    webSettings2.setAppCacheEnabled(true);
                }
                webSettings2.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaz)).booleanValue()) {
                    webSettings2.setTextZoom(100);
                }
                webSettings2.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    public int zzg() {
        return 5;
    }

    public long zzh() {
        return -1L;
    }

    public boolean zzi(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public ViewGroup.LayoutParams zzj() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public int zzk() {
        return 1;
    }

    public CookieManager zzl(Context context) {
        if (zzu()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzciz.zzh("Failed to obtain CookieManager.", th);
            zzt.zzo().zzs(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public WebResourceResponse zzm(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    public zzcow zzn(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        return new zzcpr(zzcopVar, zzbayVar, z);
    }

    public boolean zzo(Activity activity, Configuration configuration) {
        return false;
    }

    public int zzq(Context context, TelephonyManager telephonyManager) {
        return AdError.NO_FILL_ERROR_CODE;
    }

    public void zzr(Activity activity) {
    }
}
