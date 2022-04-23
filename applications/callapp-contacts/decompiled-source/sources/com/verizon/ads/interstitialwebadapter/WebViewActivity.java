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

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35523c = Logger.getInstance(WebViewActivity.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig.class */
    static class WebViewActivityConfig extends VASActivity.VASActivityConfig {

        /* renamed from: a  reason: collision with root package name */
        private InterstitialWebAdapter f35524a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public WebViewActivityConfig(InterstitialWebAdapter interstitialWebAdapter) {
            this.f35524a = interstitialWebAdapter;
        }
    }

    private void b() {
        if (!isFinishing()) {
            finish();
        }
    }

    public static void launch(Context context, WebViewActivityConfig webViewActivityConfig) {
        VASActivity.launch(context, WebViewActivity.class, webViewActivityConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ViewGroup a() {
        return this.f35619b;
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebViewActivityConfig webViewActivityConfig = (WebViewActivityConfig) this.f35618a;
        if (webViewActivityConfig == null || webViewActivityConfig.f35524a == null) {
            Logger logger = f35523c;
            logger.e("interstitialWebAdapter cannot be null, aborting activity launch <" + this + ">");
            b();
        } else if (webViewActivityConfig.f35524a.a()) {
            f35523c.w("interstitialWebAdapter was released. Closing ad.");
            b();
        } else {
            this.f35619b = new RelativeLayout(this);
            this.f35619b.setTag("webview_activity_root_view");
            this.f35619b.setBackground(new ColorDrawable(-1));
            this.f35619b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setContentView(this.f35619b);
            final InterstitialWebAdapter interstitialWebAdapter = webViewActivityConfig.f35524a;
            final InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = interstitialWebAdapter.f35515d;
            interstitialWebAdapter.f35513b = new WeakReference<>(this);
            final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            final View vASAdsMRAIDWebView = interstitialWebAdapter.f35514c.getVASAdsMRAIDWebView();
            if (vASAdsMRAIDWebView == null) {
                interstitialAdAdapterListener.onError(new ErrorInfo(InterstitialWebAdapter.f35512a, "Could not attach WebView. Verizon ad view provided by controller was null.", -3));
            } else {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (interstitialWebAdapter.j == AdapterState.SHOWING || interstitialWebAdapter.j == AdapterState.SHOWN) {
                            ViewUtils.attachView(this.a(), vASAdsMRAIDWebView, layoutParams);
                            interstitialWebAdapter.j = AdapterState.SHOWN;
                            InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener2 = interstitialAdAdapterListener;
                            if (interstitialAdAdapterListener2 != null) {
                                interstitialAdAdapterListener2.onShown();
                                return;
                            }
                            return;
                        }
                        InterstitialWebAdapter.e.d("adapter not in shown or showing state; aborting show.");
                        this.finish();
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onDestroy() {
        if (isFinishing() && this.f35618a != null) {
            InterstitialWebAdapter interstitialWebAdapter = ((WebViewActivityConfig) this.f35618a).f35524a;
            if (interstitialWebAdapter.f35515d != null) {
                interstitialWebAdapter.f35515d.onClosed();
            }
        }
        super.onDestroy();
    }
}
