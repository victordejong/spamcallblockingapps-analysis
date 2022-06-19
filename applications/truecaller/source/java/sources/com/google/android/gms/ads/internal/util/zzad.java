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
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcml;
import com.google.android.gms.internal.ads.zzcms;
import com.google.android.gms.internal.ads.zzcno;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzad.class */
public class zzad {
    private zzad() {
    }

    public /* synthetic */ zzad(zzy zzyVar) {
    }

    public static zzad zzt(int i) {
        return i >= 28 ? new zzac() : i >= 26 ? new zzaa() : i >= 24 ? new zzz() : i >= 21 ? new zzx() : i >= 19 ? new zzw() : i >= 18 ? new zzv() : i >= 17 ? new zzu() : new zzad();
    }

    public static final boolean zzu() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public boolean zza(Context context, WebSettings webSettings) {
        zzce.zza(context, new Callable(context, webSettings) { // from class: com.google.android.gms.ads.internal.util.zzt
            private final Context zza;
            private final WebSettings zzb;

            {
                this.zza = context;
                this.zzb = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.zza;
                WebSettings webSettings2 = this.zzb;
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
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaw)).booleanValue()) {
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

    public String zzb(Context context) {
        return "";
    }

    public void zzc(Context context) {
    }

    public Drawable zzd(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public int zze(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public int zzf(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public boolean zzg(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public int zzh() {
        return 5;
    }

    public long zzi() {
        return -1L;
    }

    public ViewGroup.LayoutParams zzj() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public CookieManager zzk(Context context) {
        if (zzu()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzcgt.zzg("Failed to obtain CookieManager.", th);
            zzt.zzg().zzk(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public zzcms zzl(zzcml zzcmlVar, zzazb zzazbVar, boolean z) {
        return new zzcno(zzcmlVar, zzazbVar, z);
    }

    public int zzm() {
        return 1;
    }

    public WebResourceResponse zzn(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    public boolean zzo(Activity activity, Configuration configuration) {
        return false;
    }

    public int zzq(Context context, TelephonyManager telephonyManager) {
        return 1001;
    }

    public void zzr(Activity activity) {
    }
}
