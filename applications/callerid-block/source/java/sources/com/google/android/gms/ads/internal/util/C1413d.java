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
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.jt;
import com.google.android.gms.internal.ads.lu;
import com.google.android.gms.internal.ads.qt;
import com.google.android.gms.internal.ads.wv2;
import com.google.android.gms.internal.ads.zzvy;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
@TargetApi(16)
/* renamed from: com.google.android.gms.ads.internal.util.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/d.class */
public class C1413d {
    private C1413d() {
    }

    /* synthetic */ C1413d(C1439n1 c1439n1) {
    }

    /* renamed from: r */
    public static C1413d m8847r(int i) {
        return i >= 28 ? new c() : i >= 26 ? new t1() : i >= 24 ? new s1() : i >= 21 ? new r1() : i >= 19 ? new q1() : i >= 18 ? new p1() : i >= 17 ? new o1() : new C1413d();
    }

    /* renamed from: s */
    public static final boolean m8846s() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    /* renamed from: a */
    public boolean m8864a(Context context, WebSettings webSettings) {
        C1441o0.m8726a(context, new Callable(context, webSettings) { // from class: com.google.android.gms.ads.internal.util.m1

            /* renamed from: a */
            private final Context f5608a;

            /* renamed from: b */
            private final WebSettings f5609b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5608a = context;
                this.f5609b = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f5608a;
                WebSettings webSettings2 = this.f5609b;
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
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7497s0)).booleanValue()) {
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
    public String m8863b(Context context) {
        return "";
    }

    /* renamed from: c */
    public void m8862c(Context context) {
    }

    /* renamed from: d */
    public Drawable m8861d(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    /* renamed from: e */
    public int m8860e(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    /* renamed from: f */
    public int m8859f(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    /* renamed from: g */
    public boolean m8858g(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    /* renamed from: h */
    public int m8857h() {
        return 5;
    }

    /* renamed from: i */
    public long m8856i() {
        return -1L;
    }

    /* renamed from: j */
    public ViewGroup.LayoutParams m8855j() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: k */
    public CookieManager m8854k(Context context) {
        if (!m8846s()) {
            try {
                CookieSyncManager.createInstance(context);
                return CookieManager.getInstance();
            } catch (Throwable th) {
                C1894po.m6182d("Failed to obtain CookieManager.", th);
                C1407r.m8916h().m4590g(th, "ApiLevelUtil.getCookieManager");
                return null;
            }
        }
        return null;
    }

    /* renamed from: l */
    public qt m8853l(jt jtVar, wv2 wv2Var, boolean z) {
        return new lu(jtVar, wv2Var, z);
    }

    /* renamed from: m */
    public int m8852m() {
        return 1;
    }

    /* renamed from: n */
    public WebResourceResponse m8851n(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    /* renamed from: o */
    public boolean m8850o(Activity activity, Configuration configuration) {
        return false;
    }

    /* renamed from: p */
    public zzvy m8849p(Context context, TelephonyManager telephonyManager) {
        return zzvy.d;
    }

    /* renamed from: q */
    public void m8848q(Activity activity) {
    }
}
