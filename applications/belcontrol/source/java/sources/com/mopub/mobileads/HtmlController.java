package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.BaseHtmlWebView;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/HtmlController.class */
public class HtmlController extends MoPubWebViewController {

    /* renamed from: i */
    public BaseHtmlWebView.BaseWebViewListener f4681i = new C1079a();

    /* renamed from: com.mopub.mobileads.HtmlController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/HtmlController$a.class */
    public class C1079a implements BaseHtmlWebView.BaseWebViewListener {
        public C1079a() {
            HtmlController.this = r4;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClicked() {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onClicked();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClose() {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onClose();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onExpand() {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onExpand();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailed() {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onFailed();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onFailedToLoad(MoPubErrorCode.HTML_LOAD_ERROR);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onLoaded(View view) {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onLoaded(view);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onRenderProcessGone(moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onResize(boolean z) {
            BaseHtmlWebView.BaseWebViewListener baseWebViewListener = HtmlController.this.f4758d;
            if (baseWebViewListener != null) {
                baseWebViewListener.onResize(z);
            }
        }
    }

    public HtmlController(Context context, String str) {
        super(context, str);
        this.f4757c.setLayoutParams(m3679e());
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: a */
    public void mo3435a() {
        super.mo3435a();
        BaseWebView baseWebView = this.f4760f;
        if (baseWebView != null) {
            baseWebView.destroy();
            this.f4760f = null;
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: b */
    public void mo3433b(String str) {
        ((HtmlWebView) this.f4760f).m3705k(str);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public BaseWebView createWebView() {
        HtmlWebView htmlWebView = new HtmlWebView(this.f4756b);
        AdViewController.setShouldHonorServerDimensions(htmlWebView);
        htmlWebView.init(this.f4681i, this.f4761g);
        return htmlWebView;
    }

    /* renamed from: e */
    public ViewGroup.LayoutParams m3679e() {
        return new FrameLayout.LayoutParams(-2, -2, 17);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public View getAdContainer() {
        View view = this.f4760f;
        if (view == null) {
            view = this.f4757c;
        }
        return view;
    }

    @VisibleForTesting
    public BaseWebView getWebView() {
        return this.f4760f;
    }

    @VisibleForTesting
    public void setWebView(BaseWebView baseWebView) {
        this.f4760f = baseWebView;
    }
}
