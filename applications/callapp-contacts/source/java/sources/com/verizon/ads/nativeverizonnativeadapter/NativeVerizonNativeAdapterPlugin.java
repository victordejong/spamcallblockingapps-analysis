package com.verizon.ads.nativeverizonnativeadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.ContentFilter;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.nativeplacement.NativeAd;
import com.verizon.ads.verizonnativecontroller.VerizonNativeController;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin.class */
public class NativeVerizonNativeAdapterPlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f61638i = Logger.getInstance(NativeVerizonNativeAdapterPlugin.class);

    /* renamed from: j */
    private static final URI f61639j = null;

    /* renamed from: k */
    private static final URL f61640k = null;

    public NativeVerizonNativeAdapterPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Native Verizon Native Adapter", BuildConfig.VAS_NATIVE_VERIZON_NATIVE_ADAPTER_VERSION, "Verizon", f61639j, f61640k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        f61638i.m5567d("Preparing Native Verizon Native Adapter Plugin");
        m5557a(NativeAd.class, NativeVerizonNativeAdapter.class, new ContentFilter() { // from class: com.verizon.ads.nativeverizonnativeadapter.NativeVerizonNativeAdapterPlugin.1
            @Override // com.verizon.ads.ContentFilter
            public boolean accepts(AdContent adContent) {
                return VerizonNativeController.accepts(adContent);
            }
        });
        return true;
    }
}
