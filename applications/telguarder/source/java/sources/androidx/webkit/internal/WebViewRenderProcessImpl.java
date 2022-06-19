package androidx.webkit.internal;

import androidx.webkit.WebViewRenderProcess;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewRendererBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
/* loaded from: classes-dex2jar.jar:androidx/webkit/internal/WebViewRenderProcessImpl.class */
public class WebViewRenderProcessImpl extends WebViewRenderProcess {
    private static WeakHashMap<android.webkit.WebViewRenderProcess, WebViewRenderProcessImpl> sFrameworkMap = new WeakHashMap<>();
    private WebViewRendererBoundaryInterface mBoundaryInterface;
    private WeakReference<android.webkit.WebViewRenderProcess> mFrameworkObject;

    public WebViewRenderProcessImpl(android.webkit.WebViewRenderProcess webViewRenderProcess) {
        this.mFrameworkObject = new WeakReference<>(webViewRenderProcess);
    }

    public WebViewRenderProcessImpl(WebViewRendererBoundaryInterface webViewRendererBoundaryInterface) {
        this.mBoundaryInterface = webViewRendererBoundaryInterface;
    }

    public static WebViewRenderProcessImpl forFrameworkObject(android.webkit.WebViewRenderProcess webViewRenderProcess) {
        WebViewRenderProcessImpl webViewRenderProcessImpl = sFrameworkMap.get(webViewRenderProcess);
        if (webViewRenderProcessImpl != null) {
            return webViewRenderProcessImpl;
        }
        WebViewRenderProcessImpl webViewRenderProcessImpl2 = new WebViewRenderProcessImpl(webViewRenderProcess);
        sFrameworkMap.put(webViewRenderProcess, webViewRenderProcessImpl2);
        return webViewRenderProcessImpl2;
    }

    public static WebViewRenderProcessImpl forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewRendererBoundaryInterface webViewRendererBoundaryInterface = (WebViewRendererBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewRendererBoundaryInterface.class, invocationHandler);
        return (WebViewRenderProcessImpl) webViewRendererBoundaryInterface.getOrCreatePeer(new Callable<Object>() { // from class: androidx.webkit.internal.WebViewRenderProcessImpl.1
            @Override // java.util.concurrent.Callable
            public Object call() {
                return new WebViewRenderProcessImpl(webViewRendererBoundaryInterface);
            }
        });
    }

    @Override // androidx.webkit.WebViewRenderProcess
    public boolean terminate() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_TERMINATE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            android.webkit.WebViewRenderProcess webViewRenderProcess = this.mFrameworkObject.get();
            return webViewRenderProcess != null ? webViewRenderProcess.terminate() : false;
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            return this.mBoundaryInterface.terminate();
        }
    }
}
