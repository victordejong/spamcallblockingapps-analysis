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

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35499c = Logger.getInstance(InterstitialVASTAdapter.class);

    /* renamed from: d  reason: collision with root package name */
    private static final String f35500d = InterstitialVASTAdapter.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    WeakReference<VASTActivity> f35501a;

    /* renamed from: b  reason: collision with root package name */
    InterstitialAdAdapter.InterstitialAdAdapterListener f35502b;
    private VASTController e;
    private boolean f;
    private AdContent i;
    private int g = 0;
    private int h = 0;
    private volatile AdapterState j = AdapterState.DEFAULT;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        this.e = vASTController;
        vASTController.setListener(this);
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
            f35499c.d("Attempting to abort load.");
            if (this.j == AdapterState.PREPARED || this.j == AdapterState.LOADING) {
                this.j = AdapterState.ABORTED;
            }
        }
    }

    final void b() {
        WeakReference<VASTActivity> weakReference = this.f35501a;
        VASTActivity vASTActivity = weakReference == null ? null : weakReference.get();
        if (vASTActivity != null && !vASTActivity.isFinishing()) {
            vASTActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        boolean z;
        synchronized (this) {
            VASTController vASTController = this.e;
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
        b();
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void fireImpression() {
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
                f35499c.e("LoadViewListener cannot be null.");
            } else if (this.j != AdapterState.PREPARED) {
                f35499c.d("Adapter must be in prepared state to load.");
                loadViewListener.onComplete(new ErrorInfo(f35500d, "Adapter not in prepared state.", -2));
            } else {
                this.j = AdapterState.LOADING;
                this.e.load(context, i, new VASTController.LoadListener() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.1
                    @Override // com.verizon.ads.vastcontroller.VASTController.LoadListener
                    public void onComplete(ErrorInfo errorInfo) {
                        synchronized (InterstitialVASTAdapter.this) {
                            if (InterstitialVASTAdapter.this.j == AdapterState.LOADING) {
                                if (errorInfo == null) {
                                    InterstitialVASTAdapter.this.j = AdapterState.LOADED;
                                } else {
                                    InterstitialVASTAdapter.this.j = AdapterState.ERROR;
                                }
                                loadViewListener.onComplete(errorInfo);
                            } else {
                                loadViewListener.onComplete(new ErrorInfo(InterstitialVASTAdapter.f35500d, "Adapter not in the loading state.", -2));
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onAdLeftApplication() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35502b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onClicked() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35502b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VASTControllerListener
    public void onVideoComplete() {
        InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35502b;
        if (interstitialAdAdapterListener != null) {
            interstitialAdAdapterListener.onEvent(f35500d, "onVideoComplete", null);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.j != AdapterState.DEFAULT) {
                f35499c.d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f35500d, "Adapter not in the default state.", -2);
            }
            ErrorInfo prepare = this.e.prepare(adSession, adContent.getContent());
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
            VASTController vASTController = this.e;
            if (vASTController != null) {
                vASTController.close();
                this.e.release();
                this.e = null;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialVASTAdapter.this.b();
                }
            });
        }
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
            if (this.j == AdapterState.PREPARED || this.j == AdapterState.DEFAULT || this.j == AdapterState.LOADING || this.j == AdapterState.LOADED) {
                this.f35502b = interstitialAdAdapterListener;
            } else {
                f35499c.e("InterstitialAdAdapterListener can only be set in default or prepared state.");
            }
        }
    }

    @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter
    public void show(Context context) {
        synchronized (this) {
            if (this.j != AdapterState.LOADED) {
                f35499c.d("Show failed; Adapter not loaded.");
                InterstitialAdAdapter.InterstitialAdAdapterListener interstitialAdAdapterListener = this.f35502b;
                if (interstitialAdAdapterListener != null) {
                    interstitialAdAdapterListener.onError(new ErrorInfo(f35500d, "Show failed; Adapter not loaded.", -2));
                }
                return;
            }
            this.j = AdapterState.SHOWING;
            VASTActivity.VASTActivityConfig vASTActivityConfig = new VASTActivity.VASTActivityConfig(this);
            vASTActivityConfig.setImmersive(isImmersiveEnabled()).setTransitionAnimation(getEnterAnimationId(), getExitAnimationId());
            VASTActivity.launch(context, vASTActivityConfig);
        }
    }
}
