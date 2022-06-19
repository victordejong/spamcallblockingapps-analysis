package androidx.webkit;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.webkit.internal.WebMessagePortImpl;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import androidx.webkit.internal.WebViewProviderAdapter;
import androidx.webkit.internal.WebViewProviderFactory;
import androidx.webkit.internal.WebViewRenderProcessClientFrameworkAdapter;
import androidx.webkit.internal.WebViewRenderProcessImpl;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewCompat.class */
public class WebViewCompat {
    private static final Uri WILDCARD_URI = Uri.parse("*");
    private static final Uri EMPTY_URI = Uri.parse("");

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewCompat$VisualStateCallback.class */
    public interface VisualStateCallback {
        void onComplete(long j);
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewCompat$WebMessageListener.class */
    public interface WebMessageListener {
        void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy);
    }

    private WebViewCompat() {
    }

    public static ScriptReferenceCompat addDocumentStartJavaScript(WebView webView, String str, Set<String> set) {
        if (WebViewFeatureInternal.DOCUMENT_START_SCRIPT.isSupportedByWebView()) {
            return getProvider(webView).addDocumentStartJavaScript(str, (String[]) set.toArray(new String[0]));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void addWebMessageListener(WebView webView, String str, Set<String> set, WebMessageListener webMessageListener) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (!WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
                throw WebViewFeatureInternal.getUnsupportedOperationException();
            }
            getProvider(webView).addWebMessageListener(str, (String[]) set.toArray(new String[0]), webMessageListener);
            return;
        }
        throw new AssertionError("Should be on Lollipop and above.");
    }

