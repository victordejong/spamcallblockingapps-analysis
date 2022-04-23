package net.pubnative.lite.sdk.vpaid.protocol;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import net.pubnative.lite.sdk.core.R;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
import net.pubnative.lite.sdk.vpaid.utils.ImageUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid.class */
public class ViewControllerVpaid {
    private final VideoAdController mAdController;
    private View mEndCardLayout;
    private ImageView mEndCardView;
    private WebView mWebView;

    public ViewControllerVpaid(VideoAdController videoAdController) {
        this.mAdController = videoAdController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showControls() {
        this.mEndCardLayout.setVisibility(8);
        this.mWebView.setVisibility(0);
    }

    public void buildVideoAdView(VideoAdView videoAdView, WebView webView) {
        Context context = videoAdView.getContext();
        this.mWebView = webView;
        videoAdView.removeAllViews();
        if (this.mWebView.getParent() != null) {
            ((ViewGroup) this.mWebView.getParent()).removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        View inflate = LayoutInflater.from(context).inflate(R.layout.end_card, (ViewGroup) videoAdView, false);
        this.mEndCardLayout = inflate;
        inflate.setVisibility(8);
        this.mEndCardView = (ImageView) this.mEndCardLayout.findViewById(R.id.endCardView);
        ((ImageView) this.mEndCardLayout.findViewById(R.id.closeView)).setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.vpaid.protocol.ViewControllerVpaid.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewControllerVpaid.this.mAdController.closeSelf();
            }
        });
        ((ImageView) this.mEndCardLayout.findViewById(R.id.replayView)).setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.vpaid.protocol.ViewControllerVpaid.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewControllerVpaid.this.showControls();
                ViewControllerVpaid.this.mAdController.playAd();
            }
        });
        videoAdView.addView(this.mEndCardLayout, layoutParams);
        videoAdView.addView(webView, layoutParams);
        webView.setBackgroundColor(0);
        videoAdView.setBackgroundColor(-16777216);
    }

    public void showEndCard(String str) {
        this.mEndCardLayout.setVisibility(0);
        this.mWebView.setVisibility(8);
        ImageUtils.setScaledImage(this.mEndCardView, str);
    }
}
