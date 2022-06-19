package androidx.webkit;

import android.webkit.WebSettings;
import androidx.webkit.internal.WebSettingsAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebSettingsCompat.class */
public class WebSettingsCompat {
    public static final int DARK_STRATEGY_PREFER_WEB_THEME_OVER_USER_AGENT_DARKENING = 2;
    public static final int DARK_STRATEGY_USER_AGENT_DARKENING_ONLY = 0;
    public static final int DARK_STRATEGY_WEB_THEME_DARKENING_ONLY = 1;
    public static final int FORCE_DARK_AUTO = 1;
    public static final int FORCE_DARK_OFF = 0;
    public static final int FORCE_DARK_ON = 2;

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebSettingsCompat$ForceDark.class */
    public @interface ForceDark {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebSettingsCompat$ForceDarkStrategy.class */
    public @interface ForceDarkStrategy {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebSettingsCompat$MenuItemFlags.class */
    public @interface MenuItemFlags {
    }

    private WebSettingsCompat() {
    }

    private static WebSettingsAdapter getAdapter(WebSettings webSettings) {
        return WebViewGlueCommunicator.getCompatConverter().convertSettings(webSettings);
    }

    public static int getDisabledActionModeMenuItems(WebSettings webSettings) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.DISABLED_ACTION_MODE_MENU_ITEMS;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webSettings.getDisabledActionModeMenuItems();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getAdapter(webSettings).getDisabledActionModeMenuItems();
    }

    public static int getForceDark(WebSettings webSettings) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.FORCE_DARK;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webSettings.getForceDark();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getAdapter(webSettings).getForceDark();
    }

    public static int getForceDarkStrategy(WebSettings webSettings) {
        if (WebViewFeatureInternal.FORCE_DARK_STRATEGY.isSupportedByWebView()) {
            return getAdapter(webSettings).getForceDark();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean getOffscreenPreRaster(WebSettings webSettings) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.OFF_SCREEN_PRERASTER;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webSettings.getOffscreenPreRaster();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getAdapter(webSettings).getOffscreenPreRaster();
    }

    public static boolean getSafeBrowsingEnabled(WebSettings webSettings) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_ENABLE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webSettings.getSafeBrowsingEnabled();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getAdapter(webSettings).getSafeBrowsingEnabled();
    }

    public static void setDisabledActionModeMenuItems(WebSettings webSettings, int i) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.DISABLED_ACTION_MODE_MENU_ITEMS;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webSettings.setDisabledActionModeMenuItems(i);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getAdapter(webSettings).setDisabledActionModeMenuItems(i);
        }
    }

    public static void setForceDark(WebSettings webSettings, int i) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.FORCE_DARK;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webSettings.setForceDark(i);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getAdapter(webSettings).setForceDark(i);
        }
    }

    public static void setForceDarkStrategy(WebSettings webSettings, int i) {
        if (WebViewFeatureInternal.FORCE_DARK_STRATEGY.isSupportedByWebView()) {
            getAdapter(webSettings).setForceDarkStrategy(i);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setOffscreenPreRaster(WebSettings webSettings, boolean z) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.OFF_SCREEN_PRERASTER;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webSettings.setOffscreenPreRaster(z);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getAdapter(webSettings).setOffscreenPreRaster(z);
        }
    }

    public static void setSafeBrowsingEnabled(WebSettings webSettings, boolean z) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_ENABLE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webSettings.setSafeBrowsingEnabled(z);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getAdapter(webSettings).setSafeBrowsingEnabled(z);
        }
    }

    public static void setWillSuppressErrorPage(WebSettings webSettings, boolean z) {
        if (WebViewFeatureInternal.SUPPRESS_ERROR_PAGE.isSupportedByWebView()) {
            getAdapter(webSettings).setWillSuppressErrorPage(z);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean willSuppressErrorPage(WebSettings webSettings) {
        if (WebViewFeatureInternal.SUPPRESS_ERROR_PAGE.isSupportedByWebView()) {
            return getAdapter(webSettings).willSuppressErrorPage();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
