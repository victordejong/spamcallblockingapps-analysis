package com.verizon.ads.interstitialwebadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.interstitialwebadapter.WebViewActivity;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.webcontroller.WebController;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/InterstitialWebAdapter.class */
public class InterstitialWebAdapter implements InterstitialAdAdapter, WebController.WebControllerListener {

    /* renamed from: b  reason: collision with root package name */
    WeakReference<WebViewActivity> f35513b;

    /* renamed from: c  reason: collision with root package name */
    WebController f35514c;

    /* renamed from: d  reason: collision with root package name */
    InterstitialAdAdapter.InterstitialAdAdapterListener f35515d;
    private AdContent i;
    private static final Logger e = Logger.getInstance(InterstitialWebAdapter.class);

    /* renamed from: a  reason: collision with root package name */
    static final String f35512a = InterstitialWebAdapter.class.getSimpleName();
    private boolean f = true;
    private int g = 0;
    private int h = 0;
    private volatile AdapterState j = AdapterState.DEFAULT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState.class */
    public enum AdapterState {
        DEFAULT,
        PREPARED,
        LOADING,
        LOADED,
        SHOWING,
        SHOWN,
        ERROR,
        ABORTED,
        UNLOADED,
        RELEASED
    }

    public InterstitialWebAdapter() {
        WebController webController = new WebController();
        this.f35514c = webController;
        webController.setListener(this);
    }

    private WebViewActivity e() {
        WeakReference<WebViewActivity> weakReference = this.f35513b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.j == AdapterState.RELEASED;
        }
        return z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void abortLoad() {
        synchronized (this) {
            e.d("Attempting to abort load.");
            if (this.j == AdapterState.PREPARED || this.j == AdapterState.LOADING) {
                this.j = AdapterState.ABORTED;
            }
        }
    }

    final void b() {
        WebViewActivity e2 = e();
        if (e2 != null && !e2.isFinishing()) {
            e2.finish();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void close() {
        b();
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void expand() {
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void fireImpression() {
        WebController webController = this.f35514c;
        if (webController != null) {
            webController.fireImpression();
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        return this.i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getEnterAnimationId() {
        return this.g;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getExitAnimationId() {
        return this.h;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public boolean isImmersiveEnabled() {
        return this.f;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void load(Context context, int i, final InterstitialAdAdapter.LoadViewListener loadViewListener) {
        synchronized (this) {
            if (loadViewListener == null) {
                e.e("LoadViewListener cannot be null.");
            } else if (this.j != AdapterState.PREPARED) {
                e.d("Adapter must be in prepared state to load.");
                loadViewListener.onComplete(new ErrorInfo(f35512a, "Adapter not in prepared state.", -2));
            } else {
                this.j = AdapterState.LOADING;
                this.f35514c.load(context, i, new WebController.LoadListener() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.2
                    @Override // com.verizon.ads.webcontroller.WebController.LoadListener
                    public void onComplete(ErrorInfo errorInfo) {
                        synchronized (InterstitialWebAdapter.this) {
                            if (InterstitialWebAdapter.this.j == AdapterState.LOADING) {
                                if (errorInfo == null) {
                                    InterstitialWebAdapter.this.j = AdapterState.LOADED;
                                } else {
                                    InterstitialWebAdapter.this.j = AdapterState.ERROR;
                                }
                                loadViewListener.onComplete(errorInfo);
                            } else {
                                loadViewListener.onComplete(new ErrorInfo(InterstitialWebAdapter.f35512a, "Adapter not in the loading state.", -2));
                            }
                        }
                    }
                }, true);
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onAdLeftApplication() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35515d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onClicked() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35515d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onError(ErrorInfo errorInfo) {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35515d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onError(errorInfo);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.j != AdapterState.DEFAULT) {
                e.d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f35512a, "Adapter not in the default state.", -2);
            }
            ErrorInfo prepare = this.f35514c.prepare(adSession, adContent.getContent());
            if (prepare == null) {
                this.j = AdapterState.PREPARED;
            } else {
                this.j = AdapterState.ERROR;
            }
            this.i = adContent;
            return prepare;
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void release() {
        synchronized (this) {
            this.j = AdapterState.RELEASED;
            WebController webController = this.f35514c;
            if (webController != null) {
                webController.release();
                this.f35514c = null;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialWebAdapter.this.b();
                }
            });
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void resize() {
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setEnterAnimation(int i) {
        this.g = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setExitAnimation(int i) {
        this.h = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setImmersiveEnabled(boolean z) {
        this.f = z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setListener(InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener) {
        synchronized (this) {
            if (this.j == AdapterState.PREPARED || this.j == AdapterState.DEFAULT || this.j == AdapterState.LOADED) {
                this.f35515d = interstitialAdAdapterListener;
            } else {
                e.e("InterstitialAdAdapterListener can only be set in default, prepared, or loaded state.");
            }
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void show(Context context) {
        synchronized (this) {
            if (this.j != AdapterState.LOADED) {
                e.d("Show failed; Adapter not loaded.");
                InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35515d;
                if (interstitialAdAdapterListener != null) {
                    interstitialAdAdapterListener.onError(new ErrorInfo(f35512a, "Show failed; Adapter not loaded.", -2));
                }
                return;
            }
            this.j = AdapterState.SHOWING;
            WebViewActivity.WebViewActivityConfig webViewActivityConfig = new WebViewActivity.WebViewActivityConfig(this);
            webViewActivityConfig.setImmersive(isImmersiveEnabled()).setTransitionAnimation(getEnterAnimationId(), getExitAnimationId());
            WebViewActivity.launch(context, webViewActivityConfig);
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void unload() {
        this.j = AdapterState.UNLOADED;
        b();
    }
}
