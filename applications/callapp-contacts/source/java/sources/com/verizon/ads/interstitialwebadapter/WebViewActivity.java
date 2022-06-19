package com.verizon.ads.interstitialwebadapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.support.VASActivity;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/WebViewActivity.class */
public class WebViewActivity extends VASActivity {

    /* renamed from: c */
    private static final Logger f61551c = Logger.getInstance(WebViewActivity.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig.class */
    static class WebViewActivityConfig extends VASActivity.VASActivityConfig {

        /* renamed from: a */
        private InterstitialWebAdapter f61552a;

        public WebViewActivityConfig(InterstitialWebAdapter interstitialWebAdapter) {
            this.f61552a = interstitialWebAdapter;
        }
    }

    /* renamed from: b */
    private void m5403b() {
        if (!isFinishing()) {
            finish();
        }
    }

    public static void launch(Context context, WebViewActivityConfig webViewActivityConfig) {
        VASActivity.launch(context, WebViewActivity.class, webViewActivityConfig);
    }

    /* renamed from: a */
    public final ViewGroup m5404a() {
        return this.f61693b;
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebViewActivityConfig webViewActivityConfig = (WebViewActivityConfig) this.f61692a;
        if (webViewActivityConfig == null || webViewActivityConfig.f61552a == null) {
            Logger logger = f61551c;
            logger.m5565e("interstitialWebAdapter cannot be null, aborting activity launch <" + this + ">");
            m5403b();
        } else if (webViewActivityConfig.f61552a.m5414a()) {
            f61551c.m5559w("interstitialWebAdapter was released. Closing ad.");
            m5403b();
        } else {
            this.f61693b = new RelativeLayout(this);
            this.f61693b.setTag("webview_activity_root_view");
            this.f61693b.setBackground(new ColorDrawable(-1));
            this.f61693b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setContentView(this.f61693b);
            final InterstitialWebAdapter interstitialWebAdapter = webViewActivityConfig.f61552a;
            final InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = interstitialWebAdapter.f61529d;
            interstitialWebAdapter.f61527b = new WeakReference<>(this);
            final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            final View vASAdsMRAIDWebView = interstitialWebAdapter.f61528c.getVASAdsMRAIDWebView();
            if (vASAdsMRAIDWebView == null) {
                interstitialAdAdapterListener.onError(new ErrorInfo(InterstitialWebAdapter.f61525a, "Could not attach WebView. Verizon ad view provided by controller was null.", -3));
            } else {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (interstitialWebAdapter.f61534j != AdapterState.SHOWING && interstitialWebAdapter.f61534j != AdapterState.SHOWN) {
                            InterstitialWebAdapter.f61526e.m5567d("adapter not in shown or showing state; aborting show.");
                            this.finish();
                            return;
                        }
                        ViewUtils.attachView(this.m5404a(), vASAdsMRAIDWebView, layoutParams);
                        interstitialWebAdapter.f61534j = AdapterState.SHOWN;
                        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener2 = interstitialAdAdapterListener;
                        if (interstitialAdAdapterListener2 == null) {
                            return;
                        }
                        interstitialAdAdapterListener2.onShown();
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onDestroy() {
        if (isFinishing() && this.f61692a != null) {
            InterstitialWebAdapter interstitialWebAdapter = ((WebViewActivityConfig) this.f61692a).f61552a;
            if (interstitialWebAdapter.f61529d != null) {
                interstitialWebAdapter.f61529d.onClosed();
            }
        }
        super.onDestroy();
    }
}
