package com.verizon.ads.interstitialwebadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.ContentFilter;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.interstitialplacement.InterstitialAd;
import com.verizon.ads.utils.TextUtils;
import java.net.URI;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin.class */
public class InterstitialWebAdapterPlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f61543i = Logger.getInstance(InterstitialWebAdapterPlugin.class);

    /* renamed from: j */
    private static final URI f61544j = null;

    /* renamed from: k */
    private static final URL f61545k = null;

    /* renamed from: l */
    private static final Pattern f61546l = Pattern.compile("<HTML", 2);

    /* renamed from: m */
    private static final Pattern f61547m = Pattern.compile("<HEAD|<BODY", 2);

    /* renamed from: n */
    private static final Pattern f61548n = Pattern.compile("<(SCRIPT|IMG|IFRAME|A|DIV|SPAN|P|H[1-6])[ />]", 2);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin$InterstitialWebContentFilter.class */
    static class InterstitialWebContentFilter implements ContentFilter {
        InterstitialWebContentFilter() {
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
            try {
                new JSONObject(content);
                return false;
            } catch (JSONException e) {
                Matcher matcher = InterstitialWebAdapterPlugin.f61547m.matcher(content);
                if (matcher.find()) {
                    return true;
                }
                matcher.usePattern(InterstitialWebAdapterPlugin.f61546l);
                if (matcher.find()) {
                    return false;
                }
                matcher.usePattern(InterstitialWebAdapterPlugin.f61548n);
                return matcher.find();
            }
        }
    }

    public InterstitialWebAdapterPlugin(Context context) {
        super(context, "com.verizon.ads.interstitialwebadapter", "Interstitial Web Adapter", BuildConfig.VAS_INTERSTITIAL_WEB_ADAPTER_VERSION, "Verizon", f61544j, f61545k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        f61543i.m5567d("Preparing InterstitialWebAdapterPlugin");
        m5557a(InterstitialAd.class, InterstitialWebAdapter.class, new InterstitialWebContentFilter());
        return true;
    }
}
