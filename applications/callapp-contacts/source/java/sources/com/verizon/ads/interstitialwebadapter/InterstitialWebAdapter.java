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

    /* renamed from: b */
    WeakReference<WebViewActivity> f61527b;

    /* renamed from: c */
    WebController f61528c;

    /* renamed from: d */
    InterstitialAdAdapter.InterstitialAdAdapterListener f61529d;

    /* renamed from: i */
    private AdContent f61533i;

    /* renamed from: e */
    private static final Logger f61526e = Logger.getInstance(InterstitialWebAdapter.class);

    /* renamed from: a */
    static final String f61525a = InterstitialWebAdapter.class.getSimpleName();

    /* renamed from: f */
    private boolean f61530f = true;

    /* renamed from: g */
    private int f61531g = 0;

    /* renamed from: h */
    private int f61532h = 0;

    /* renamed from: j */
    private volatile AdapterState f61534j = AdapterState.DEFAULT;

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
        this.f61528c = webController;
        webController.setListener(this);
    }

    /* renamed from: e */
    private WebViewActivity m5408e() {
        WeakReference<WebViewActivity> weakReference = this.f61527b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: a */
    public final boolean m5414a() {
        boolean z;
        synchronized (this) {
            z = this.f61534j == AdapterState.RELEASED;
        }
        return z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void abortLoad() {
        synchronized (this) {
            f61526e.m5567d("Attempting to abort load.");
            if (this.f61534j == AdapterState.PREPARED || this.f61534j == AdapterState.LOADING) {
                this.f61534j = AdapterState.ABORTED;
            }
        }
    }

    /* renamed from: b */
    final void m5411b() {
        WebViewActivity m5408e = m5408e();
        if (m5408e == null || m5408e.isFinishing()) {
            return;
        }
        m5408e.finish();
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void close() {
        m5411b();
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void expand() {
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void fireImpression() {
        WebController webController = this.f61528c;
        if (webController != null) {
            webController.fireImpression();
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        return this.f61533i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getEnterAnimationId() {
        return this.f61531g;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getExitAnimationId() {
        return this.f61532h;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public boolean isImmersiveEnabled() {
        return this.f61530f;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void load(Context context, int i, final InterstitialAdAdapter.LoadViewListener loadViewListener) {
        synchronized (this) {
            if (loadViewListener == null) {
                f61526e.m5565e("LoadViewListener cannot be null.");
            } else if (this.f61534j != AdapterState.PREPARED) {
                f61526e.m5567d("Adapter must be in prepared state to load.");
                loadViewListener.onComplete(new ErrorInfo(f61525a, "Adapter not in prepared state.", -2));
            } else {
                this.f61534j = AdapterState.LOADING;
                this.f61528c.load(context, i, new WebController.LoadListener() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.2
                    @Override // com.verizon.ads.webcontroller.WebController.LoadListener
                    public void onComplete(ErrorInfo errorInfo) {
                        synchronized (InterstitialWebAdapter.this) {
                            if (InterstitialWebAdapter.this.f61534j == AdapterState.LOADING) {
                                if (errorInfo == null) {
                                    InterstitialWebAdapter.this.f61534j = AdapterState.LOADED;
                                } else {
                                    InterstitialWebAdapter.this.f61534j = AdapterState.ERROR;
                                }
                                loadViewListener.onComplete(errorInfo);
                            } else {
                                loadViewListener.onComplete(new ErrorInfo(InterstitialWebAdapter.f61525a, "Adapter not in the loading state.", -2));
                            }
                        }
                    }
                }, true);
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onAdLeftApplication() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61529d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onClicked() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61529d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onError(ErrorInfo errorInfo) {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61529d;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onError(errorInfo);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.f61534j != AdapterState.DEFAULT) {
                f61526e.m5567d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f61525a, "Adapter not in the default state.", -2);
            }
            ErrorInfo prepare = this.f61528c.prepare(adSession, adContent.getContent());
            if (prepare == null) {
                this.f61534j = AdapterState.PREPARED;
            } else {
                this.f61534j = AdapterState.ERROR;
            }
            this.f61533i = adContent;
            return prepare;
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void release() {
        synchronized (this) {
            this.f61534j = AdapterState.RELEASED;
            WebController webController = this.f61528c;
            if (webController != null) {
                webController.release();
                this.f61528c = null;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialwebadapter.InterstitialWebAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialWebAdapter.this.m5411b();
                }
            });
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void resize() {
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setEnterAnimation(int i) {
        this.f61531g = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setExitAnimation(int i) {
        this.f61532h = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setImmersiveEnabled(boolean z) {
        this.f61530f = z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setListener(InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener) {
        synchronized (this) {
            if (this.f61534j == AdapterState.PREPARED || this.f61534j == AdapterState.DEFAULT || this.f61534j == AdapterState.LOADED) {
                this.f61529d = interstitialAdAdapterListener;
            } else {
                f61526e.m5565e("InterstitialAdAdapterListener can only be set in default, prepared, or loaded state.");
            }
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void show(Context context) {
        synchronized (this) {
            if (this.f61534j != AdapterState.LOADED) {
                f61526e.m5567d("Show failed; Adapter not loaded.");
                InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61529d;
                if (interstitialAdAdapterListener != null) {
                    interstitialAdAdapterListener.onError(new ErrorInfo(f61525a, "Show failed; Adapter not loaded.", -2));
                }
                return;
            }
            this.f61534j = AdapterState.SHOWING;
            WebViewActivity.WebViewActivityConfig webViewActivityConfig = new WebViewActivity.WebViewActivityConfig(this);
            webViewActivityConfig.setImmersive(isImmersiveEnabled()).setTransitionAnimation(getEnterAnimationId(), getExitAnimationId());
            WebViewActivity.launch(context, webViewActivityConfig);
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void unload() {
        this.f61534j = AdapterState.UNLOADED;
        m5411b();
    }
}
