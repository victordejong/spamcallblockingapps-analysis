package com.flurry.sdk;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.File;
/* renamed from: com.flurry.sdk.gg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gg.class */
public final class C3157gg extends WebView {
    public C3157gg(Context context) {
        this(context, (byte) 0);
    }

    public C3157gg(Context context, byte b) {
        this(context, (char) 0);
    }

    public C3157gg(Context context, char c) {
        super(context, null, -1);
        if (!isInEditMode()) {
            WebSettings settings = getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
            if (C3017ed.m33282a(11)) {
                settings.setDisplayZoomControls(false);
            }
            settings.setAppCacheEnabled(true);
            settings.setAppCachePath(getCachePath());
            settings.setDomStorageEnabled(true);
            settings.setDatabaseEnabled(true);
            CookieManager instance = CookieManager.getInstance();
            instance.setAcceptCookie(true);
            if (C3017ed.m33282a(21)) {
                instance.setAcceptThirdPartyCookies(this, true);
            }
            try {
                CookieSyncManager.getInstance();
                CookieSyncManager.getInstance().startSync();
            } catch (Exception e) {
                CookieSyncManager.createInstance(getContext());
            }
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 && context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                settings.setGeolocationEnabled(true);
                settings.setGeolocationDatabasePath("/tmp/");
            }
            setVerticalScrollBarEnabled(true);
            setHorizontalScrollBarEnabled(true);
            setScrollBarStyle(0);
            settings.setNeedInitialFocus(false);
            if (C3017ed.m33282a(17)) {
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            settings.setAllowFileAccess(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setSupportMultipleWindows(false);
            settings.setLoadsImagesAutomatically(true);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            settings.setLoadsImagesAutomatically(true);
            settings.setDefaultFontSize(16);
            settings.setDefaultFixedFontSize(13);
            settings.setSaveFormData(true);
            settings.setPluginState(WebSettings.PluginState.ON);
            if (C3017ed.m33282a(19) && (context.getApplicationInfo().flags & 2) != 0) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        }
    }

    public final String getCachePath() {
        File a = C3012dz.m33304a("flurry");
        if (!a.exists()) {
            a.mkdirs();
        }
        return a.getAbsolutePath();
    }
}
