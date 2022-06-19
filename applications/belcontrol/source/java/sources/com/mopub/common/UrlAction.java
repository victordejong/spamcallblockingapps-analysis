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
/* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlAction.class */
public abstract class UrlAction extends Enum<UrlAction> {
    public static final UrlAction FOLLOW_DEEP_LINK;
    public static final UrlAction FOLLOW_DEEP_LINK_WITH_FALLBACK;
    public static final UrlAction HANDLE_MOPUB_SCHEME;
    public static final UrlAction HANDLE_PHONE_SCHEME;
    public static final UrlAction HANDLE_SHARE_TWEET;
    public static final UrlAction IGNORE_ABOUT_SCHEME;
    public static final UrlAction NOOP;
    public static final UrlAction OPEN_APP_MARKET;
    public static final UrlAction OPEN_IN_APP_BROWSER;
    public static final UrlAction OPEN_NATIVE_BROWSER;

    /* renamed from: b */
    public static final /* synthetic */ UrlAction[] f4305b;

    /* renamed from: a */
    public final boolean f4306a;

    /* renamed from: com.mopub.common.UrlAction$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlAction$b.class */
    public static final class C1021b extends UrlAction {
        public C1021b(String str, int i, boolean z) {
            super(str, i, z, null);
        }

        @Override // com.mopub.common.UrlAction
        /* renamed from: a */
        public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
            String host = uri.getHost();
            UrlHandler.MoPubSchemeListener m3912f = urlHandler.m3912f();
            if ("finishLoad".equalsIgnoreCase(host)) {
                m3912f.onFinishLoad();
            } else if ("close".equalsIgnoreCase(host)) {
                m3912f.onClose();
            } else if ("failLoad".equalsIgnoreCase(host)) {
                m3912f.onFailLoad();
            } else if ("crash".equals(host)) {
                m3912f.onCrash();
            } else {
                throw new IntentNotResolvableException("Could not handle MoPub Scheme url: " + uri);
            }
        }

        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(Uri uri) {
            return "mopub".equalsIgnoreCase(uri.getScheme());
        }
    }

    static {
        C1021b c1021b = new C1021b("HANDLE_MOPUB_SCHEME", 0, false);
        HANDLE_MOPUB_SCHEME = c1021b;
        UrlAction urlAction = new UrlAction("IGNORE_ABOUT_SCHEME", 1, false) { // from class: com.mopub.common.UrlAction.c
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Link to about page ignored.");
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                return "about".equalsIgnoreCase(uri.getScheme());
            }
        };
        IGNORE_ABOUT_SCHEME = urlAction;
        UrlAction urlAction2 = new UrlAction("HANDLE_PHONE_SCHEME", 2, true) { // from class: com.mopub.common.UrlAction.d
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
                Intents.launchActionViewIntent(context, uri, "Could not handle intent with URI: " + uri + "\n\tIs this intent supported on your phone?");
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                String scheme = uri.getScheme();
                return "tel".equalsIgnoreCase(scheme) || "voicemail".equalsIgnoreCase(scheme) || "sms".equalsIgnoreCase(scheme) || "mailto".equalsIgnoreCase(scheme) || "geo".equalsIgnoreCase(scheme) || "google.streetview".equalsIgnoreCase(scheme);
            }
        };
        HANDLE_PHONE_SCHEME = urlAction2;
        UrlAction urlAction3 = new UrlAction("OPEN_NATIVE_BROWSER", 3, true) { // from class: com.mopub.common.UrlAction.e
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
                String str2 = "Unable to load mopub native browser url: " + uri;
                try {
                    Intents.launchIntentForUserClick(context, Intents.intentForNativeBrowserScheme(uri), str2);
                } catch (UrlParseException e) {
                    throw new IntentNotResolvableException(str2 + "\n\t" + e.getMessage());
                }
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                String scheme = uri.getScheme();
                if ("https".equalsIgnoreCase(scheme)) {
                    return MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE;
                }
                return "mopubnativebrowser".equalsIgnoreCase(scheme);
            }
        };
        OPEN_NATIVE_BROWSER = urlAction3;
        UrlAction urlAction4 = new UrlAction("OPEN_APP_MARKET", 4, true) { // from class: com.mopub.common.UrlAction.f
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
                Intents.launchApplicationUrl(context, uri);
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                String scheme = uri.getScheme();
                String host = uri.getHost();
                return "play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host) || "market".equalsIgnoreCase(scheme) || uri.toString().toLowerCase().startsWith("play.google.com/") || uri.toString().toLowerCase().startsWith("market.android.com/");
            }
        };
        OPEN_APP_MARKET = urlAction4;
        UrlAction urlAction5 = new UrlAction("OPEN_IN_APP_BROWSER", 5, true) { // from class: com.mopub.common.UrlAction.g
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
                if (!urlHandler.m3911g()) {
                    Intents.showMoPubBrowserForUrl(context, uri, str);
                }
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                return "https".equalsIgnoreCase(uri.getScheme());
            }
        };
        OPEN_IN_APP_BROWSER = urlAction5;
        UrlAction urlAction6 = new UrlAction("HANDLE_SHARE_TWEET", 6, true) { // from class: com.mopub.common.UrlAction.h
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
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
            public boolean shouldTryHandlingUrl(Uri uri) {
                Preconditions.checkNotNull(uri);
                return "mopubshare".equalsIgnoreCase(uri.getScheme()) && "tweet".equalsIgnoreCase(uri.getHost());
            }
        };
        HANDLE_SHARE_TWEET = urlAction6;
        UrlAction urlAction7 = new UrlAction("FOLLOW_DEEP_LINK_WITH_FALLBACK", 7, true) { // from class: com.mopub.common.UrlAction.i
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
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
                        try {
                            Intents.launchApplicationUrl(context, parse);
                            TrackingRequest.makeTrackingHttpRequest(queryParameters, context);
                            return;
                        } catch (IntentNotResolvableException e) {
                            if (queryParameter2 == null) {
                                throw new IntentNotResolvableException("Unable to handle 'primaryUrl' for Deeplink+ and 'fallbackUrl' was missing.");
                            }
                            if (shouldTryHandlingUrl(Uri.parse(queryParameter2))) {
                                throw new IntentNotResolvableException("Deeplink+ URL had another Deeplink+ URL as the 'fallbackUrl'.");
                            }
                            urlHandler.handleUrl(context, queryParameter2, true, queryParameters2);
                            return;
                        }
                    } catch (UnsupportedOperationException e2) {
                        throw new IntentNotResolvableException("Deeplink+ URL was not a hierarchical URI.");
                    }
                }
                throw new IntentNotResolvableException("Deeplink+ URL did not have 'navigate' as the host.");
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                return "deeplink+".equalsIgnoreCase(uri.getScheme());
            }
        };
        FOLLOW_DEEP_LINK_WITH_FALLBACK = urlAction7;
        UrlAction urlAction8 = new UrlAction("FOLLOW_DEEP_LINK", 8, true) { // from class: com.mopub.common.UrlAction.j
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
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
            public boolean shouldTryHandlingUrl(Uri uri) {
                return !TextUtils.isEmpty(uri.getScheme());
            }
        };
        FOLLOW_DEEP_LINK = urlAction8;
        UrlAction urlAction9 = new UrlAction("NOOP", 9, false) { // from class: com.mopub.common.UrlAction.a
            @Override // com.mopub.common.UrlAction
            /* renamed from: a */
            public void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str) {
            }

            @Override // com.mopub.common.UrlAction
            public boolean shouldTryHandlingUrl(Uri uri) {
                return false;
            }
        };
        NOOP = urlAction9;
        f4305b = new UrlAction[]{c1021b, urlAction, urlAction2, urlAction3, urlAction4, urlAction5, urlAction6, urlAction7, urlAction8, urlAction9};
    }

    public UrlAction(String str, int i, boolean z) {
        super(str, i);
        this.f4306a = z;
    }

    public /* synthetic */ UrlAction(String str, int i, boolean z, C1021b c1021b) {
        this(str, i, z);
    }

    public static UrlAction valueOf(String str) {
        return (UrlAction) Enum.valueOf(UrlAction.class, str);
    }

    public static UrlAction[] values() {
        return (UrlAction[]) f4305b.clone();
    }

    /* renamed from: a */
    public abstract void mo3918a(Context context, Uri uri, UrlHandler urlHandler, String str);

    public void handleUrl(UrlHandler urlHandler, Context context, Uri uri, boolean z, String str) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Ad event URL: " + uri);
        if (!this.f4306a || z) {
            mo3918a(context, uri, urlHandler, str);
            return;
        }
        throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
    }

    public abstract boolean shouldTryHandlingUrl(Uri uri);
}
