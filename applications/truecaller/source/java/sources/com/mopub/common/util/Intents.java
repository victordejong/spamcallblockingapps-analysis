package com.mopub.common.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DTBAdViewSupportClient;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Intents.class */
public class Intents {

    /* renamed from: a */
    public static final Map<String, String> f8707a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(DTBAdViewSupportClient.MARKET_SCHEME, "https://play.google.com/store/apps/details?%s");
        hashMap.put(DTBAdViewSupportClient.AMAZON_SCHEME, "https://www.amazon.com/gp/mas/dl/android?%s");
        f8707a = Collections.unmodifiableMap(hashMap);
    }

    private Intents() {
    }

    @Deprecated
    public static boolean canHandleApplicationUrl(Context context, Uri uri) {
        return false;
    }

    @Deprecated
    public static boolean canHandleApplicationUrl(Context context, Uri uri, boolean z) {
        return false;
    }

    public static boolean canLaunchApplicationUrl(Context context, Uri uri) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        boolean z = true;
        if (deviceCanHandleIntent(context, intent)) {
            return true;
        }
        if (!f8707a.containsKey(intent.getScheme()) || intent.getData() == null || TextUtils.isEmpty(intent.getData().getQuery())) {
            z = false;
        }
        return z;
    }

    public static boolean deviceCanHandleIntent(Context context, Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (NullPointerException e) {
            return false;
        }
    }

    public static Uri getPlayStoreUri(Intent intent) {
        Preconditions.checkNotNull(intent);
        return Uri.parse("market://details?id=" + intent.getPackage());
    }

    public static Intent getStartActivityIntent(Context context, Class cls, Bundle bundle) {
        Intent intent = new Intent(context, cls);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        return intent;
    }

    public static Intent intentForNativeBrowserScheme(Uri uri) throws UrlParseException {
        Preconditions.checkNotNull(uri);
        if (!UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(uri)) {
            throw new UrlParseException(C22128a.m8725C2("URI does not have ", MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE ? "mopubnativebrowser://, https://" : "mopubnativebrowser://", " scheme."));
        } else if (!"mopubnativebrowser".equalsIgnoreCase(uri.getScheme())) {
            if (MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE) {
                return new Intent("android.intent.action.VIEW", uri);
            }
            StringBuilder m8728C = C22128a.m8728C("Invalid URI: ");
            m8728C.append(uri.toString());
            throw new UrlParseException(m8728C.toString());
        } else {
            Preconditions.checkNotNull(uri);
            if (!"navigate".equals(uri.getHost())) {
                throw new UrlParseException("URL missing 'navigate' host parameter.");
            }
            try {
                String queryParameter = uri.getQueryParameter("url");
                if (queryParameter == null) {
                    throw new UrlParseException("URL missing 'url' query parameter.");
                }
                return new Intent("android.intent.action.VIEW", Uri.parse(queryParameter));
            } catch (UnsupportedOperationException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8571s2("Could not handle url: ", uri));
                throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
            }
        }
    }

    public static Intent intentForShareTweet(Uri uri) throws UrlParseException {
        if (UrlAction.HANDLE_SHARE_TWEET.shouldTryHandlingUrl(uri)) {
            try {
                String queryParameter = uri.getQueryParameter("screen_name");
                String queryParameter2 = uri.getQueryParameter("tweet_id");
                if (TextUtils.isEmpty(queryParameter)) {
                    throw new UrlParseException("URL missing non-empty 'screen_name' query parameter.");
                }
                if (TextUtils.isEmpty(queryParameter2)) {
                    throw new UrlParseException("URL missing non-empty 'tweet_id' query parameter.");
                }
                String format = String.format("Check out @%s's Tweet: %s", queryParameter, String.format("https://twitter.com/%s/status/%s", queryParameter, queryParameter2));
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.SUBJECT", format);
                intent.putExtra("android.intent.extra.TEXT", format);
                return intent;
            } catch (UnsupportedOperationException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8571s2("Could not handle url: ", uri));
                throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
            }
        }
        throw new UrlParseException("URL does not have mopubshare://tweet? format.");
    }

    public static void launchActionViewIntent(Context context, Uri uri, String str) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        launchIntentForUserClick(context, intent, str);
    }

    public static void launchApplicationIntent(Context context, Intent intent) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(intent);
        if (deviceCanHandleIntent(context, intent)) {
            String str = "Unable to open intent: " + intent;
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            launchIntentForUserClick(context, intent, str);
            return;
        }
        String stringExtra = intent.getStringExtra("browser_fallback_url");
        if (TextUtils.isEmpty(stringExtra)) {
            if (!f8707a.containsKey(intent.getScheme())) {
                launchApplicationUrl(context, getPlayStoreUri(intent));
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Device could not handle neither intent nor market url.\nIntent: ");
            m8728C.append(intent.toString());
            throw new IntentNotResolvableException(m8728C.toString());
        }
        Uri parse = Uri.parse(stringExtra);
        if ("https".equalsIgnoreCase(parse.getScheme())) {
            showMoPubBrowserForUrl(context, parse, null);
        } else {
            launchApplicationUrl(context, parse);
        }
    }

    public static void launchApplicationUrl(Context context, Uri uri) throws IntentNotResolvableException {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        if (deviceCanHandleIntent(context, intent)) {
            launchApplicationIntent(context, intent);
            return;
        }
        Map<String, String> map = f8707a;
        if (map.containsKey(intent.getScheme()) && intent.getData() != null && !TextUtils.isEmpty(intent.getData().getQuery())) {
            launchApplicationIntent(context, new Intent("android.intent.action.VIEW", Uri.parse(String.format(map.get(intent.getScheme()), intent.getData().getQuery()))));
            return;
        }
        throw new IntentNotResolvableException("Could not handle application specific action: " + uri + "\n\tYou may be running in the emulator or another device which does not have the required application.");
    }

    public static void launchIntentForUserClick(Context context, Intent intent, String str) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        try {
            startActivity(context, intent);
        } catch (IntentNotResolvableException e) {
            StringBuilder m8696K = C22128a.m8696K(str, StringConstant.NEW_LINE);
            m8696K.append(e.getMessage());
            throw new IntentNotResolvableException(m8696K.toString());
        }
    }

    public static void showMoPubBrowserForUrl(Context context, Uri uri, String str) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8571s2("Final URI to show in browser: ", uri));
        Bundle bundle = new Bundle();
        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, uri.toString());
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str);
        }
        Intent startActivityIntent = getStartActivityIntent(context, MoPubBrowser.class, bundle);
        launchIntentForUserClick(context, startActivityIntent, "Could not show MoPubBrowser for url: " + uri + "\n\tPerhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file.");
    }

    public static void startActivity(Context context, Intent intent) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(intent);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            throw new IntentNotResolvableException(e);
        }
    }
}
