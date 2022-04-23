package com.verizon.ads.interstitialvastadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.ContentFilter;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.interstitialplacement.InterstitialAd;
import com.verizon.ads.utils.TextUtils;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin.class */
public class InterstitialVASTAdapterPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(InterstitialVASTAdapterPlugin.class);
    private static final URI j = null;
    private static final URL k = null;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin$InterstitialVASTContentFilter.class */
    static class InterstitialVASTContentFilter implements ContentFilter {
        InterstitialVASTContentFilter() {
        }

        @Override // com.verizon.ads.ContentFilter
        public boolean accepts(AdContent adContent) {
            if (adContent == null) {
                return false;
            }
            String content = adContent.getContent();
            if (TextUtils.isEmpty(content)) {
                return false;
            }
            String upperCase = content.toUpperCase();
            int indexOf = upperCase.indexOf("<VAST");
            int indexOf2 = upperCase.indexOf("<AD");
            return indexOf >= 0 && indexOf < indexOf2 && indexOf2 < upperCase.indexOf("</VAST>");
        }
    }

    public InterstitialVASTAdapterPlugin(Context context) {
        super(context, "com.verizon.ads.interstitialvastadapter", "Interstitial VAST Adapter", BuildConfig.VAS_INTERSTITIAL_VAST_ADAPTER_VERSION, "Verizon", j, k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        i.d("Preparing InterstitialVASTAdapterPlugin");
        a(InterstitialAd.class, InterstitialVASTAdapter.class, new InterstitialVASTContentFilter());
        return true;
    }
}
