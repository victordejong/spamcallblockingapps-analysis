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

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35510c = Logger.getInstance(VASTActivity.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig.class */
    static class VASTActivityConfig extends VASActivity.VASActivityConfig {

        /* renamed from: a  reason: collision with root package name */
        private InterstitialVASTAdapter f35511a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public VASTActivityConfig(InterstitialVASTAdapter interstitialVASTAdapter) {
            this.f35511a = interstitialVASTAdapter;
        }
    }

    private void b() {
        if (!isFinishing()) {
            finish();
        }
    }

    public static void launch(Context context, VASTActivityConfig vASTActivityConfig) {
        VASActivity.launch(context, VASTActivity.class, vASTActivityConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ViewGroup a() {
        return this.f35619b;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f35618a == null || ((VASTActivityConfig) this.f35618a).f35511a.c()) {
            super.onBackPressed();
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        VASTActivityConfig vASTActivityConfig = (VASTActivityConfig) this.f35618a;
        if (vASTActivityConfig == null) {
            Logger logger = f35510c;
            logger.e("Failed to load activity config, aborting activity launch <" + this + ">");
            b();
        } else if (vASTActivityConfig.f35511a == null) {
            Logger logger2 = f35510c;
            logger2.e("interstitialVASTAdapter can not be null, aborting activity launch <" + this + ">");
            b();
        } else if (vASTActivityConfig.f35511a.a()) {
            f35510c.w("interstitialVASTAdapter was released. Closing ad.");
            b();
        } else {
            this.f35619b = new RelativeLayout(this);
            this.f35619b.setTag("vast_activity_root_view");
            this.f35619b.setBackground(new ColorDrawable(-16777216));
            this.f35619b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setContentView(this.f35619b);
            final InterstitialVASTAdapter interstitialVASTAdapter = vASTActivityConfig.f35511a;
            final InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = interstitialVASTAdapter.f35502b;
            interstitialVASTAdapter.f35501a = new WeakReference<>(this);
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (interstitialVASTAdapter.j == AdapterState.SHOWING || interstitialVASTAdapter.j == AdapterState.SHOWN) {
                        interstitialVASTAdapter.e.attach(this.a(), new VASTController.AttachListener() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.2.1
                            {
                                AnonymousClass2.this = this;
                            }

                            @Override // com.verizon.ads.vastcontroller.VASTController.AttachListener
                            public void onComplete(ErrorInfo errorInfo) {
                                synchronized (interstitialVASTAdapter) {
                                    if (errorInfo != null) {
                                        interstitialVASTAdapter.j = AdapterState.ERROR;
                                        if (interstitialAdAdapterListener != null) {
                                            interstitialAdAdapterListener.onError(errorInfo);
                                        }
                                    } else {
                                        interstitialVASTAdapter.j = AdapterState.SHOWN;
                                        if (interstitialAdAdapterListener != null) {
                                            interstitialAdAdapterListener.onShown();
                                        }
                                    }
                                }
                            }
                        });
                        return;
                    }
                    InterstitialVASTAdapter.f35499c.d("adapter not in shown or showing state; aborting show.");
                    interstitialVASTAdapter.b();
                }
            });
        }
    }

    @Override // com.verizon.ads.support.VASActivity, android.app.Activity
    public void onDestroy() {
        if (isFinishing() && this.f35618a != null) {
            InterstitialVASTAdapter interstitialVASTAdapter = ((VASTActivityConfig) this.f35618a).f35511a;
            if (interstitialVASTAdapter.f35502b != null) {
                interstitialVASTAdapter.f35502b.onClosed();
            }
        }
        super.onDestroy();
    }
}
