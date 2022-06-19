package com.verizon.ads.nativeverizonnativeadapter;

import android.content.Context;
import android.view.ViewGroup;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.nativeplacement.NativeAdAdapter;
import com.verizon.ads.nativeplacement.NativeComponentBundle;
import com.verizon.ads.verizonnativecontroller.VerizonNativeAd;
import com.verizon.ads.verizonnativecontroller.VerizonNativeComponentBundle;
import com.verizon.ads.verizonnativecontroller.VerizonNativeController;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter.class */
public class NativeVerizonNativeAdapter implements NativeAdAdapter {

    /* renamed from: a */
    private static final Logger f61631a = Logger.getInstance(NativeVerizonNativeAdapter.class);

    /* renamed from: b */
    private NativeAdAdapter.NativeAdAdapterListener f61632b;

    /* renamed from: c */
    private VerizonNativeAd f61633c;

    /* renamed from: d */
    private AdContent f61634d;

    /* renamed from: a */
    private static VerizonNativeComponentBundle m5366a(NativeComponentBundle nativeComponentBundle) {
        Component bundleComponent = nativeComponentBundle.getBundleComponent();
        if (!(bundleComponent instanceof VerizonNativeComponentBundle)) {
            f61631a.m5565e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
            return null;
        }
        return (VerizonNativeComponentBundle) bundleComponent;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void abortLoadComponents() {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.abortLoadAssets();
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void fireImpression(Context context) {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.fireImpression(context);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        if (this.f61633c == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        return this.f61634d;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public String getAdType() {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        return verizonNativeAd.getAdType();
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Component getComponent(NativeComponentBundle nativeComponentBundle, String str) {
        if (this.f61633c == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle m5366a = m5366a(nativeComponentBundle);
        if (m5366a == null) {
            f61631a.m5565e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
            return null;
        }
        Component component = m5366a.getComponent(str);
        if (component == null) {
            f61631a.m5565e("Error obtaining native component from controller.");
        }
        return component;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Set<String> getComponentIds(NativeComponentBundle nativeComponentBundle) {
        VerizonNativeComponentBundle m5366a = m5366a(nativeComponentBundle);
        if (m5366a == null) {
            f61631a.m5565e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
            return null;
        }
        return m5366a.getComponentIds();
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public JSONObject getJSON(NativeComponentBundle nativeComponentBundle) {
        if (this.f61633c == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle m5366a = m5366a(nativeComponentBundle);
        if (m5366a != null) {
            return m5366a.getComponentInfo();
        }
        f61631a.m5565e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public JSONObject getJSON(NativeComponentBundle nativeComponentBundle, String str) {
        if (this.f61633c == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle m5366a = m5366a(nativeComponentBundle);
        if (m5366a != null) {
            return m5366a.getComponentJSON(str);
        }
        f61631a.m5565e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Set<String> getRequiredComponentIds() {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return null;
        }
        return verizonNativeAd.getRequiredComponentIds();
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public NativeComponentBundle getRootBundle() {
        return new NativeComponentBundle(null, this.f61633c);
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void invokeDefaultAction(Context context) {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.invokeDefaultAction(context);
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void loadComponents(boolean z, int i, final NativeAdAdapter.LoadComponentsListener loadComponentsListener) {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
        } else if (loadComponentsListener == null) {
            f61631a.m5565e("loadComponentsListener must not be null.");
        } else {
            verizonNativeAd.loadResources(z, i, new VerizonNativeAd.LoadResourcesListener() { // from class: com.verizon.ads.nativeverizonnativeadapter.NativeVerizonNativeAdapter.1
                @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.LoadResourcesListener
                public void onComplete(ErrorInfo errorInfo) {
                    loadComponentsListener.onComplete(errorInfo);
                }
            });
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        this.f61634d = adContent;
        VerizonNativeController verizonNativeController = new VerizonNativeController();
        ErrorInfo prepare = verizonNativeController.prepare(adSession, adContent);
        if (prepare != null) {
            return prepare;
        }
        VerizonNativeAd verizonNativeAd = verizonNativeController.getVerizonNativeAd();
        this.f61633c = verizonNativeAd;
        verizonNativeAd.setInteractionListener(new VerizonNativeAd.InteractionListener() { // from class: com.verizon.ads.nativeverizonnativeadapter.NativeVerizonNativeAdapter.2
            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onAdLeftApplication(Component component) {
                if (NativeVerizonNativeAdapter.this.f61632b != null) {
                    NativeVerizonNativeAdapter.this.f61632b.onAdLeftApplication();
                }
            }

            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onClicked(Component component) {
                if (NativeVerizonNativeAdapter.this.f61632b != null) {
                    NativeVerizonNativeAdapter.this.f61632b.onClicked(component);
                }
            }

            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onEvent(String str, String str2, Map<String, Object> map) {
                if (NativeVerizonNativeAdapter.this.f61632b != null) {
                    NativeVerizonNativeAdapter.this.f61632b.onEvent(str, str2, map);
                }
            }
        });
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public boolean registerContainerView(ViewGroup viewGroup) {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
            return false;
        }
        return verizonNativeAd.registerContainerView(viewGroup);
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void release() {
        VerizonNativeAd verizonNativeAd = this.f61633c;
        if (verizonNativeAd == null) {
            f61631a.m5559w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.release();
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void setListener(NativeAdAdapter.NativeAdAdapterListener nativeAdAdapterListener) {
        this.f61632b = nativeAdAdapterListener;
    }
}
