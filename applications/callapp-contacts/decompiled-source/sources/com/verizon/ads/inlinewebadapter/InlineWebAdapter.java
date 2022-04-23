package com.verizon.ads.inlinewebadapter;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.mraid.h;
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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35440a = Logger.getInstance(InlineWebAdapter.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35441b = InlineWebAdapter.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private WebController f35442c;

    /* renamed from: d  reason: collision with root package name */
    private InlineAdAdapter.InlineAdAdapterListener f35443d;
    private boolean e = true;
    private volatile AdapterState f = AdapterState.DEFAULT;
    private AdSize g;
    private AdContent h;

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
        this.f35442c = webController;
        webController.setListener(this);
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void abortLoad() {
        synchronized (this) {
            f35440a.d("Attempting to abort load.");
            if (this.f == AdapterState.PREPARED || this.f == AdapterState.LOADING) {
                this.f = AdapterState.ABORTED;
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void close() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onCollapsed();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void expand() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onExpanded();
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void fireImpression() {
        WebController webController = this.f35442c;
        if (webController != null) {
            webController.fireImpression();
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        return this.h;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public AdSize getAdSize() {
        return this.g;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public View getView() {
        if (this.f != AdapterState.LOADED) {
            f35440a.d("Adapter must be in loaded state to getView.");
            return null;
        }
        WebController webController = this.f35442c;
        if (webController == null) {
            f35440a.d("WebController cannot be null to getView.");
            this.f = AdapterState.ERROR;
            return null;
        }
        View vASAdsMRAIDWebView = webController.getVASAdsMRAIDWebView();
        if (vASAdsMRAIDWebView != null) {
            return vASAdsMRAIDWebView;
        }
        f35440a.d("Verizon Ad View cannot be null to getView.");
        this.f = AdapterState.ERROR;
        return null;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isExpanded() {
        return this.f35442c.isExpanded();
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isImmersiveEnabled() {
        return this.e;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public boolean isResized() {
        return this.f35442c.isResized();
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void loadView(Context context, int i, final InlineAdAdapter.LoadViewListener loadViewListener) {
        if (loadViewListener == null) {
            f35440a.e("LoadViewListener cannot be null.");
        } else if (this.f != AdapterState.PREPARED) {
            f35440a.d("Adapter must be in prepared state to load.");
            loadViewListener.onComplete(new ErrorInfo(f35441b, "Adapter not in prepared state.", -1));
        } else {
            this.f = AdapterState.LOADING;
            this.f35442c.load(context, i, new WebController.LoadListener() { // from class: com.verizon.ads.inlinewebadapter.InlineWebAdapter.1
                @Override // com.verizon.ads.webcontroller.WebController.LoadListener
                public void onComplete(ErrorInfo errorInfo) {
                    synchronized (InlineWebAdapter.this) {
                        if (InlineWebAdapter.this.f != AdapterState.LOADING) {
                            loadViewListener.onComplete(new ErrorInfo(InlineWebAdapter.f35441b, "Adapter not in the loading state.", -1));
                        } else if (errorInfo != null) {
                            InlineWebAdapter.this.f = AdapterState.ERROR;
                            loadViewListener.onComplete(errorInfo);
                        } else {
                            InlineWebAdapter.this.f = AdapterState.LOADED;
                            loadViewListener.onComplete(null);
                        }
                    }
                }
            }, false);
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onAdLeftApplication() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onAdLeftApplication();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onClicked() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onClicked();
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void onError(ErrorInfo errorInfo) {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onError(errorInfo);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        synchronized (this) {
            if (this.f != AdapterState.DEFAULT) {
                f35440a.d("prepare failed; adapter is not in the default state.");
                return new ErrorInfo(f35441b, "Adapter not in the default state.", -1);
            }
            ErrorInfo prepare = this.f35442c.prepare(adSession, adContent.getContent());
            if (adContent.getMetadata() == null) {
                return new ErrorInfo(f35441b, "Ad content is missing meta data.", -3);
            } else if (!(adContent.getMetadata().get(Reporting.Key.AD_SIZE) instanceof Map)) {
                return new ErrorInfo(f35441b, "Ad content is missing ad size.", -2);
            } else {
                Map map = (Map) adContent.getMetadata().get(Reporting.Key.AD_SIZE);
                AdSize adSize = null;
                if (map == null) {
                    f35440a.e("AdSizeMap must not be null.");
                } else {
                    if ((map.get("w") instanceof Integer) && (map.get(h.f19142a) instanceof Integer)) {
                        adSize = new AdSize(((Integer) map.get("w")).intValue(), ((Integer) map.get(h.f19142a)).intValue());
                    }
                    f35440a.e("Width and/or height are not integers.");
                }
                this.g = adSize;
                if (adSize == null) {
                    return new ErrorInfo(f35441b, "Ad content is missing ad size.", -2);
                }
                if (prepare == null) {
                    this.f = AdapterState.PREPARED;
                } else {
                    this.f = AdapterState.ERROR;
                }
                this.h = adContent;
                return prepare;
            }
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void release() {
        synchronized (this) {
            this.f = AdapterState.RELEASED;
            WebController webController = this.f35442c;
            if (webController != null) {
                webController.release();
                this.f35442c = null;
            }
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void resize() {
        InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener = this.f35443d;
        if (inlineAdAdapterListener != null) {
            inlineAdAdapterListener.onResized();
        }
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void setImmersiveEnabled(boolean z) {
        WebController webController = this.f35442c;
        if (webController != null) {
            webController.setImmersiveEnabled(z);
        }
        this.e = z;
    }

    @Override // com.verizon.ads.inlineplacement.InlineAdAdapter
    public void setListener(InlineAdAdapter.InlineAdAdapterListener inlineAdAdapterListener) {
        if (this.f == AdapterState.PREPARED || this.f == AdapterState.DEFAULT || this.f == AdapterState.LOADED) {
            this.f35443d = inlineAdAdapterListener;
        } else {
            f35440a.e("InlineAdAdapterListener can only be set in default, prepared, or loaded state.");
        }
    }

    @Override // com.verizon.ads.webcontroller.WebController.WebControllerListener
    public void unload() {
    }
}
