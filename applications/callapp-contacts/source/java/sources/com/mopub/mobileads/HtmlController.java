package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.Constants;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.network.Networking;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/HtmlController.class */
public class HtmlController extends MoPubWebViewController {

    /* renamed from: e */
    private BaseHtmlWebView.BaseWebViewListener f59236e = new C16781a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.HtmlController$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/HtmlController$a.class */
    public final class C16781a implements BaseHtmlWebView.BaseWebViewListener {
        C16781a() {
            HtmlController.this = r4;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onClicked() {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onClicked();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onClose() {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onClose();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onExpand() {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onExpand();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onFailed() {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onFailed();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onFailedToLoad(MoPubErrorCode.HTML_LOAD_ERROR);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onLoaded(View view) {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onLoaded(view);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onRenderProcessGone(moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onResize(boolean z) {
            if (HtmlController.this.mBaseWebViewListener != null) {
                HtmlController.this.mBaseWebViewListener.onResize(z);
            }
        }
    }

    public HtmlController(Context context, String str) {
        super(context, str);
        this.mDefaultAdContainer.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    protected BaseWebView createWebView() {
        HtmlWebView htmlWebView = new HtmlWebView(this.mContext);
        AdViewController.setShouldHonorServerDimensions(htmlWebView);
        htmlWebView.init(this.f59236e, this.f59328c);
        return htmlWebView;
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void destroy() {
        super.destroy();
        if (this.mWebView != null) {
            this.mWebView.destroy();
            this.mWebView = null;
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    protected final void doFillContent(String str) {
        HtmlWebView htmlWebView = (HtmlWebView) this.mWebView;
        htmlWebView.loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, Mimetypes.MIMETYPE_HTML, "utf-8", null);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public View getAdContainer() {
        return this.mWebView != null ? this.mWebView : this.mDefaultAdContainer;
    }

    public BaseWebView getWebView() {
        return this.mWebView;
    }

    public void setWebView(BaseWebView baseWebView) {
        this.mWebView = baseWebView;
    }
}
