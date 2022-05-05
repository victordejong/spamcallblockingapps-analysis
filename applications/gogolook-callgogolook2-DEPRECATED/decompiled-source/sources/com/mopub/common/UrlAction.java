package com.mopub.common;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import com.mopub.network.TrackingRequest;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import java.net.URISyntaxException;
import java.util.List;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlAction.class */
public abstract class UrlAction extends Enum<UrlAction> {

    /* renamed from: a */
    public final boolean f8147a;
    public static final UrlAction HANDLE_MOPUB_SCHEME = new C3772b("HANDLE_MOPUB_SCHEME", 0, false);
    public static final UrlAction IGNORE_ABOUT_SCHEME = new UrlAction("IGNORE_ABOUT_SCHEME", 1, false) { // from class: com.mopub.common.UrlAction.c
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Link to about page ignored.");
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "about".equalsIgnoreCase(uri.getScheme());
        }
    };
    public static final UrlAction HANDLE_PHONE_SCHEME = new UrlAction("HANDLE_PHONE_SCHEME", 2, true) { // from class: com.mopub.common.UrlAction.d
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Intents.launchActionViewIntent(context, uri, "Could not handle intent with URI: " + uri + "\n\tIs this intent supported on your phone?");
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return "tel".equalsIgnoreCase(scheme) || "voicemail".equalsIgnoreCase(scheme) || "sms".equalsIgnoreCase(scheme) || "mailto".equalsIgnoreCase(scheme) || "geo".equalsIgnoreCase(scheme) || "google.streetview".equalsIgnoreCase(scheme);
        }
    };
    public static final UrlAction OPEN_NATIVE_BROWSER = new UrlAction("OPEN_NATIVE_BROWSER", 3, true) { // from class: com.mopub.common.UrlAction.e
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            String str2 = "Unable to load mopub native browser url: " + uri;
            try {
                Intents.launchIntentForUserClick(context, Intents.intentForNativeBrowserScheme(uri), str2);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(str2 + "\n\t" + e.getMessage());
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                return "mopubnativebrowser".equalsIgnoreCase(scheme);
            }
            return MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE;
        }
    };
    public static final UrlAction OPEN_APP_MARKET = new UrlAction("OPEN_APP_MARKET", 4, true) { // from class: com.mopub.common.UrlAction.f
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Intents.launchApplicationUrl(context, uri);
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            return "play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host) || PlanProductRealmObject.MARKET.equalsIgnoreCase(scheme) || uri.toString().toLowerCase().startsWith("play.google.com/") || uri.toString().toLowerCase().startsWith("market.android.com/");
        }
    };
    public static final UrlAction OPEN_IN_APP_BROWSER = new UrlAction("OPEN_IN_APP_BROWSER", 5, true) { // from class: com.mopub.common.UrlAction.g
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if (!urlHandler.m30753b()) {
                Intents.showMoPubBrowserForUrl(context, uri, str);
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
        }
    };
    public static final UrlAction HANDLE_SHARE_TWEET = new UrlAction("HANDLE_SHARE_TWEET", 6, true) { // from class: com.mopub.common.UrlAction.h
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(uri);
            String str2 = "Could not handle share tweet intent with URI " + uri;
            try {
                Intents.launchIntentForUserClick(context, Intent.createChooser(Intents.intentForShareTweet(uri), "Share via"), str2);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(str2 + "\n\t" + e.getMessage());
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            Preconditions.checkNotNull(uri);
            return "mopubshare".equalsIgnoreCase(uri.getScheme()) && "tweet".equalsIgnoreCase(uri.getHost());
        }
    };
    public static final UrlAction FOLLOW_DEEP_LINK_WITH_FALLBACK = new UrlAction("FOLLOW_DEEP_LINK_WITH_FALLBACK", 7, true) { // from class: com.mopub.common.UrlAction.i
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if ("navigate".equalsIgnoreCase(uri.getHost())) {
                try {
                    String queryParameter = uri.getQueryParameter("primaryUrl");
                    List<String> queryParameters = uri.getQueryParameters("primaryTrackingUrl");
                    String queryParameter2 = uri.getQueryParameter("fallbackUrl");
                    List<String> queryParameters2 = uri.getQueryParameters("fallbackTrackingUrl");
                    if (queryParameter != null) {
                        Uri parse = Uri.parse(queryParameter);
                        if (!shouldTryHandlingUrl(parse)) {
                            try {
                                Intents.launchApplicationUrl(context, parse);
                                TrackingRequest.makeTrackingHttpRequest(queryParameters, context);
                            } catch (IntentNotResolvableException e) {
                                if (queryParameter2 == null) {
                                    throw new IntentNotResolvableException("Unable to handle 'primaryUrl' for Deeplink+ and 'fallbackUrl' was missing.");
                                } else if (!shouldTryHandlingUrl(Uri.parse(queryParameter2))) {
                                    urlHandler.handleUrl(context, queryParameter2, true, queryParameters2);
                                } else {
                                    throw new IntentNotResolvableException("Deeplink+ URL had another Deeplink+ URL as the 'fallbackUrl'.");
                                }
                            }
                        } else {
                            throw new IntentNotResolvableException("Deeplink+ had another Deeplink+ as the 'primaryUrl'.");
                        }
                    } else {
                        throw new IntentNotResolvableException("Deeplink+ did not have 'primaryUrl' query param.");
                    }
                } catch (UnsupportedOperationException e2) {
                    throw new IntentNotResolvableException("Deeplink+ URL was not a hierarchical URI.");
                }
            } else {
                throw new IntentNotResolvableException("Deeplink+ URL did not have 'navigate' as the host.");
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "deeplink+".equalsIgnoreCase(uri.getScheme());
        }
    };
    public static final UrlAction FOLLOW_DEEP_LINK = new UrlAction("FOLLOW_DEEP_LINK", 8, true) { // from class: com.mopub.common.UrlAction.j
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if (Constants.INTENT_SCHEME.equalsIgnoreCase(uri.getScheme())) {
                try {
                    Intents.launchApplicationIntent(context, Intent.parseUri(uri.toString(), 1));
                } catch (URISyntaxException e) {
                    throw new IntentNotResolvableException("Intent uri had invalid syntax: " + uri.toString());
                }
            } else {
                Intents.launchApplicationUrl(context, uri);
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return !TextUtils.isEmpty(uri.getScheme());
        }
    };
    public static final UrlAction NOOP = new UrlAction("NOOP", 9, false) { // from class: com.mopub.common.UrlAction.a
        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return false;
        }
    };

    /* renamed from: b */
    public static final /* synthetic */ UrlAction[] f8146b = {HANDLE_MOPUB_SCHEME, IGNORE_ABOUT_SCHEME, HANDLE_PHONE_SCHEME, OPEN_NATIVE_BROWSER, OPEN_APP_MARKET, OPEN_IN_APP_BROWSER, HANDLE_SHARE_TWEET, FOLLOW_DEEP_LINK_WITH_FALLBACK, FOLLOW_DEEP_LINK, NOOP};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.mopub.common.UrlAction$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlAction$b.class */
    public static final class C3772b extends UrlAction {
        public C3772b(String str, int i, boolean z) {
            super(str, i, z, null);
        }

        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            String host = uri.getHost();
            UrlHandler.MoPubSchemeListener a = urlHandler.m30757a();
            if ("finishLoad".equalsIgnoreCase(host)) {
                a.onFinishLoad();
            } else if (MraidParser.MRAID_COMMAND_CLOSE.equalsIgnoreCase(host)) {
                a.onClose();
            } else if ("failLoad".equalsIgnoreCase(host)) {
                a.onFailLoad();
            } else if ("crash".equals(host)) {
                a.onCrash();
            } else {
                throw new IntentNotResolvableException("Could not handle MoPub Scheme url: " + uri);
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "mopub".equalsIgnoreCase(uri.getScheme());
        }
    }

    public UrlAction(String str, int i, boolean z) {
        this.f8147a = z;
    }

    public /* synthetic */ UrlAction(String str, int i, boolean z, C3772b bVar) {
        this(str, i, z);
    }

    public static UrlAction valueOf(String str) {
        return (UrlAction) Enum.valueOf(UrlAction.class, str);
    }

    public static UrlAction[] values() {
        return (UrlAction[]) f8146b.clone();
    }

    /* renamed from: a */
    public abstract void mo30758a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException;

    public void handleUrl(UrlHandler urlHandler, @NonNull Context context, @NonNull Uri uri, boolean z, @Nullable String str) throws IntentNotResolvableException {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Ad event URL: " + uri);
        if (!this.f8147a || z) {
            mo30758a(context, uri, urlHandler, str);
            return;
        }
        throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
    }

    public abstract boolean shouldTryHandlingUrl(@NonNull Uri uri);
}
