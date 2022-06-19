package com.mopub.common;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import com.mopub.network.TrackingRequest;
import java.net.URISyntaxException;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlAction.class */
public enum UrlAction {
    HANDLE_MOPUB_SCHEME(false) { // from class: com.mopub.common.UrlAction.1
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            String host = uri.getHost();
            UrlHandler.MoPubSchemeListener moPubSchemeListener = urlHandler.f58790a;
            if ("finishLoad".equalsIgnoreCase(host)) {
                moPubSchemeListener.onFinishLoad();
            } else if (EventConstants.CLOSE.equalsIgnoreCase(host)) {
                moPubSchemeListener.onClose();
            } else if ("failLoad".equalsIgnoreCase(host)) {
                moPubSchemeListener.onFailLoad();
            } else if (!"crash".equals(host)) {
                throw new IntentNotResolvableException("Could not handle MoPub Scheme url: ".concat(String.valueOf(uri)));
            } else {
                moPubSchemeListener.onCrash();
            }
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return MoPub.ANALYTICS_MOPUB_TAG.equalsIgnoreCase(uri.getScheme());
        }
    },
    IGNORE_ABOUT_SCHEME(false) { // from class: com.mopub.common.UrlAction.3
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Link to about page ignored.");
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return "about".equalsIgnoreCase(uri.getScheme());
        }
    },
    HANDLE_PHONE_SCHEME(true) { // from class: com.mopub.common.UrlAction.4
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            Intents.launchActionViewIntent(context, uri, "Could not handle intent with URI: " + uri + "\n\tIs this intent supported on your phone?");
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            String scheme = uri.getScheme();
            return MRAIDNativeFeature.TEL.equalsIgnoreCase(scheme) || "voicemail".equalsIgnoreCase(scheme) || MRAIDNativeFeature.SMS.equalsIgnoreCase(scheme) || "mailto".equalsIgnoreCase(scheme) || "geo".equalsIgnoreCase(scheme) || "google.streetview".equalsIgnoreCase(scheme);
        }
    },
    OPEN_NATIVE_BROWSER(true) { // from class: com.mopub.common.UrlAction.5
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            String concat = "Unable to load mopub native browser url: ".concat(String.valueOf(uri));
            try {
                Intents.launchIntentForUserClick(context, Intents.intentForNativeBrowserScheme(uri), concat);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(concat + "\n\t" + e.getMessage());
            }
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            String scheme = uri.getScheme();
            return Constants.HTTPS.equalsIgnoreCase(scheme) ? MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE : "mopubnativebrowser".equalsIgnoreCase(scheme);
        }
    },
    OPEN_APP_MARKET(true) { // from class: com.mopub.common.UrlAction.6
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            Intents.launchApplicationUrl(context, uri);
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            if (!uri.isHierarchical()) {
                return false;
            }
            String scheme = uri.getScheme();
            String host = uri.getHost();
            boolean z = "play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host) || "market".equalsIgnoreCase(scheme) || uri.toString().toLowerCase().startsWith("play.google.com/") || uri.toString().toLowerCase().startsWith("market.android.com/");
            String queryParameter = uri.getQueryParameter("id");
            return z && !TextUtils.isEmpty(queryParameter) && !JsonReaderKt.NULL.equals(queryParameter);
        }
    },
    OPEN_IN_APP_BROWSER(true) { // from class: com.mopub.common.UrlAction.7
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            if (!urlHandler.f58791b) {
                Intents.showMoPubBrowserForUrl(context, uri, str);
            }
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return Constants.HTTPS.equalsIgnoreCase(uri.getScheme());
        }
    },
    HANDLE_SHARE_TWEET(true) { // from class: com.mopub.common.UrlAction.8
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(uri);
            String concat = "Could not handle share tweet intent with URI ".concat(String.valueOf(uri));
            try {
                Intents.launchIntentForUserClick(context, Intent.createChooser(Intents.intentForShareTweet(uri), "Share via"), concat);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(concat + "\n\t" + e.getMessage());
            }
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            Preconditions.checkNotNull(uri);
            return "mopubshare".equalsIgnoreCase(uri.getScheme()) && "tweet".equalsIgnoreCase(uri.getHost());
        }
    },
    FOLLOW_DEEP_LINK_WITH_FALLBACK(true) { // from class: com.mopub.common.UrlAction.9
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            if ("navigate".equalsIgnoreCase(uri.getHost())) {
                try {
                    String queryParameter = uri.getQueryParameter("primaryUrl");
                    List<String> queryParameters = uri.getQueryParameters("primaryTrackingUrl");
                    String queryParameter2 = uri.getQueryParameter("fallbackUrl");
                    List<String> queryParameters2 = uri.getQueryParameters("fallbackTrackingUrl");
                    if (queryParameter == null) {
                        throw new IntentNotResolvableException("Deeplink+ did not have 'primaryUrl' query param.");
                    }
                    Uri parse = Uri.parse(queryParameter);
                    if (shouldTryHandlingUrl(parse)) {
                        throw new IntentNotResolvableException("Deeplink+ had another Deeplink+ as the 'primaryUrl'.");
                    }
                    if (Intents.canLaunchApplicationUrl(context, parse)) {
                        Intents.launchApplicationUrl(context, parse);
                        TrackingRequest.makeTrackingHttpRequest(queryParameters, context);
                        return;
                    } else if (queryParameter2 == null) {
                        throw new IntentNotResolvableException("Unable to handle 'primaryUrl' for Deeplink+ and 'fallbackUrl' was missing.");
                    } else {
                        if (shouldTryHandlingUrl(Uri.parse(queryParameter2))) {
                            throw new IntentNotResolvableException("Deeplink+ URL had another Deeplink+ URL as the 'fallbackUrl'.");
                        }
                        urlHandler.handleUrl(context, queryParameter2, true, queryParameters2);
                        return;
                    }
                } catch (UnsupportedOperationException e) {
                    throw new IntentNotResolvableException("Deeplink+ URL was not a hierarchical URI.");
                }
            }
            throw new IntentNotResolvableException("Deeplink+ URL did not have 'navigate' as the host.");
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return "deeplink+".equalsIgnoreCase(uri.getScheme());
        }
    },
    FOLLOW_DEEP_LINK(true) { // from class: com.mopub.common.UrlAction.10
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
            if (!Constants.INTENT_SCHEME.equalsIgnoreCase(uri.getScheme())) {
                Intents.launchApplicationUrl(context, uri);
                return;
            }
            try {
                Intents.launchApplicationIntent(context, Intent.parseUri(uri.toString(), 1));
            } catch (URISyntaxException e) {
                throw new IntentNotResolvableException("Intent uri had invalid syntax: " + uri.toString());
            }
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return !TextUtils.isEmpty(uri.getScheme());
        }
    },
    NOOP(false) { // from class: com.mopub.common.UrlAction.2
        @Override // com.mopub.common.UrlAction
        protected final void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException {
        }

        @Override // com.mopub.common.UrlAction
        public final boolean shouldTryHandlingUrl(Uri uri) {
            return false;
        }
    };
    
    private final boolean mRequiresUserInteraction;

    UrlAction(boolean z) {
        this.mRequiresUserInteraction = z;
    }

    public void handleUrl(UrlHandler urlHandler, Context context, Uri uri, boolean z, String str) throws IntentNotResolvableException {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad event URL: ".concat(String.valueOf(uri)));
        if (!this.mRequiresUserInteraction || z) {
            performAction(context, uri, urlHandler, str);
            return;
        }
        throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
    }

    protected abstract void performAction(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException;

    public abstract boolean shouldTryHandlingUrl(Uri uri);
}
