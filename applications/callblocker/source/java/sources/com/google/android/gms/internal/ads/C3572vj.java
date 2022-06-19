package com.google.android.gms.internal.ads;

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
import com.google.android.gms.ads.internal.C2341q;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.vj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vj.class */
public class C3572vj {
    /* JADX INFO: Access modifiers changed from: private */
    public C3572vj() {
    }

    /* renamed from: a */
    public static C3572vj m6941a(int i) {
        return i >= 28 ? new C3583vu() : i >= 26 ? new C3580vr() : i >= 24 ? new C3581vs() : i >= 21 ? new C3578vp() : i >= 19 ? new C3579vq() : i >= 18 ? new C3576vn() : i >= 17 ? new C3577vo() : new C3572vj();
    }

    /* renamed from: a */
    public static boolean m6940a(act actVar) {
        boolean z;
        if (actVar == null) {
            z = false;
        } else {
            actVar.onPause();
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m6939b(act actVar) {
        boolean z;
        if (actVar == null) {
            z = false;
        } else {
            actVar.onResume();
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m6938c() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    /* renamed from: a */
    public int mo6937a() {
        return 5;
    }

    /* renamed from: a */
    public int mo6935a(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    /* renamed from: a */
    public Drawable mo6933a(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    /* renamed from: a */
    public WebResourceResponse mo6928a(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    /* renamed from: a */
    public acs mo6929a(act actVar, dwi dwiVar, boolean z) {
        return new adu(actVar, dwiVar, z);
    }

    /* renamed from: a */
    public dxf mo6923a(Context context, TelephonyManager telephonyManager) {
        return dxf.ENUM_UNKNOWN;
    }

    /* renamed from: a */
    public String mo6934a(Context context) {
        return "";
    }

    /* renamed from: a */
    public void mo6920a(Activity activity) {
    }

    /* renamed from: a */
    public boolean mo6921a(Activity activity, Configuration configuration) {
        return false;
    }

    /* renamed from: a */
    public boolean mo6932a(Context context, WebSettings webSettings) {
        C3626xj.m6821a(context, new Callable(context, webSettings) { // from class: com.google.android.gms.internal.ads.vm

            /* renamed from: a */
            private final Context f17511a;

            /* renamed from: b */
            private final WebSettings f17512b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17511a = context;
                this.f17512b = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f17511a;
                WebSettings webSettings2 = this.f17512b;
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

    /* renamed from: a */
    public boolean mo6925a(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    public int mo6931b(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    /* renamed from: b */
    public ViewGroup.LayoutParams mo6924b() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: b */
    public void mo6930b(Context context) {
    }

    /* renamed from: c */
    public CookieManager mo6927c(Context context) {
        CookieManager cookieManager;
        if (m6938c()) {
            cookieManager = null;
        } else {
            try {
                CookieSyncManager.createInstance(context);
                cookieManager = CookieManager.getInstance();
            } catch (Throwable th) {
                C3556uu.m6748c("Failed to obtain CookieManager.", th);
                C2341q.m14740g().m7095a(th, "ApiLevelUtil.getCookieManager");
                cookieManager = null;
            }
        }
        return cookieManager;
    }

    /* renamed from: d */
    public int mo6926d() {
        return 1;
    }

    /* renamed from: e */
    public long mo6936e() {
        return -1L;
    }
}
