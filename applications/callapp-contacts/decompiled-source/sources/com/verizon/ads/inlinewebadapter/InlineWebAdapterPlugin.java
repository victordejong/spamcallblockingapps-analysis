package com.verizon.ads.inlinewebadapter;

import android.content.Context;
import com.verizon.ads.AdContent;
import com.verizon.ads.ContentFilter;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.inlineplacement.InlineAdView;
import com.verizon.ads.utils.TextUtils;
import java.net.URI;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlinewebadapter/InlineWebAdapterPlugin.class */
public class InlineWebAdapterPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(InlineWebAdapterPlugin.class);
    private static final URI j = null;
    private static final URL k = null;
    private static final Pattern l = Pattern.compile("<HTML", 2);
    private static final Pattern m = Pattern.compile("<HEAD|<BODY", 2);
    private static final Pattern n = Pattern.compile("<(SCRIPT|IMG|IFRAME|A|DIV|SPAN|P|H[1-6])[ />]", 2);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlinewebadapter/InlineWebAdapterPlugin$InlineWebContentFilter.class */
    static class InlineWebContentFilter implements ContentFilter {
        InlineWebContentFilter() {
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
                Matcher matcher = InlineWebAdapterPlugin.m.matcher(content);
                if (matcher.find()) {
                    return true;
                }
                matcher.usePattern(InlineWebAdapterPlugin.l);
                if (matcher.find()) {
                    return false;
                }
                matcher.usePattern(InlineWebAdapterPlugin.n);
                return matcher.find();
            }
        }
    }

    public InlineWebAdapterPlugin(Context context) {
        super(context, "com.verizon.ads.inlinewebadapter", "Inline Web Adapter", BuildConfig.VAS_INLINE_WEB_ADAPTER_VERSION, "Verizon", j, k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        i.d("Preparing InlineWebAdapterPlugin");
        a(InlineAdView.class, InlineWebAdapter.class, new InlineWebContentFilter());
        return true;
    }
}
