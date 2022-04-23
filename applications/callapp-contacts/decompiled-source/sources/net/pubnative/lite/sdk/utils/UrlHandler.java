package net.pubnative.lite.sdk.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.Constants;
import java.util.Locale;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/UrlHandler.class */
public class UrlHandler {
    private static final String TAG = "UrlHandler";
    private final IntentHandler mIntentHandler;

    public UrlHandler(Context context) {
        this.mIntentHandler = new IntentHandler(context);
    }

    public void handleUrl(String str) {
        if (str != null) {
            Logger.d(TAG, "Handling url: ".concat(String.valueOf(str)));
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String lowerCase = parse.toString().toLowerCase(Locale.ROOT);
            Uri build = parse.buildUpon().appendQueryParameter("redirect", "false").build();
            if ("play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host) || "market".equalsIgnoreCase(scheme) || lowerCase.startsWith("play.google.com") || lowerCase.startsWith("market.android.com/")) {
                this.mIntentHandler.handleDeepLink(build);
            } else if ("http".equalsIgnoreCase(scheme) || Constants.HTTPS.equalsIgnoreCase(scheme)) {
                this.mIntentHandler.handleBrowserLink(build);
            } else if (!TextUtils.isEmpty(scheme)) {
                this.mIntentHandler.handleDeepLink(build);
            }
        }
    }
}
