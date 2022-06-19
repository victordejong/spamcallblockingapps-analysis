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
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C6854pm;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.do0;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.wn0;
import com.google.android.gms.internal.ads.yo0;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
@TargetApi(16)
/* renamed from: com.google.android.gms.ads.internal.util.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/e.class */
public class C5684e {
    private C5684e() {
    }

    public /* synthetic */ C5684e(C5703i2 c5703i2) {
    }

    /* renamed from: r */
    public static C5684e m18042r(int i) {
        return i >= 28 ? new C5680d() : i >= 26 ? new C5672b() : i >= 24 ? new C5707j2() : i >= 21 ? new C5699h2() : i >= 19 ? new C5695g2() : i >= 18 ? new C5691f2() : i >= 17 ? new C5687e2() : new C5684e();
    }

    /* renamed from: s */
    public static final boolean m18041s() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    /* renamed from: a */
    public boolean mo18038a(Context context, WebSettings webSettings) {
        C5690f1.m18026a(context, new Callable(context, webSettings) { // from class: com.google.android.gms.ads.internal.util.d2

            /* renamed from: a */
            private final Context f18464a;

            /* renamed from: b */
            private final WebSettings f18465b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18464a = context;
                this.f18465b = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f18464a;
                WebSettings webSettings2 = this.f18465b;
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
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25823w0)).booleanValue()) {
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

    /* renamed from: b */
    public String mo18037b(Context context) {
        return "";
    }

    /* renamed from: c */
    public void mo18036c(Context context) {
    }

    /* renamed from: d */
    public Drawable mo18035d(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    /* renamed from: e */
    public int mo18034e(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    /* renamed from: f */
    public int mo18033f(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    /* renamed from: g */
    public boolean mo18018g(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    /* renamed from: h */
    public int mo18025h() {
        return 5;
    }

    /* renamed from: i */
    public long mo18024i() {
        return -1L;
    }

    /* renamed from: j */
    public ViewGroup.LayoutParams mo18017j() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: k */
    public CookieManager mo18016k(Context context) {
        if (m18041s()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            ei0.m15466d("Failed to obtain CookieManager.", th);
            C5667s.m18156h().m12235k(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    /* renamed from: l */
    public do0 mo18015l(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        return new yo0(wn0Var, c6854pm, z);
    }

    /* renamed from: m */
    public int mo18014m() {
        return 1;
    }

    /* renamed from: n */
    public WebResourceResponse mo18013n(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    /* renamed from: o */
    public boolean mo18008o(Activity activity, Configuration configuration) {
        return false;
    }

    /* renamed from: p */
    public int mo18044p(Context context, TelephonyManager telephonyManager) {
        return 1001;
    }

    /* renamed from: q */
    public void mo18043q(Activity activity) {
    }
}
