package com.verizon.ads.interstitialvastadapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.support.VASActivity;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTController;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/VASTActivity.class */
public class VASTActivity extends VASActivity {

    /* renamed from: c */
    private static final Logger f61523c = Logger.getInstance(VASTActivity.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig.class */
    static class VASTActivityConfig extends VASActivity.VASActivityConfig {

        /* renamed from: a */
        private InterstitialVASTAdapter f61524a;

        public VASTActivityConfig(InterstitialVASTAdapter interstitialVASTAdapter) {
            this.f61524a = interstitialVASTAdapter;
        }
    }

    /* renamed from: b */
    private void m5416b() {
        if (!isFinishing()) {
            finish();
        }
    }

    public static void launch(Context context, VASTActivityConfig vASTActivityConfig) {
        VASActivity.launch(context, VASTActivity.class, vASTActivityConfig);
    }

    /* renamed from: a */
    public final ViewGroup m5417a() {
        return this.f61693b;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f61692a == null || ((VASTActivityConfig) this.f61692a).f61524a.m5420c()) {
            super.onBackPressed();
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        VASTActivityConfig vASTActivityConfig = (VASTActivityConfig) this.f61692a;
        if (vASTActivityConfig == null) {
            Logger logger = f61523c;
            logger.m5565e("Failed to load activity config, aborting activity launch <" + this + ">");
            m5416b();
        } else if (vASTActivityConfig.f61524a == null) {
            Logger logger2 = f61523c;
            logger2.m5565e("interstitialVASTAdapter can not be null, aborting activity launch <" + this + ">");
            m5416b();
        } else if (vASTActivityConfig.f61524a.m5425a()) {
            f61523c.m5559w("interstitialVASTAdapter was released. Closing ad.");
            m5416b();
        } else {
            this.f61693b = new RelativeLayout(this);
            this.f61693b.setTag("vast_activity_root_view");
            this.f61693b.setBackground(new ColorDrawable(-16777216));
            this.f61693b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setContentView(this.f61693b);
            final InterstitialVASTAdapter interstitialVASTAdapter = vASTActivityConfig.f61524a;
            final InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = interstitialVASTAdapter.f61504b;
            interstitialVASTAdapter.f61503a = new WeakReference<>(this);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (interstitialVASTAdapter.f61510j == AdapterState.SHOWING || interstitialVASTAdapter.f61510j == AdapterState.SHOWN) {
                        interstitialVASTAdapter.f61505e.attach(this.m5417a(), new VASTController.AttachListener() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.2.1
                            {
                                RunnableC173892.this = this;
                            }

                            @Override // com.verizon.ads.vastcontroller.VASTController.AttachListener
                            public void onComplete(ErrorInfo errorInfo) {
                                synchronized (interstitialVASTAdapter) {
                                    if (errorInfo != null) {
                                        interstitialVASTAdapter.f61510j = AdapterState.ERROR;
                                        if (interstitialAdAdapterListener != null) {
                                            interstitialAdAdapterListener.onError(errorInfo);
                                        }
                                    } else {
                                        interstitialVASTAdapter.f61510j = AdapterState.SHOWN;
                                        if (interstitialAdAdapterListener != null) {
                                            interstitialAdAdapterListener.onShown();
                                        }
                                    }
                                }
                            }
                        });
                        return;
                    }
                    InterstitialVASTAdapter.f61501c.m5567d("adapter not in shown or showing state; aborting show.");
                    interstitialVASTAdapter.m5422b();
                }
            });
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onDestroy() {
        if (isFinishing() && this.f61692a != null) {
            InterstitialVASTAdapter interstitialVASTAdapter = ((VASTActivityConfig) this.f61692a).f61524a;
            if (interstitialVASTAdapter.f61504b != null) {
                interstitialVASTAdapter.f61504b.onClosed();
            }
        }
        super.onDestroy();
    }
}
