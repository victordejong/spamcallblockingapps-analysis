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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35575a = Logger.getInstance(NativeVerizonNativeAdapter.class);

    /* renamed from: b  reason: collision with root package name */
    private NativeAdAdapter.NativeAdAdapterListener f35576b;

    /* renamed from: c  reason: collision with root package name */
    private VerizonNativeAd f35577c;

    /* renamed from: d  reason: collision with root package name */
    private AdContent f35578d;

    private static VerizonNativeComponentBundle a(NativeComponentBundle nativeComponentBundle) {
        Component bundleComponent = nativeComponentBundle.getBundleComponent();
        if (bundleComponent instanceof VerizonNativeComponentBundle) {
            return (VerizonNativeComponentBundle) bundleComponent;
        }
        f35575a.e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void abortLoadComponents() {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd == null) {
            f35575a.w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.abortLoadAssets();
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void fireImpression(Context context) {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd == null) {
            f35575a.w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.fireImpression(context);
        }
    }

    @Override // com.verizon.ads.AdAdapter
    public AdContent getAdContent() {
        if (this.f35577c != null) {
            return this.f35578d;
        }
        f35575a.w("Verizon Native Ad not loaded.");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public String getAdType() {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd != null) {
            return verizonNativeAd.getAdType();
        }
        f35575a.w("Verizon Native Ad not loaded.");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Component getComponent(NativeComponentBundle nativeComponentBundle, String str) {
        if (this.f35577c == null) {
            f35575a.w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle a2 = a(nativeComponentBundle);
        if (a2 == null) {
            f35575a.e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
            return null;
        }
        Component component = a2.getComponent(str);
        if (component == null) {
            f35575a.e("Error obtaining native component from controller.");
        }
        return component;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Set<String> getComponentIds(NativeComponentBundle nativeComponentBundle) {
        VerizonNativeComponentBundle a2 = a(nativeComponentBundle);
        if (a2 != null) {
            return a2.getComponentIds();
        }
        f35575a.e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public JSONObject getJSON(NativeComponentBundle nativeComponentBundle) {
        if (this.f35577c == null) {
            f35575a.w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle a2 = a(nativeComponentBundle);
        if (a2 != null) {
            return a2.getComponentInfo();
        }
        f35575a.e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public JSONObject getJSON(NativeComponentBundle nativeComponentBundle, String str) {
        if (this.f35577c == null) {
            f35575a.w("Verizon Native Ad not loaded.");
            return null;
        }
        VerizonNativeComponentBundle a2 = a(nativeComponentBundle);
        if (a2 != null) {
            return a2.getComponentJSON(str);
        }
        f35575a.e("NativeComponentBundle does not contain a VerizonNativeComponentBundle");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public Set<String> getRequiredComponentIds() {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd != null) {
            return verizonNativeAd.getRequiredComponentIds();
        }
        f35575a.w("Verizon Native Ad not loaded.");
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public NativeComponentBundle getRootBundle() {
        return new NativeComponentBundle(null, this.f35577c);
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void invokeDefaultAction(Context context) {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd == null) {
            f35575a.w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.invokeDefaultAction(context);
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void loadComponents(boolean z, int i, final NativeAdAdapter.LoadComponentsListener loadComponentsListener) {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd == null) {
            f35575a.w("Verizon Native Ad not loaded.");
        } else if (loadComponentsListener == null) {
            f35575a.e("loadComponentsListener must not be null.");
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
        this.f35578d = adContent;
        VerizonNativeController verizonNativeController = new VerizonNativeController();
        ErrorInfo prepare = verizonNativeController.prepare(adSession, adContent);
        if (prepare != null) {
            return prepare;
        }
        VerizonNativeAd verizonNativeAd = verizonNativeController.getVerizonNativeAd();
        this.f35577c = verizonNativeAd;
        verizonNativeAd.setInteractionListener(new VerizonNativeAd.InteractionListener() { // from class: com.verizon.ads.nativeverizonnativeadapter.NativeVerizonNativeAdapter.2
            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onAdLeftApplication(Component component) {
                if (NativeVerizonNativeAdapter.this.f35576b != null) {
                    NativeVerizonNativeAdapter.this.f35576b.onAdLeftApplication();
                }
            }

            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onClicked(Component component) {
                if (NativeVerizonNativeAdapter.this.f35576b != null) {
                    NativeVerizonNativeAdapter.this.f35576b.onClicked(component);
                }
            }

            @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeAd.InteractionListener
            public void onEvent(String str, String str2, Map<String, Object> map) {
                if (NativeVerizonNativeAdapter.this.f35576b != null) {
                    NativeVerizonNativeAdapter.this.f35576b.onEvent(str, str2, map);
                }
            }
        });
        return null;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public boolean registerContainerView(ViewGroup viewGroup) {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd != null) {
            return verizonNativeAd.registerContainerView(viewGroup);
        }
        f35575a.w("Verizon Native Ad not loaded.");
        return false;
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void release() {
        VerizonNativeAd verizonNativeAd = this.f35577c;
        if (verizonNativeAd == null) {
            f35575a.w("Verizon Native Ad not loaded.");
        } else {
            verizonNativeAd.release();
        }
    }

    @Override // com.verizon.ads.nativeplacement.NativeAdAdapter
    public void setListener(NativeAdAdapter.NativeAdAdapterListener nativeAdAdapterListener) {
        this.f35576b = nativeAdAdapterListener;
    }
}
