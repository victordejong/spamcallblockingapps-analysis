package androidx.webkit.internal;

import android.webkit.TracingConfig;
import androidx.webkit.TracingConfig;
import androidx.webkit.TracingController;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
/* loaded from: classes-dex2jar.jar:androidx/webkit/internal/TracingControllerImpl.class */
public class TracingControllerImpl extends TracingController {
    private TracingControllerBoundaryInterface mBoundaryInterface;
    private android.webkit.TracingController mFrameworksImpl;

    public TracingControllerImpl() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.TRACING_CONTROLLER_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            this.mFrameworksImpl = android.webkit.TracingController.getInstance();
            this.mBoundaryInterface = null;
        } else if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        } else {
            this.mFrameworksImpl = null;
            this.mBoundaryInterface = WebViewGlueCommunicator.getFactory().getTracingController();
        }
    }

    private TracingControllerBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = WebViewGlueCommunicator.getFactory().getTracingController();
        }
        return this.mBoundaryInterface;
    }

    private android.webkit.TracingController getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = android.webkit.TracingController.getInstance();
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.TracingController
    public boolean isTracing() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.TRACING_CONTROLLER_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return getFrameworksImpl().isTracing();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getBoundaryInterface().isTracing();
    }

    @Override // androidx.webkit.TracingController
    public void start(TracingConfig tracingConfig) {
        if (tracingConfig != null) {
            WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.TRACING_CONTROLLER_BASIC_USAGE;
            if (webViewFeatureInternal.isSupportedByFramework()) {
                getFrameworksImpl().start(new TracingConfig.Builder().addCategories(tracingConfig.getPredefinedCategories()).addCategories(tracingConfig.getCustomIncludedCategories()).setTracingMode(tracingConfig.getTracingMode()).build());
                return;
            } else if (!webViewFeatureInternal.isSupportedByWebView()) {
                throw WebViewFeatureInternal.getUnsupportedOperationException();
            } else {
                getBoundaryInterface().start(tracingConfig.getPredefinedCategories(), tracingConfig.getCustomIncludedCategories(), tracingConfig.getTracingMode());
                return;
            }
        }
        throw new IllegalArgumentException("Tracing config must be non null");
    }

    @Override // androidx.webkit.TracingController
    public boolean stop(OutputStream outputStream, Executor executor) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.TRACING_CONTROLLER_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return getFrameworksImpl().stop(outputStream, executor);
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getBoundaryInterface().stop(outputStream, executor);
    }
}
