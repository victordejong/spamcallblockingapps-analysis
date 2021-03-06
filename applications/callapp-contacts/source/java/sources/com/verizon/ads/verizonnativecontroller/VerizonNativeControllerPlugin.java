package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.support.StorageCache;
import com.verizon.ads.verizonnativecontroller.VerizonNativeAd;
import com.verizon.ads.verizonnativecontroller.VerizonNativeComponentBundle;
import com.verizon.ads.verizonnativecontroller.VerizonNativeImageComponent;
import com.verizon.ads.verizonnativecontroller.VerizonNativeImpressionRuleComponent;
import com.verizon.ads.verizonnativecontroller.VerizonNativeTextComponent;
import com.verizon.ads.verizonnativecontroller.VerizonNativeVideoComponent;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin.class */
public class VerizonNativeControllerPlugin extends Plugin {

    /* renamed from: i */
    static Context f61926i;

    /* renamed from: j */
    static StorageCache f61927j;

    /* renamed from: k */
    private static final Logger f61928k = Logger.getInstance(VerizonNativeControllerPlugin.class);

    /* renamed from: l */
    private static final URI f61929l = null;

    /* renamed from: m */
    private static final URL f61930m = null;

    public VerizonNativeControllerPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Verizon Native Controller", BuildConfig.VAS_VERIZON_NATIVE_CONTROLLER_VERSION, "Verizon", f61929l, f61930m, 1);
        f61926i = context;
        f61927j = new StorageCache(StorageCache.getApplicationCache(context, "/com.verizon.ads/VerizonNativeController/"));
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        ComponentRegistry.registerComponent(VerizonNativeAd.CONTENT_TYPE, new VerizonNativeAd.Factory());
        ComponentRegistry.registerComponent("text/plain-v1", new VerizonNativeTextComponent.Factory());
        ComponentRegistry.registerComponent("text/unknown-v1", new VerizonNativeTextComponent.Factory());
        VerizonNativeImageComponent.Factory factory = new VerizonNativeImageComponent.Factory();
        ComponentRegistry.registerComponent("image/png-v1", factory);
        ComponentRegistry.registerComponent("image/jpg-v1", factory);
        ComponentRegistry.registerComponent("image/jpeg-v1", factory);
        ComponentRegistry.registerComponent("image/unknown-v1", factory);
        VerizonNativeVideoComponent.Factory factory2 = new VerizonNativeVideoComponent.Factory();
        ComponentRegistry.registerComponent("video/mp4-v1", factory2);
        ComponentRegistry.registerComponent("video/quicktime-v1", factory2);
        ComponentRegistry.registerComponent("video/x-m4v-v1", factory2);
        ComponentRegistry.registerComponent("video/unknown-v1", factory2);
        ComponentRegistry.registerComponent("container/bundle-v1", new VerizonNativeComponentBundle.Factory());
        ComponentRegistry.registerComponent("rule/verizon-native-impression-v1", new VerizonNativeImpressionRuleComponent.Factory());
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        f61927j.deleteCacheDirectory();
        return true;
    }
}
