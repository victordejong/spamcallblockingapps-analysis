package com.verizon.ads.interstitialvastadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.interstitialvastadapter.VASTActivity;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTController;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter.class */
public class InterstitialVASTAdapter implements InterstitialAdAdapter, VASTController.VASTControllerListener {

    /* renamed from: c */
    private static final Logger f61501c = Logger.getInstance(InterstitialVASTAdapter.class);

    /* renamed from: d */
    private static final String f61502d = InterstitialVASTAdapter.class.getSimpleName();

    /* renamed from: a */
    WeakReference<VASTActivity> f61503a;

    /* renamed from: b */
    InterstitialAdAdapter.InterstitialAdAdapterListener f61504b;

    /* renamed from: e */
    private VASTController f61505e;

    /* renamed from: f */
    private boolean f61506f;

    /* renamed from: i */
    private AdContent f61509i;

    /* renamed from: g */
    private int f61507g = 0;

    /* renamed from: h */
    private int f61508h = 0;

    /* renamed from: j */
    private volatile AdapterState f61510j = AdapterState.DEFAULT;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState.class */
    public enum AdapterState {
        DEFAULT,
        PREPARED,
        LOADING,
        LOADED,
        SHOWING,
        SHOWN,
        ERROR,
        ABORTED,
        RELEASED
    }

    public InterstitialVASTAdapter() {
        VASTController vASTController = new VASTController();
        this.f61505e = vASTController;
        vASTController.setListener(this);
    }

    /* renamed from: a */
    public final boolean m5425a() {
        boolean z;
        synchronized (this) {
            z = this.f61510j == AdapterState.RELEASED;
        }
        return z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void abortLoad() {
        synchronized (this) {
            f61501c.m5567d("Attempting to abort load.");
            if (this.f61510j == AdapterState.PREPARED || this.f61510j == AdapterState.LOADING) {
                this.f61510j = AdapterState.ABORTED;
            }
        }
    }

    /* renamed from: b */
    final void m5422b() {
        WeakReference<VASTActivity> weakReference = this.f61503a;
        VASTActivity vASTActivity = weakReference == null ? null : weakReference.get();
        if (vASTActivity == null || vASTActivity.isFinishing()) {
            return;
        }
        vASTActivity.finish();
    }

    /* renamed from: c */
    public final boolean m5420c() {
        boolean z;
        synchronized (this) {
            VASTController vASTController = this.f61505e;
            if (vASTController != null) {
                if (vASTController.onBackPressed()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void close() {
        m5422b();
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void fireImpression() {
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        return this.f61509i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getEnterAnimationId() {
        return this.f61507g;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public int getExitAnimationId() {
        return this.f61508h;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public boolean isImmersiveEnabled() {
        return this.f61506f;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void load(Context context, int i, final InterstitialAdAdapter.LoadViewListener loadViewListener) {
        synchronized (this) {
            if (loadViewListener == null) {
                f61501c.m5565e("LoadViewListener cannot be null.");
            } else if (this.f61510j != AdapterState.PREPARED) {
                f61501c.m5567d("Adapter must be in prepared state to load.");
                loadViewListener.onComplete(new ErrorInfo(f61502d, "Adapter not in prepared state.", -2));
            } else {
                this.f61510j = AdapterState.LOADING;
                this.f61505e.load(context, i, new VASTController.LoadListener() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.1
                    @Override // com.verizon.ads.vastcontroller.VASTController.LoadListener
                    public void onComplete(ErrorInfo errorInfo) {
                        synchronized (InterstitialVASTAdapter.this) {
                            if (InterstitialVASTAdapter.this.f61510j == AdapterState.LOADING) {
                                if (errorInfo == null) {
                                    InterstitialVASTAdapter.this.f61510j = AdapterState.LOADED;
                                } else {
                                    InterstitialVASTAdapter.this.f61510j = AdapterState.ERROR;
                                }
                                loadViewListener.onComplete(errorInfo);
                            } else {
                                loadViewListener.onComplete(new ErrorInfo(InterstitialVASTAdapter.f61502d, "Adapter not in the loading state.", -2));
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onAdLeftApplication() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61504b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onClicked() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61504b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onVideoComplete() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61504b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onEvent(f61502d, "onVideoComplete", null);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.f61510j != AdapterState.DEFAULT) {
                f61501c.m5567d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f61502d, "Adapter not in the default state.", -2);
            }
            ErrorInfo prepare = this.f61505e.prepare(adSession, adContent.getContent());
            if (prepare == null) {
                this.f61510j = AdapterState.PREPARED;
            } else {
                this.f61510j = AdapterState.ERROR;
            }
            this.f61509i = adContent;
            return prepare;
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void release() {
        synchronized (this) {
            this.f61510j = AdapterState.RELEASED;
            VASTController vASTController = this.f61505e;
            if (vASTController != null) {
                vASTController.close();
                this.f61505e.release();
                this.f61505e = null;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialVASTAdapter.this.m5422b();
                }
            });
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setEnterAnimation(int i) {
        this.f61507g = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setExitAnimation(int i) {
        this.f61508h = i;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setImmersiveEnabled(boolean z) {
        this.f61506f = z;
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void setListener(InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener) {
        synchronized (this) {
            if (this.f61510j == AdapterState.PREPARED || this.f61510j == AdapterState.DEFAULT || this.f61510j == AdapterState.LOADING || this.f61510j == AdapterState.LOADED) {
                this.f61504b = interstitialAdAdapterListener;
            } else {
                f61501c.m5565e("InterstitialAdAdapterListener can only be set in default or prepared state.");
            }
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void show(Context context) {
        synchronized (this) {
            if (this.f61510j != AdapterState.LOADED) {
                f61501c.m5567d("Show failed; Adapter not loaded.");
                InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f61504b;
                if (interstitialAdAdapterListener != null) {
                    interstitialAdAdapterListener.onError(new ErrorInfo(f61502d, "Show failed; Adapter not loaded.", -2));
                }
                return;
            }
            this.f61510j = AdapterState.SHOWING;
            VASTActivity.VASTActivityConfig vASTActivityConfig = new VASTActivity.VASTActivityConfig(this);
            vASTActivityConfig.setImmersive(isImmersiveEnabled()).setTransitionAnimation(getEnterAnimationId(), getExitAnimationId());
            VASTActivity.launch(context, vASTActivityConfig);
        }
    }
}
