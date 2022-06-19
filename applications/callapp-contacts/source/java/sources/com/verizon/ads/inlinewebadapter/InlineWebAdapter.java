package com.verizon.ads.inlinewebadapter;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.mraid.C9568h;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.inlineplacement.AdSize;
import com.verizon.ads.inlineplacement.InlineAdAdapter;
import com.verizon.ads.webcontroller.WebController;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlinewebadapter/InlineWebAdapter.class */
public class InlineWebAdapter implements InlineAdAdapter, WebController.WebControllerListener {

    /* renamed from: a */
    private static final Logger f61406a = Logger.getInstance(InlineWebAdapter.class);

    /* renamed from: b */
    private static final String f61407b = InlineWebAdapter.class.getSimpleName();

    /* renamed from: c */
    private WebController f61408c;

    /* renamed from: d */
    private InlineAdAdapter.InlineAdAdapterListener f61409d;

    /* renamed from: e */
    private boolean f61410e = true;

    /* renamed from: f */
    private volatile AdapterState f61411f = AdapterState.DEFAULT;

    /* renamed from: g */
    private AdSize f61412g;

    /* renamed from: h */
    private AdContent f61413h;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState.class */
    enum AdapterState {
        DEFAULT,
        PREPARED,
        LOADING,
        LOADED,
        ERROR,
        ABORTED,
        RELEASED
    }

    public InlineWebAdapter() {
        WebController webController = new WebController();
        this.f61408c = webController;
        webController.setListener(this);
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void abortLoad() {
        synchronized (this) {
            f61406a.m5567d("Attempting to abort load.");
            if (this.f61411f == AdapterState.PREPARED || this.f61411f == AdapterState.LOADING) {
                this.f61411f = AdapterState.ABORTED;
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void close() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onCollapsed();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void expand() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onExpanded();
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void fireImpression() {
        WebController webController = this.f61408c;
        if (webController != null) {
            webController.fireImpression();
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        return this.f61413h;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public AdSize getAdSize() {
        return this.f61412g;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public View getView() {
        if (this.f61411f != AdapterState.LOADED) {
            f61406a.m5567d("Adapter must be in loaded state to getView.");
            return null;
        }
        WebController webController = this.f61408c;
        if (webController == null) {
            f61406a.m5567d("WebController cannot be null to getView.");
            this.f61411f = AdapterState.ERROR;
            return null;
        }
        View vASAdsMRAIDWebView = webController.getVASAdsMRAIDWebView();
        if (vASAdsMRAIDWebView != null) {
            return vASAdsMRAIDWebView;
        }
        f61406a.m5567d("Verizon Ad View cannot be null to getView.");
        this.f61411f = AdapterState.ERROR;
        return null;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isExpanded() {
        return this.f61408c.isExpanded();
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isImmersiveEnabled() {
        return this.f61410e;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isResized() {
        return this.f61408c.isResized();
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void loadView(Context context, int i, final InlineAdAdapter.LoadViewListener loadViewListener) {
        if (loadViewListener == null) {
            f61406a.m5565e("LoadViewListener cannot be null.");
        } else if (this.f61411f != AdapterState.PREPARED) {
            f61406a.m5567d("Adapter must be in prepared state to load.");
            loadViewListener.onComplete(new ErrorInfo(f61407b, "Adapter not in prepared state.", -1));
        } else {
            this.f61411f = AdapterState.LOADING;
            this.f61408c.load(context, i, new WebController.LoadListener() { // from class: com.verizon.ads.inlinewebadapter.InlineWebAdapter.1
                @Override // com.verizon.ads.webcontroller.WebController.LoadListener
                public void onComplete(ErrorInfo errorInfo) {
                    synchronized (InlineWebAdapter.this) {
                        if (InlineWebAdapter.this.f61411f != AdapterState.LOADING) {
                            loadViewListener.onComplete(new ErrorInfo(InlineWebAdapter.f61407b, "Adapter not in the loading state.", -1));
                        } else if (errorInfo != null) {
                            InlineWebAdapter.this.f61411f = AdapterState.ERROR;
                            loadViewListener.onComplete(errorInfo);
                        } else {
                            InlineWebAdapter.this.f61411f = AdapterState.LOADED;
                            loadViewListener.onComplete(null);
                        }
                    }
                }
            }, false);
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onAdLeftApplication() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onClicked() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onError(ErrorInfo errorInfo) {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onError(errorInfo);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.f61411f != AdapterState.DEFAULT) {
                f61406a.m5567d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f61407b, "Adapter not in the default state.", -1);
            }
            ErrorInfo prepare = this.f61408c.prepare(adSession, adContent.getContent());
            if (adContent.getMetadata() == null) {
                return new ErrorInfo(f61407b, "Ad content is missing meta data.", -3);
            } else if (!(adContent.getMetadata().get(Reporting.Key.AD_SIZE) instanceof Map)) {
                return new ErrorInfo(f61407b, "Ad content is missing ad size.", -2);
            } else {
                Map map = (Map) adContent.getMetadata().get(Reporting.Key.AD_SIZE);
                AdSize adSize = null;
                if (map == null) {
                    f61406a.m5565e("AdSizeMap must not be null.");
                } else {
                    if ((map.get("w") instanceof Integer) && (map.get(C9568h.f32519a) instanceof Integer)) {
                        adSize = new AdSize(((Integer) map.get("w")).intValue(), ((Integer) map.get(C9568h.f32519a)).intValue());
                    }
                    f61406a.m5565e("Width and/or height are not integers.");
                }
                this.f61412g = adSize;
                if (adSize == null) {
                    return new ErrorInfo(f61407b, "Ad content is missing ad size.", -2);
                }
                if (prepare == null) {
                    this.f61411f = AdapterState.PREPARED;
                } else {
                    this.f61411f = AdapterState.ERROR;
                }
                this.f61413h = adContent;
                return prepare;
            }
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void release() {
        synchronized (this) {
            this.f61411f = AdapterState.RELEASED;
            WebController webController = this.f61408c;
            if (webController != null) {
                webController.release();
                this.f61408c = null;
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void resize() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f61409d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onResized();
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void setImmersiveEnabled(boolean z) {
        WebController webController = this.f61408c;
        if (webController != null) {
            webController.setImmersiveEnabled(z);
        }
        this.f61410e = z;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void setListener(InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener) {
        if (this.f61411f == AdapterState.PREPARED || this.f61411f == AdapterState.DEFAULT || this.f61411f == AdapterState.LOADED) {
            this.f61409d = inlineAdAdapterListener;
        } else {
            f61406a.m5565e("InlineAdAdapterListener can only be set in default, prepared, or loaded state.");
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void unload() {
    }
}
