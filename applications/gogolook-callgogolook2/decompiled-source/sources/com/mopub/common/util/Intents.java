package com.mopub.common.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Intents.class */
public class Intents {

    /* renamed from: a */
    public static final Map<String, String> f8337a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(PlanProductRealmObject.MARKET, "https://play.google.com/store/apps/details?%s");
        hashMap.put("amzn", "http://www.amazon.com/gp/mas/dl/android?%s");
        f8337a = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public static Uri m30659a(@NonNull Uri uri) throws UrlParseException {
        Preconditions.checkNotNull(uri);
        if ("navigate".equals(uri.getHost())) {
            try {
                String queryParameter = uri.getQueryParameter("url");
                if (queryParameter != null) {
                    return Uri.parse(queryParameter);
                }
                throw new UrlParseException("URL missing 'url' query parameter.");
            } catch (UnsupportedOperationException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Could not handle url: " + uri);
                throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
            }
        } else {
            throw new UrlParseException("URL missing 'navigate' host parameter.");
        }
    }

    @Deprecated
    public static boolean canHandleApplicationUrl(Context context, Uri uri) {
        return false;
    }

    @Deprecated
    public static boolean canHandleApplicationUrl(Context context, Uri uri, boolean z) {
        return false;
    }

    public static boolean deviceCanHandleIntent(@NonNull Context context, @NonNull Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (NullPointerException e) {
            return false;
        }
    }

    @NonNull
    public static Uri getPlayStoreUri(@NonNull Intent intent) {
        Preconditions.checkNotNull(intent);
        return Uri.parse("market://details?id=" + intent.getPackage());
    }

    public static Intent getStartActivityIntent(@NonNull Context context, @NonNull Class cls, @Nullable Bundle bundle) {
        Intent intent = new Intent(context, cls);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        return intent;
    }

    public static Intent intentForNativeBrowserScheme(@NonNull Uri uri) throws UrlParseException {
        Preconditions.checkNotNull(uri);
        if (!UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(uri)) {
            String str = "mopubnativebrowser://";
            if (MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE) {
                str = "mopubnativebrowser://, http://, or https://";
            }
            throw new UrlParseException("URI does not have " + str + " scheme.");
        } else if ("mopubnativebrowser".equalsIgnoreCase(uri.getScheme())) {
            return new Intent("android.intent.action.VIEW", m30659a(uri));
        } else {
            if (MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE) {
                return new Intent("android.intent.action.VIEW", uri);
            }
            throw new UrlParseException("Invalid URI: " + uri.toString());
        }
    }

    public static Intent intentForShareTweet(@NonNull Uri uri) throws UrlParseException {
        if (UrlAction.HANDLE_SHARE_TWEET.shouldTryHandlingUrl(uri)) {
            try {
                String queryParameter = uri.getQueryParameter("screen_name");
                String queryParameter2 = uri.getQueryParameter("tweet_id");
                if (TextUtils.isEmpty(queryParameter)) {
                    throw new UrlParseException("URL missing non-empty 'screen_name' query parameter.");
                } else if (!TextUtils.isEmpty(queryParameter2)) {
                    String format = String.format("Check out @%s's Tweet: %s", queryParameter, String.format("https://twitter.com/%s/status/%s", queryParameter, queryParameter2));
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.SUBJECT", format);
                    intent.putExtra("android.intent.extra.TEXT", format);
                    return intent;
                } else {
                    throw new UrlParseException("URL missing non-empty 'tweet_id' query parameter.");
                }
            } catch (UnsupportedOperationException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Could not handle url: " + uri);
                throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
            }
        } else {
            throw new UrlParseException("URL does not have mopubshare://tweet? format.");
        }
    }

    public static void launchActionViewIntent(@NonNull Context context, @NonNull Uri uri, @Nullable String str) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        launchIntentForUserClick(context, intent, str);
    }

    public static void launchApplicationIntent(@NonNull Context context, @NonNull Intent intent) throws IntentNotResolvableException {
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
        if (!TextUtils.isEmpty(stringExtra)) {
            Uri parse = Uri.parse(stringExtra);
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                showMoPubBrowserForUrl(context, parse, null);
            } else {
                launchApplicationUrl(context, parse);
            }
        } else if (!f8337a.containsKey(intent.getScheme())) {
            launchApplicationUrl(context, getPlayStoreUri(intent));
        } else {
            throw new IntentNotResolvableException("Device could not handle neither intent nor market url.\nIntent: " + intent.toString());
        }
    }

    public static void launchApplicationUrl(@NonNull Context context, @NonNull Uri uri) throws IntentNotResolvableException {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        if (deviceCanHandleIntent(context, intent)) {
            launchApplicationIntent(context, intent);
        } else if (!f8337a.containsKey(intent.getScheme()) || intent.getData() == null || TextUtils.isEmpty(intent.getData().getQuery())) {
            throw new IntentNotResolvableException("Could not handle application specific action: " + uri + "\n\tYou may be running in the emulator or another device which does not have the required application.");
        } else {
            launchApplicationIntent(context, new Intent("android.intent.action.VIEW", Uri.parse(String.format(f8337a.get(intent.getScheme()), intent.getData().getQuery()))));
        }
    }

    public static void launchIntentForUserClick(@NonNull Context context, @NonNull Intent intent, @Nullable String str) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        try {
            startActivity(context, intent);
        } catch (IntentNotResolvableException e) {
            throw new IntentNotResolvableException(str + "\n" + e.getMessage());
        }
    }

    public static void showMoPubBrowserForUrl(@NonNull Context context, @NonNull Uri uri, @Nullable String str) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Final URI to show in browser: " + uri);
        Bundle bundle = new Bundle();
        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, uri.toString());
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str);
        }
        Intent startActivityIntent = getStartActivityIntent(context, MoPubBrowser.class, bundle);
        launchIntentForUserClick(context, startActivityIntent, "Could not show MoPubBrowser for url: " + uri + "\n\tPerhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file.");
    }

    public static void startActivity(@NonNull Context context, @NonNull Intent intent) throws IntentNotResolvableException {
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