    private static void checkThread(WebView webView) {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("checkThread", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(webView, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        } else if (webView.getWebViewLooper() == Looper.myLooper()) {
        } else {
            throw new RuntimeException("A WebView method was called on thread '" + Thread.currentThread().getName() + "'. All WebView methods must be called on the same thread. (Expected Looper " + webView.getWebViewLooper() + " called on " + Looper.myLooper() + ", FYI main Looper is " + Looper.getMainLooper() + ")");
        }
    }

    private static WebViewProviderBoundaryInterface createProvider(WebView webView) {
        return getFactory().createWebView(webView);
    }

    public static WebMessagePortCompat[] createWebMessageChannel(WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.CREATE_WEB_MESSAGE_CHANNEL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return WebMessagePortImpl.portsToCompat(webView.createWebMessageChannel());
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getProvider(webView).createWebMessageChannel();
    }

    public static PackageInfo getCurrentWebViewPackage(Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return WebView.getCurrentWebViewPackage();
        }
        try {
            PackageInfo loadedWebViewPackageInfo = getLoadedWebViewPackageInfo();
            return loadedWebViewPackageInfo != null ? loadedWebViewPackageInfo : getNotYetLoadedWebViewPackageInfo(context);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    private static WebViewProviderFactory getFactory() {
        return WebViewGlueCommunicator.getFactory();
    }

    private static PackageInfo getLoadedWebViewPackageInfo() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    private static PackageInfo getNotYetLoadedWebViewPackageInfo(Context context) {
        try {
            String str = (Build.VERSION.SDK_INT < 21 || Build.VERSION.SDK_INT > 23) ? (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", new Class[0]).invoke(null, new Object[0]) : (String) Class.forName("android.webkit.WebViewFactory").getMethod("getWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            if (str != null) {
                return context.getPackageManager().getPackageInfo(str, 0);
            }
            return null;
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    private static WebViewProviderAdapter getProvider(WebView webView) {
        return new WebViewProviderAdapter(createProvider(webView));
    }

    public static Uri getSafeBrowsingPrivacyPolicyUrl() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_PRIVACY_POLICY_URL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return WebView.getSafeBrowsingPrivacyPolicyUrl();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getFactory().getStatics().getSafeBrowsingPrivacyPolicyUrl();
    }

    public static WebChromeClient getWebChromeClient(WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_CHROME_CLIENT;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webView.getWebChromeClient();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getProvider(webView).getWebChromeClient();
    }

    public static WebViewClient getWebViewClient(WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_VIEW_CLIENT;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webView.getWebViewClient();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getProvider(webView).getWebViewClient();
    }

    public static WebViewRenderProcess getWebViewRenderProcess(WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_VIEW_RENDERER;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            WebViewRenderProcess webViewRenderProcess = webView.getWebViewRenderProcess();
            return webViewRenderProcess != null ? WebViewRenderProcessImpl.forFrameworkObject(webViewRenderProcess) : null;
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            return getProvider(webView).getWebViewRenderProcess();
        }
    }

    public static WebViewRenderProcessClient getWebViewRenderProcessClient(WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        if (!webViewFeatureInternal.isSupportedByFramework()) {
            if (!webViewFeatureInternal.isSupportedByWebView()) {
                throw WebViewFeatureInternal.getUnsupportedOperationException();
            }
            return getProvider(webView).getWebViewRenderProcessClient();
        }
        WebViewRenderProcessClient webViewRenderProcessClient = webView.getWebViewRenderProcessClient();
        if (webViewRenderProcessClient != null && (webViewRenderProcessClient instanceof WebViewRenderProcessClientFrameworkAdapter)) {
            return ((WebViewRenderProcessClientFrameworkAdapter) webViewRenderProcessClient).getFrameworkRenderProcessClient();
        }
        return null;
    }

    public static boolean isMultiProcessEnabled() {
        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
            return getFactory().getStatics().isMultiProcessEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void postVisualStateCallback(WebView webView, long j, final VisualStateCallback visualStateCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.VISUAL_STATE_CALLBACK;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.postVisualStateCallback(j, new WebView.VisualStateCallback() { // from class: androidx.webkit.WebViewCompat.1
                @Override // android.webkit.WebView.VisualStateCallback
                public void onComplete(long j2) {
                    visualStateCallback.onComplete(j2);
                }
            });
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            checkThread(webView);
            getProvider(webView).insertVisualStateCallback(j, visualStateCallback);
        }
    }

    public static void postWebMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri) {
        Uri uri2 = uri;
        if (WILDCARD_URI.equals(uri)) {
            uri2 = EMPTY_URI;
        }
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.POST_WEB_MESSAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.postWebMessage(WebMessagePortImpl.compatToFrameworkMessage(webMessageCompat), uri2);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getProvider(webView).postWebMessage(webMessageCompat, uri2);
        }
    }

    public static void removeWebMessageListener(WebView webView, String str) {
        if (WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
            getProvider(webView).removeWebMessageListener(str);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setSafeBrowsingAllowlist(Set<String> set, ValueCallback<Boolean> valueCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED;
        WebViewFeatureInternal webViewFeatureInternal2 = WebViewFeatureInternal.SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED;
        if (webViewFeatureInternal.isSupportedByWebView()) {
            getFactory().getStatics().setSafeBrowsingAllowlist(set, valueCallback);
            return;
        }
        ArrayList arrayList = new ArrayList(set);
        if (webViewFeatureInternal2.isSupportedByFramework()) {
            WebView.setSafeBrowsingWhitelist(arrayList, valueCallback);
        } else if (!webViewFeatureInternal2.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getFactory().getStatics().setSafeBrowsingWhitelist(arrayList, valueCallback);
        }
    }

    @Deprecated
    public static void setSafeBrowsingWhitelist(List<String> list, ValueCallback<Boolean> valueCallback) {
        setSafeBrowsingAllowlist(new HashSet(list), valueCallback);
    }

    public static void setWebViewRenderProcessClient(WebView webView, WebViewRenderProcessClient webViewRenderProcessClient) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        WebViewRenderProcessClientFrameworkAdapter webViewRenderProcessClientFrameworkAdapter = null;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            if (webViewRenderProcessClient != null) {
                webViewRenderProcessClientFrameworkAdapter = new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient);
            }
            webView.setWebViewRenderProcessClient(webViewRenderProcessClientFrameworkAdapter);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getProvider(webView).setWebViewRenderProcessClient(null, webViewRenderProcessClient);
        }
    }

    public static void setWebViewRenderProcessClient(WebView webView, Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.setWebViewRenderProcessClient(executor, webViewRenderProcessClient != null ? new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient) : null);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getProvider(webView).setWebViewRenderProcessClient(executor, webViewRenderProcessClient);
        }
    }

    public static void startSafeBrowsing(Context context, ValueCallback<Boolean> valueCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.START_SAFE_BROWSING;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            WebView.startSafeBrowsing(context, valueCallback);
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            getFactory().getStatics().initSafeBrowsing(context, valueCallback);
        }
    }
}
