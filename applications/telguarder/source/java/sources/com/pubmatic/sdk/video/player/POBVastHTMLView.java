package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.webkit.ProxyConfig;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.POBVideoConstant;
import com.pubmatic.sdk.webrendering.p021ui.POBHTMLRenderer;
import com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
import java.util.Formatter;
import java.util.IllegalFormatException;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastHTMLView.class */
public abstract class POBVastHTMLView<T extends POBAdDescriptor> extends FrameLayout implements POBHtmlRendererListener {

    /* renamed from: a */
    private POBHTMLRenderer f891a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.video.player.POBVastHTMLView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastHTMLView$a.class */
    public class C1974a extends POBHTMLRenderer {

        /* renamed from: a */
        final /* synthetic */ POBWebView f892a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1974a(POBVastHTMLView pOBVastHTMLView, POBWebView pOBWebView, POBHTMLViewClient pOBHTMLViewClient, POBWebView pOBWebView2) {
            super(pOBWebView, pOBHTMLViewClient);
            this.f892a = pOBWebView2;
        }

        @Override // com.pubmatic.sdk.webrendering.p021ui.POBHTMLRenderer
        public void loadHTML(String str, String str2) {
            if (str == null) {
                this.f892a.loadUrl(str2);
                return;
            }
            try {
                Formatter formatter = new Formatter(Locale.getDefault());
                formatter.format(POBVideoConstant.HTML_RESOURCE_CONTAINER, str);
                String valueOf = String.valueOf(formatter);
                formatter.close();
                this.f892a.loadDataWithBaseURL(null, valueOf, "text/html", POBCommonConstants.URL_ENCODING, null);
            } catch (IllegalFormatException e) {
                notifyError(new POBError(1009, "Unable to render creative, due to " + e.getMessage()));
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastHTMLView$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastHTMLView$b.class */
    interface AbstractC1975b {
        /* renamed from: a */
        void mo654a(POBVastError pOBVastError);

        /* renamed from: a */
        void mo653a(String str);

        /* renamed from: b */
        void mo652b();
    }

    public POBVastHTMLView(Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(getResources().getColor(17170445));
    }

    protected POBWebView createWebView(Context context) {
        POBWebView createInstance = POBWebView.createInstance(context);
        if (createInstance != null) {
            createInstance.getSettings().setJavaScriptEnabled(true);
            createInstance.getSettings().setCacheMode(2);
            createInstance.setScrollBarStyle(0);
        }
        return createInstance;
    }

    public void destroy() {
        POBHTMLRenderer pOBHTMLRenderer = this.f891a;
        if (pOBHTMLRenderer != null) {
            pOBHTMLRenderer.destroy();
            this.f891a = null;
        }
    }

    public boolean renderVastHTMLView(POBAdDescriptor pOBAdDescriptor) {
        POBWebView createWebView = createWebView(getContext());
        if (createWebView == null) {
            return false;
        }
        C1974a c1974a = new C1974a(this, createWebView, new POBHTMLViewClient(), createWebView);
        this.f891a = c1974a;
        c1974a.setRendererViewListener(this);
        String renderableContent = pOBAdDescriptor.getRenderableContent();
        if (POBUtils.isNullOrEmpty(renderableContent)) {
            return false;
        }
        if (renderableContent.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
            this.f891a.loadHTML(null, renderableContent);
            return true;
        }
        this.f891a.loadHTML(renderableContent, "");
        return true;
    }
}
