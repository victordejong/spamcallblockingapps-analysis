package com.inmobi.commons.p508a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8406c;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.inmobi.commons.a.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/a/a.class */
public final class C8326a {

    /* renamed from: a */
    public static final String f32375a = "a";

    /* renamed from: b */
    public static final boolean f32376b = false;

    /* renamed from: c */
    public static Context f32377c;

    /* renamed from: d */
    public static String f32378d = "";

    /* renamed from: e */
    public static String f32379e = "";

    /* renamed from: f */
    public static AtomicBoolean f32380f = new AtomicBoolean();

    /* renamed from: g */
    public static boolean f32381g = false;

    /* renamed from: a */
    public static File m5898a(Context context) {
        return new File(context.getFilesDir(), "im_cached_content");
    }

    /* renamed from: a */
    public static File m5893a(String str) {
        m5882h();
        File a = m5898a(f32377c);
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return new File(a, String.valueOf(hashCode & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT) + String.valueOf(str.substring(length).hashCode() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT));
    }

    /* renamed from: a */
    public static void m5897a(Context context, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            activity.getApplication().unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
            activity.getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }

    /* renamed from: a */
    public static void m5896a(Context context, Intent intent) {
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    /* renamed from: a */
    public static void m5895a(Context context, String str) {
        if (!m5899a()) {
            f32377c = context.getApplicationContext();
            f32379e = str;
            f32380f.set(true);
            if (Build.VERSION.SDK_INT < 17) {
                try {
                    f32378d = new WebView(context).getSettings().getUserAgentString();
                } catch (Exception e) {
                    f32377c = null;
                    new StringBuilder("SDK encountered an unexpected error in SdkContext.fetchWebviewUserAgent().handler() method; ").append(e.getMessage());
                }
            }
            m5882h();
        }
    }

    /* renamed from: a */
    public static void m5894a(File file) {
        C8406c.m5652a(file);
    }

    /* renamed from: a */
    public static void m5892a(boolean z) {
        f32381g = z;
    }

    /* renamed from: a */
    public static boolean m5899a() {
        return f32377c != null;
    }

    /* renamed from: b */
    public static Context m5891b() {
        return f32377c;
    }

    /* renamed from: b */
    public static void m5890b(Context context) {
        try {
            File file = new File(context.getCacheDir(), "im_cached_content");
            if (file.exists()) {
                C8406c.m5652a(file);
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in clearOldMediaCacheDirectory; ").append(e.getMessage());
        }
    }

    /* renamed from: b */
    public static void m5889b(boolean z) {
        f32380f.set(z);
    }

    /* renamed from: c */
    public static String m5887c(Context context) {
        String str = "";
        try {
            if (!f32376b) {
                return WebSettings.getDefaultUserAgent(context.getApplicationContext());
            }
            throw new Exception("android.util.AndroidRuntimeException: android.content.pm.PackageManager$NameNotFoundException: com.google.android.webview");
        } catch (Throwable th) {
            new StringBuilder("SDK encountered an unexpected error in getting user agent information; ").append(th.getMessage());
            C8328a.m5878a().m5875a(new C8365a(th));
            try {
                str = System.getProperty("http.agent");
                if (str == null) {
                    return "";
                }
            } catch (Exception e) {
                new StringBuilder("SDK encountered an unexpected error in getting property of http.agent; ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            return str;
        }
    }

    /* renamed from: c */
    public static void m5888c() {
        f32377c = null;
    }

    /* renamed from: d */
    public static boolean m5886d() {
        return f32381g;
    }

    /* renamed from: e */
    public static String m5885e() {
        return f32379e;
    }

    /* renamed from: f */
    public static String m5884f() {
        if (TextUtils.isEmpty(f32378d) && Build.VERSION.SDK_INT >= 17) {
            f32378d = m5887c(f32377c);
        }
        return f32378d;
    }

    /* renamed from: g */
    public static boolean m5883g() {
        return f32380f.get();
    }

    /* renamed from: h */
    public static void m5882h() {
        File a = m5898a(f32377c);
        if (!a.mkdir()) {
            a.isDirectory();
        }
    }
}
