package com.google.android.gms.ads.internal.util;

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
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbfg;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzuq;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzr.class */
public class zzr {
    /* JADX INFO: Access modifiers changed from: private */
    public zzr() {
    }

    public static zzr zzdg(int i) {
        return i >= 28 ? new zzac() : i >= 26 ? new zzz() : i >= 24 ? new zzaa() : i >= 21 ? new zzx() : i >= 19 ? new zzy() : i >= 18 ? new zzv() : i >= 17 ? new zzw() : new zzr();
    }

    public static boolean zzze() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public String getDefaultUserAgent(Context context) {
        return "";
    }

    public boolean isAttachedToWindow(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public int zza(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    public zzbee zza(zzbeb zzbebVar, zztu zztuVar, boolean z) {
        return new zzbfg(zzbebVar, zztuVar, z);
    }

    public zzuq zza(Context context, TelephonyManager telephonyManager) {
        return zzuq.ENUM_UNKNOWN;
    }

    public boolean zza(Activity activity, Configuration configuration) {
        return false;
    }

    public boolean zza(Context context, WebSettings webSettings) {
        zzbr.zza(context, new Callable(context, webSettings) { // from class: com.google.android.gms.ads.internal.util.zzu
            private final Context zzcmi;
            private final WebSettings zzeew;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
                this.zzeew = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.zzcmi;
                WebSettings webSettings2 = this.zzeew;
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
                webSettings2.setAllowContentAccess(false);
                return true;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    public int zzb(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public void zzbe(Context context) {
    }

    public CookieManager zzbf(Context context) {
        if (zzze()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzd.zzc("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.zzr.zzkv().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public void zzi(Activity activity) {
    }

    public int zzzc() {
        return 5;
    }

    public ViewGroup.LayoutParams zzzd() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public int zzzf() {
        return 1;
    }

    public long zzzg() {
        return -1L;
    }
}
