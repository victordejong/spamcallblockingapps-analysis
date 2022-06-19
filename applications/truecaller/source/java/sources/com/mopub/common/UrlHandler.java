package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler.class */
public class UrlHandler {

    /* renamed from: h */
    public static final ResultActions f8560h = new a();

    /* renamed from: i */
    public static final MoPubSchemeListener f8561i = new b();

    /* renamed from: a */
    public EnumSet<UrlAction> f8562a;

    /* renamed from: b */
    public ResultActions f8563b;

    /* renamed from: c */
    public MoPubSchemeListener f8564c;

    /* renamed from: d */
    public String f8565d;

    /* renamed from: e */
    public boolean f8566e;

    /* renamed from: f */
    public boolean f8567f = false;

    /* renamed from: g */
    public boolean f8568g = false;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public EnumSet<UrlAction> f8569a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b */
        public ResultActions f8570b = UrlHandler.f8560h;

        /* renamed from: c */
        public MoPubSchemeListener f8571c = UrlHandler.f8561i;

        /* renamed from: d */
        public boolean f8572d = false;

        /* renamed from: e */
        public String f8573e;

        public UrlHandler build() {
            return new UrlHandler(this.f8569a, this.f8570b, this.f8571c, this.f8572d, this.f8573e, null);
        }

        public Builder withDspCreativeId(String str) {
            this.f8573e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.f8571c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.f8570b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f8569a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f8569a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f8572d = true;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$MoPubSchemeListener.class */
    public interface MoPubSchemeListener {
        void onClose();

        void onCrash();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$ResultActions.class */
    public interface ResultActions {
        void urlHandlingFailed(String str, UrlAction urlAction);

        void urlHandlingSucceeded(String str, UrlAction urlAction);
    }

    public UrlHandler(EnumSet enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str, a aVar) {
        this.f8562a = EnumSet.copyOf(enumSet);
        this.f8563b = resultActions;
        this.f8564c = moPubSchemeListener;
        this.f8566e = z;
        this.f8565d = str;
    }

    /* renamed from: a */
    public final void m36297a(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f8563b.urlHandlingFailed(str, urlAction2);
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            m36297a(str, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it = this.f8562a.iterator();
        while (it.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.f8565d);
                    if (this.f8567f || this.f8568g || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f8563b.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.f8567f = true;
                        return true;
                    } catch (IntentNotResolvableException e2) {
                        e = e2;
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, e.getMessage(), e);
                        urlAction = urlAction2;
                    }
                } catch (IntentNotResolvableException e3) {
                    e = e3;
                }
            }
        }
        m36297a(str, urlAction, C22128a.m8543z2("Link ignored. Unable to handle url: ", str), null);
        return false;
    }

    public void handleUrl(Context context, String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(Context context, String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            m36297a(str, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new c(this, context, z, iterable, str));
        this.f8568g = true;
    }
}
