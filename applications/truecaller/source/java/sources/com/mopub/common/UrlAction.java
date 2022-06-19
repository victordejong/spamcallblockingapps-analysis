package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import p193e.p1432d.p1439c.p1440a.C22128a;
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
    public static final /* synthetic */ UrlAction[] f8558b;

    /* renamed from: a */
    public final boolean f8559a;

    static {
        UrlAction bVar = new b("HANDLE_MOPUB_SCHEME", 0, false);
        HANDLE_MOPUB_SCHEME = bVar;
        UrlAction cVar = new c("IGNORE_ABOUT_SCHEME", 1, false);
        IGNORE_ABOUT_SCHEME = cVar;
        UrlAction dVar = new d("HANDLE_PHONE_SCHEME", 2, true);
        HANDLE_PHONE_SCHEME = dVar;
        UrlAction eVar = new e("OPEN_NATIVE_BROWSER", 3, true);
        OPEN_NATIVE_BROWSER = eVar;
        UrlAction fVar = new f("OPEN_APP_MARKET", 4, true);
        OPEN_APP_MARKET = fVar;
        UrlAction gVar = new g("OPEN_IN_APP_BROWSER", 5, true);
        OPEN_IN_APP_BROWSER = gVar;
        UrlAction hVar = new h("HANDLE_SHARE_TWEET", 6, true);
        HANDLE_SHARE_TWEET = hVar;
        UrlAction iVar = new i("FOLLOW_DEEP_LINK_WITH_FALLBACK", 7, true);
        FOLLOW_DEEP_LINK_WITH_FALLBACK = iVar;
        UrlAction jVar = new j("FOLLOW_DEEP_LINK", 8, true);
        FOLLOW_DEEP_LINK = jVar;
        UrlAction aVar = new a("NOOP", 9, false);
        NOOP = aVar;
        f8558b = new UrlAction[]{bVar, cVar, dVar, eVar, fVar, gVar, hVar, iVar, jVar, aVar};
    }

    public UrlAction(String str, int i, boolean z, b bVar) {
        super(str, i);
        this.f8559a = z;
    }

    public static UrlAction valueOf(String str) {
        return (UrlAction) Enum.valueOf(UrlAction.class, str);
    }

    public static UrlAction[] values() {
        return (UrlAction[]) f8558b.clone();
    }

    /* renamed from: a */
    public abstract void m36298a(Context context, Uri uri, UrlHandler urlHandler, String str) throws IntentNotResolvableException;

    public void handleUrl(UrlHandler urlHandler, Context context, Uri uri, boolean z, String str) throws IntentNotResolvableException {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8571s2("Ad event URL: ", uri));
        if (!this.f8559a || z) {
            m36298a(context, uri, urlHandler, str);
            return;
        }
        throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
    }

    public abstract boolean shouldTryHandlingUrl(Uri uri);
}
